#include "B1DetectorConstruction.hh"

#include "G4RunManager.hh"
#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4Cons.hh"
#include "G4Orb.hh"
#include "G4Sphere.hh"
#include "G4Trd.hh"
#include "G4Tubs.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"

#include "G4Box.hh"
#include "G4LogicalVolume.hh"
#include "G4VPhysicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4Material.hh"
#include "G4Element.hh"
#include "G4UIcommand.hh"
#include "G4PhysicalConstants.hh"
#include "G4NistManager.hh"
#include "G4SystemOfUnits.hh"




B1DetectorConstruction::B1DetectorConstruction()
: G4VUserDetectorConstruction(),
  fScoringVolume(0)
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

B1DetectorConstruction::~B1DetectorConstruction()
{ }

//Construct a detector with 100 parts

G4VPhysicalVolume* B1DetectorConstruction::Construct()
{
    G4NistManager* nist = G4NistManager::Instance();


    G4Material* World_mat = nist->FindOrBuildMaterial("G4_WATER");


    //Envelop paramters
    G4bool checkOverlaps = true;

    //part
    G4double part_sizeX = 10.*nm;
    G4double part_sizeY = 10.*nm;
    G4double part_sizeZ = 10.*nm;

    //body
    G4int num = 10;
    G4double Body_sizeX = num*part_sizeX;
    G4double Body_sizeY = num*part_sizeY;
    G4double Body_sizeZ = num*part_sizeZ;


    G4double World_sizeX = 1.2*Body_sizeX;
    G4double World_sizeY = 1.2*Body_sizeY;
    G4double World_sizeZ = 1.2*Body_sizeZ;
    

    G4Box* solidWorld = new G4Box(
        "World", 0.5*World_sizeX, 0.5*World_sizeY, 0.5*World_sizeZ);

    G4LogicalVolume* logicWorld = 
        new G4LogicalVolume(solidWorld,
                            World_mat,
                            "World");

    G4VPhysicalVolume* physWorld = 
        new G4PVPlacement(0,
                          G4ThreeVector(),
                          logicWorld,
                          "World",
                          0,
                          false,
                          0,
                          checkOverlaps);


    //envelope
    G4double Envelope_sizeX = 1.1*Body_sizeX;
    G4double Envelope_sizeY = 1.1*Body_sizeY;
    G4double Envelope_sizeZ = 1.1*Body_sizeZ;
    

    G4Box* solidEnvelope = new G4Box(
        "Envelope", 0.5*Envelope_sizeX, 0.5*Envelope_sizeY, 0.5*Envelope_sizeZ);

    G4LogicalVolume* logicEnvelope = 
        new G4LogicalVolume(solidEnvelope,
                            World_mat,
                            "Envelope");

    G4VPhysicalVolume* physEnvelope = 
        new G4PVPlacement(0,
                          G4ThreeVector(),
                          logicEnvelope,
                          "Envelope",
                          logicWorld,
                          false,
                          0,
                          checkOverlaps);
    // Body
    G4Box* solidBody = new G4Box(
        "Body", 0.5*Body_sizeX, 0.5*Body_sizeY, 0.5*Body_sizeZ
    );

    G4Material* Body_mat = nist->FindOrBuildMaterial("G4_WATER");

    G4LogicalVolume* logicBody = 
        new G4LogicalVolume(solidBody,
                            Body_mat,
                            "Body");

    new G4PVPlacement(0,
                          G4ThreeVector(),
                          logicBody,
                          "Body",
                          logicEnvelope,
                          false,
                          0,
                          checkOverlaps);
    
    //cube2
    G4Box* cube = new G4Box(
        "cube", 0.5*part_sizeX, 0.5*part_sizeY, 0.5*part_sizeZ
    );

    G4LogicalVolume* logiccube = 
        new G4LogicalVolume(cube,
                            World_mat,
                            "cube");

G4double pos_X = -(part_sizeX*(num-1)/2);
G4double pos_Y = -(part_sizeY*(num-1)/2);
G4double pos_Z = -(part_sizeZ*(num-1)/2);

for (G4int ixnum = 0; ixnum < num ; ixnum = ixnum+1){
    for (G4int iynum = 0; iynum < num ; iynum = iynum+1){
        for (G4int iznum = 0; iznum < num ; iznum = iznum+1){
               new G4PVPlacement(0,
                          G4ThreeVector(pos_X+ixnum*part_sizeX,pos_Y+iynum*part_sizeY,pos_Z+iznum*part_sizeZ),
                          logic2,
                          "cube",
                          logiccube,
                          false,
                          0,
                          checkOverlaps);


}}}         

    fScoringVolume = logicEsphagus1;

    return physWorld;
           
}


