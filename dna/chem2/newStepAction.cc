// In this section, we will calculate the avergy LET and energy deposit in different part

#include "SteppingAction.hh"
#include "g4root.hh"
#include "G4SystemOfUnits.hh"
#include "G4ITTrackHolder.hh"
#include "G4Track.hh"
#include <map>
#include "globals.hh"
#include "G4Molecule.hh"
#include "G4Event.hh"
#include "G4EventManager.hh"
#include "G4DNAElastic.hh"
#include "G4DNAElectronSolvation.hh"
#include "DetectorConstruction.hh"




//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

SteppingAction::SteppingAction(DetectorConstruction* fpDet)
    : G4UserSteppingAction()
    , fpDetector(fpDet)
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

SteppingAction::~SteppingAction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

void SteppingAction::UserSteppingAction(const G4Step* step)
{
    

    
    G4double dE = step->GetTotalEnergyDeposit()/eV;
    const G4VProcess* pProcess = step->GetPostStepPoint()->
    GetProcessDefinedStep();
    
    //get all processes except G4DNAElectronSolvation
    if((0 > dE) || 
    (nullptr != dynamic_cast<const G4DNAElectronSolvation*>(pProcess)))
    {
        return;
    }
               
    G4double x=step->GetPreStepPoint()->
    GetPosition().x()/nanometer;
    G4double y=step->GetPreStepPoint()->
    GetPosition().y()/nanometer;
    G4double z=step->GetPreStepPoint()->
    GetPosition().z()/nanometer;
    
    G4double copyNo = G4double (step->GetPreStepPoint()->
    GetTouchable()->GetVolume()->GetCopyNo() );

    G4double eventId = 
    G4double (G4EventManager::GetEventManager()->
    GetConstCurrentEvent()->GetEventID());

    G4double stepL = step->GetStepLength()/um;
    G4double Edep = step->GetTotalEnergyDeposit()/keV;

    G4AnalysisManager* analysisManager = 
    G4AnalysisManager::Instance();
    analysisManager->FillNtupleDColumn(1, 0, x);
    analysisManager->FillNtupleDColumn(1, 1, y);
    analysisManager->FillNtupleDColumn(1, 2, z);
    analysisManager->FillNtupleDColumn(1, 3, dE);
    analysisManager->FillNtupleDColumn(1, 4, (step->
    GetPreStepPoint()->GetKineticEnergy()
    - step->GetPostStepPoint()->GetKineticEnergy())/eV );
    analysisManager->FillNtupleIColumn(1, 5, G4int(fVolumeType));
    analysisManager->FillNtupleDColumn(1, 6, copyNo);
    analysisManager->FillNtupleIColumn(1, 7, eventId);
    analysisManager->AddNtupleRow(1);

 

}
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

DNAVolumeType SteppingAction::SetupVolumeType(const G4VPhysicalVolume* 
                                                    pPhyVolume)
{   
    auto it = (fpDetector->GetGeoDataMap()).find(pPhyVolume); 
    
    if(it  == (fpDetector->GetGeoDataMap()).end())
    {
        G4ExceptionDescription exceptionDescription;
        exceptionDescription <<pPhyVolume->GetName()
                             <<" is wrong physical volume";
        G4Exception("SteppingAction::SetupVolumeFlag()",
                    "SteppingAction01", FatalException,
                    exceptionDescription);
    }
    
    return it->second;
}
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo....

