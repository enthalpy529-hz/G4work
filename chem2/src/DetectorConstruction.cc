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
/// \file DetectorConstruction.cc
/// \brief Implementation of the DetectorConstruction class

#include "DetectorConstruction.hh"
#include "G4SystemOfUnits.hh"
#include "G4ProductionCuts.hh"
#include "G4VPhysicalVolume.hh"
#include "G4LogicalVolume.hh"
#include "G4Box.hh"
#include "G4Material.hh"
#include "G4NistManager.hh"
#include "G4PVPlacement.hh"
#include "G4UserLimits.hh"
#include "G4VisAttributes.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::DetectorConstruction() :
  G4VUserDetectorConstruction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::~DetectorConstruction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume* DetectorConstruction::Construct()
{
  return ConstructDetector();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4Material *
DetectorConstruction::OtherMaterial(G4String materialName)
{
  G4Material * material(0);

  // Water is defined from NIST material database
  G4NistManager * man = G4NistManager::Instance();
  material = man->FindOrBuildMaterial(materialName);
  // If one wishes to test other density value for water material,
  // one should use instead:
  // G4Material * H2O = man->BuildMaterialWithNewDensity(
  // "G4_WATER_MODIFIED",
  // "G4_WATER",1000*g/cm/cm/cm);
  // Note: any string for "G4_WATER_MODIFIED" parameter is accepted
  // and "G4_WATER" parameter should not be changed
  // Both materials are created and can be selected from dna.mac

  return material;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume* DetectorConstruction::ConstructDetector()
{
  G4Material *water = OtherMaterial("G4_WATER");
  G4bool checkOverlaps = true;
  // WORLD VOLUME

  //double worldSizeX  = 2.*micrometer;
  double worldSizeX  = 0.1*CLHEP::m;
  double worldSizeY  = worldSizeX;
  double worldSizeZ  = 1*CLHEP::m;

  G4Box* solidWorld = new G4Box("World", //its name
      worldSizeX/2,worldSizeY/2,worldSizeZ/2);  //its size

  G4LogicalVolume* logicWorld = new
      G4LogicalVolume(solidWorld,//its solid
          water,  //its material
          "World");    //its name

  G4VPhysicalVolume* physiWorld = new
      G4PVPlacement(0,      //no rotation
          G4ThreeVector(),  //at (0,0,0)
          "World",    //its name
          logicWorld,    //its logical volume
          0,      //its mother  volume
          false,      //no boolean operation
          0);      //copy number

    double score_X = 1*mm;
    double score_Y = 1*mm;
    double score_Z = 1*mm;
    
    G4Box* score = new G4Box("score", //its name
      score_X/2,score_Y/2,score_Z/2); 
  // Visualization attributes
    G4LogicalVolume* logicscore = new
      G4LogicalVolume(score,//its solid
          water,  //its material
          "score");    //its name

  for(int i=0;i<1000;i++){
    G4ThreeVector pos = G4ThreeVector(0,0,-0.5*m+(i+0.5)*mm);
    new G4PVPlacement(0,                       //no rotation
                    pos,                    //at position
                    logicscore,             //its logical volume
                    "score",                //its name
                    logicWorld,                //its mother  volume
                    false,                   //no boolean operation
                    i+1,                       //copy number
                    checkOverlaps);          //overlaps checking   
  }
  fScoringVolume = logicWorld;
  return physiWorld;
}