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
// This example is provided by the Geant4-DNA collaboration
// Any report or published results obtained using the Geant4-DNA software
// shall cite the following Geant4-DNA collaboration publication:
// Med. Phys. 37 (2010) 4692-4708
// J. Comput. Phys. 274 (2014) 841-882
// The Geant4-DNA web site is available at http://geant4-dna.org
//
//
/// \file PrimaryGeneratorAction.cc
/// \brief Implementation of the PrimaryGeneratorAction class

#include "PrimaryGeneratorAction.hh"
#include "G4SystemOfUnits.hh"
#include "G4ParticleTable.hh"
#include "G4ParticleGun.hh"
#include "Randomize.hh"
#include <fstream>
#include <iostream>
#include <string>
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::PrimaryGeneratorAction() :
 G4VUserPrimaryGeneratorAction(),
 fpParticleGun(new G4ParticleGun(1))
{
  G4ParticleDefinition* particle =
      G4ParticleTable::GetParticleTable()->FindParticle("proton");
/*
std::ifstream file("energy.txt");

    // 检查文件是否成功打开
    if (!file.is_open()) {
        std::cerr << "Failed1 to open file." << std::endl;
        return;
    }
    G4double energy;
  file>>energy;
*/
  // default gun parameters
  fpParticleGun->SetParticleDefinition(particle);
  //fpParticleGun->SetParticleEnergy(energy*MeV);
  fpParticleGun->SetParticleMomentumDirection(G4ThreeVector(0.,0.,1.));
  fpParticleGun->SetParticlePosition(G4ThreeVector(0.,0.,0.*micrometer));
//  file.close();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
  delete fpParticleGun;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
    G4double randomx = -1 + 2*G4UniformRand();
    G4double randomy = -1 + 2*G4UniformRand();
    /*
    fpParticleGun->SetParticlePosition(G4ThreeVector(0.5*randomx*CLHEP::mm,
                                                     0.5*randomy*CLHEP::mm,
                                                     -0.5*CLHEP::m));
    */    
   fpParticleGun->SetParticlePosition(G4ThreeVector(0,0,0));
  fpParticleGun->GeneratePrimaryVertex(anEvent);
}
