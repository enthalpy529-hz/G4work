// -------------------------------------------------------------------
// $Id: plot.C 
// -------------------------------------------------------------------
//
// *********************************************************************
// To execute this macro under ROOT after your simulation ended, 
//   1 - launch ROOT v6.xx (usually type 'root' at your machine's prompt)
//   2 - type '.X analysis.C' at the ROOT session prompt
// *********************************************************************

{
    gROOT->Reset();
    gStyle->SetPalette(1);
    gROOT->SetStyle("Plain");
    TRandom rdomN;
           
    vector<Molecule> fMolecules = molecule();
    using Table = map<int,array<map<int,double>, 2>>;
    using ResultTable = map<int,array<vector<int>, 2>>;

    system ("rm -rf output.root");
    system ("hadd output.root output_*.root");
    
    double xphy;
    double yphy;
    double zphy;
    
    double xChe;
    double yChe;
    double zChe;

    double xrad;
    double yrad;
    double zrad;

    map<int,int> CopyNumTable;
    Table physTable; 
    ResultTable resultPhysTable;
    ResultTable resultChemTable;
    ResultTable MergedResultTable;

    double EnergyDeposit;
    double kineticEnergyDifference;
    int flagVolume;
    double copyN;
    int EventIDp;
    int EventIDc;

    TFile f("output.root"); 

// Load the file, the directory and the ntuple
    TDirectoryFile* d = dynamic_cast<TDirectoryFile*>(f.Get("ntuple") );   
    TTree* tPhys = dynamic_cast<TTree*> (d->Get("ntuple_1") );
    tPhys->SetBranchAddress("x",&xphy);
    tPhys->SetBranchAddress("y",&yphy);
    tPhys->SetBranchAddress("z",&zphy);
    tPhys->SetBranchAddress("edep",&EnergyDeposit);
    tPhys->SetBranchAddress("diffKin",&kineticEnergyDifference);
    tPhys->SetBranchAddress("volumeName",&flagVolume);
    tPhys->SetBranchAddress("CopyNumber",&copyN);
    tPhys->SetBranchAddress("EventID",&EventIDp);
    
    auto entryPhyNumber = tPhys->GetEntries();
    
    ofstream test_file("data.txt");
    if(test_file.is_open())
    {
    for(decltype(entryPhyNumber) i = 0; i < 500; ++i)
    {
        tPhys -> GetEntry(i);
        test_file<<flagVolume <<"  " <<EventIDp << "\n";
    }
    test_file<<endl;
    }

    bool addCopyN = true;
    for(decltype(entryPhyNumber) i = 0; i < entryPhyNumber; ++i)
    {
        tPhys->GetEntry(i);
//avoid histone
        if(flagVolume == DNAVolumeType::histone)
        {
            continue;
        }
//Determine the strand
        int strand = -1;
        bool isLeftStrand = DNAVolumeType::deoxyribose1 == flagVolume || 
                            DNAVolumeType::phosphate1 == flagVolume || 
                            DNAVolumeType::deoxyribose1_water == flagVolume || 
                            DNAVolumeType::phosphate1_water == flagVolume;
                            
        bool isRightStrand = DNAVolumeType::deoxyribose2 == flagVolume || 
                             DNAVolumeType::phosphate2 == flagVolume || 
                             DNAVolumeType::deoxyribose2_water== flagVolume || 
                             DNAVolumeType::phosphate2_water == flagVolume;
                            
            
        if( isLeftStrand )
        {   
            strand = 0;
        }
        else if( isRightStrand )
        {
            strand = 1;
        }
        else 
        {
            //in case molecules are not assigned "strand" 
            continue;
        }

//Determine the name
        bool isDeoxyribode = flagVolume == DNAVolumeType::deoxyribose1 || 
                             flagVolume == DNAVolumeType::deoxyribose2 || 
                             flagVolume == DNAVolumeType::deoxyribose1_water || 
                             flagVolume == DNAVolumeType::deoxyribose2_water;
                             
        bool  isPhosphate =  flagVolume == DNAVolumeType::phosphate1 || 
                             flagVolume == DNAVolumeType::phosphate2 || 
                             flagVolume == DNAVolumeType::phosphate1_water|| 
                             flagVolume == DNAVolumeType::phosphate2_water; 

        if(isDeoxyribode || isPhosphate)
        {
            physTable[EventIDp][strand][copyN] += EnergyDeposit;
        }
        
        if(physTable[EventIDp][strand][copyN] < 17.5)
        {
            continue;
        }
        
        if(CopyNumTable.empty())
        {
            CopyNumTable.insert(pair<int,int>(copyN,strand));
            resultPhysTable[EventIDp][strand].push_back(copyN);
        }
        else                           
        {
            addCopyN = true;
        }
        
        auto itCopyNumTable = CopyNumTable.find(copyN);
        if (itCopyNumTable != CopyNumTable.end())
        {
            if (itCopyNumTable->second == strand)
            {
                addCopyN = false;
            }
        }
        
        if(addCopyN)
        {
            CopyNumTable.insert(pair<int,int>(copyN,strand));
            resultPhysTable[EventIDp][strand].push_back(copyN);
        }
    }    
//Chemistry analyse
    TTree* tChem = dynamic_cast<TTree*> (d->Get("ntuple_2") );
    tChem->SetBranchAddress("x",&xrad);
    tChem->SetBranchAddress("y",&yrad);
    tChem->SetBranchAddress("z",&zrad);
    tChem->SetBranchAddress("EventID",&EventIDc);
    
    auto entryNChem = tChem->GetEntries() ;
    
    for(decltype(entryNChem) i=0; i < entryNChem; ++i)
    {
        tChem->GetEntry(i);
        ThreeVector<double> DNAElement(xrad,yrad,zrad);
        
        for(const auto& moleculeIt : fMolecules)
        {
            if(moleculeIt.fPosition == DNAElement)
            {
                int strand = -1;
                if(moleculeIt.fName == "deoxyribose1") 
                {
                    strand = 0;
                }
                else if(moleculeIt.fName == "deoxyribose2") 
                {
                    strand = 1;
                }
                else 
                {   
                    string msg = "Unknown DNA component";
                    throw std::runtime_error(msg);
                }
                
                if(rdomN.Rndm() > 0.42)//42% of reaction make damages
                {
                    continue;
                }
                
                if (!CopyNumTable.empty())
                {
                    addCopyN = true;
                }

                auto itCopyNumTable = CopyNumTable.find(moleculeIt.fCopyNumber);
                
                if (itCopyNumTable != CopyNumTable.end())
                {
                    if (itCopyNumTable->second == strand)
                    {
                        addCopyN = false;
                    }
                }
                if(addCopyN)
                {
                    resultChemTable[EventIDc][strand].push_back(
                    moleculeIt.fCopyNumber);
                }
            }
        }
    }
//SDD Format
    ofstream ofile("SDDFormat.txt");
    if(ofile.is_open())
    {
     
//For detail, please refer to Schuemann, J., et al. (2019). A New Standard DNA 
//Damage (SDD) Data Format. Radiation Research, 191(1), 76. 

        bool Primaryflag = true;
    for (int i = 0; i < 1000; i++)//for 200 primary particles
    {
        for(int j = 0; j < 2; j++)//for strand
        {
  
            if (!resultPhysTable[i][j].empty())
            {
                for(int e = 0; e < resultPhysTable[i][j].size(); ++e)
                {
                    if(Primaryflag)
                    {
                        ofile<<"2, phy "<<i<<" "<<j<<" "
                             <<resultPhysTable[i][j][e]
                             <<"\n" ;//physics
                        Primaryflag = false;
                    }else
                    {
                        ofile<<"0, phy "<<i<<" "<<j<<" "
                            <<resultPhysTable[i][j][e]
                            <<"\n" ;
                    }
                }
            }
            if(resultChemTable[i][j].empty())
            {
                continue;
            }
            
            for(int ee = 0; ee < resultChemTable[i][j].size(); ++ee)
            {
                if(Primaryflag)
                {
                    ofile<<"2, chem "<<i<<" "<<j<<" "
                    <<resultChemTable[i][j][ee]
                    <<"\n" ;//chemistry
                    Primaryflag = false;
                }else
                {
                    ofile<<"0, chem "<<i<<" "<<j<<" "
                    <<resultChemTable[i][j][ee]
                    <<"\n" ;
                }
            }
        }
    }
    
    ofile<<endl;	
    }
    
    ofile.close();
}
