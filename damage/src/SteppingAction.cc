//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// 
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

SteppingAction::SteppingAction()
    : G4UserSteppingAction()
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

    G4double copyNo = G4double (step->GetPreStepPoint()->
    GetTouchable()->GetVolume()->GetCopyNo() );
    
    if(copyNo){
        return;
    }
               
    G4double x=step->GetPreStepPoint()->
    GetPosition().x()/nanometer;
    G4double y=step->GetPreStepPoint()->
    GetPosition().y()/nanometer;
    G4double z=step->GetPreStepPoint()->
    GetPosition().z()/nanometer;
    
    G4double fStepL = step->GetStepLength()/um;

    G4double eventId = 
    G4double (G4EventManager::GetEventManager()->
    GetConstCurrentEvent()->GetEventID());
    
    G4AnalysisManager* analysisManager = 
    G4AnalysisManager::Instance();
    analysisManager->FillNtupleDColumn(1, 0, x);
    analysisManager->FillNtupleDColumn(1, 1, y);
    analysisManager->FillNtupleDColumn(1, 2, z);
    analysisManager->FillNtupleDColumn(1, 3, dE);
    analysisManager->FillNtupleDColumn(1, 4, (step->
    GetPreStepPoint()->GetKineticEnergy()
    - step->GetPostStepPoint()->GetKineticEnergy())/eV );
    analysisManager->FillNtupleIColumn(1, 5, fStepL);
    analysisManager->FillNtupleDColumn(1, 6, copyNo);
    analysisManager->FillNtupleIColumn(1, 7, eventId);
    analysisManager->AddNtupleRow(1);
      

}
