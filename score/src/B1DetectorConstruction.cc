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
    
    //lung
    G4double Lung_sizeX = 10.*cm;
    G4double Lung_sizeY = 14.*cm;
    G4double Lung_sizeZ = 20.*cm;


    //lung1
    G4Box* solidLung1 = new G4Box(
        "Lung1", 0.5*Lung_sizeX, 0.5*Lung_sizeY, 0.5*Lung_sizeZ
    );

    G4LogicalVolume* logicLung1 = 
        new G4LogicalVolume(solidLung1,
                            Lung_mat,
                            "Lung1");

 
    new G4PVPlacement(0,
                          G4ThreeVector(-7.*cm,0.*cm,0.*cm),
                          logicLung1,
                          "Lung1",
                          logicBody,
                          false,
                          0,
                          checkOverlaps);


    //lung2
    G4Box* solidLung2 = new G4Box(
        "Lung2", 0.5*Lung_sizeX, 0.5*Lung_sizeY, 0.5*Lung_sizeZ
    );

    G4LogicalVolume* logicLung2 = 
        new G4LogicalVolume(solidLung2,
                            Lung_mat,
                            "Lung2");

  
        new G4PVPlacement(0,
                          G4ThreeVector(7.*cm,0.*cm,0.*cm),
                          logicLung2,
                          "Lung2",
                          logicBody,
                          false,
                          0,
                          checkOverlaps);


    //Esphagus1   
    G4int angle_num = 12;
    G4int z_num = 6;   
    
    G4double hz1 = 3./z_num*cm;
    G4double dangle = 360./angle_num *deg;

    G4double z_pos = -(z_num-1)*hz1/2;

    G4double innerRadius = 0.75*cm;
    G4double outerRadius = 1.*cm;
    G4double startAngle = 0.*deg;
    G4double spanningAngle = dangle*deg;
    
    G4Tubs* solidEsphagus1 = new G4Tubs("Esphagus1", 
                                        innerRadius, 
                                        outerRadius, 
                                        0.5*hz1,
                                        startAngle,
                                        spanningAngle);

    G4LogicalVolume* logicEsphagus1 = 
        new G4LogicalVolume(solidEsphagus1,
                            Esphagus_mat,
                            "Esphagus1");

for (G4int iznum = 0; iznum < z_num ; iznum = iznum+1){
    for (G4int ianglenum = 0; ianglenum < angle_num ; ianglenum = ianglenum+1){
        G4double angle = ianglenum*dangle;
        G4RotationMatrix rotm  = G4RotationMatrix();
        rotm.rotateZ(angle);
        G4ThreeVector position = G4ThreeVector(0.*cm,0.*cm,z_pos + iznum*hz1);
        G4Transform3D transform = G4Transform3D(rotm,position);
        new G4PVPlacement(transform,
                          logicEsphagus1,
                          "Esphagus1",
                          logicBody,
                          false,
                          iznum*angle_num+ianglenum,
                          checkOverlaps);               
}}         
    //Esphagus2
    G4double hz2 = 9.5*cm;
    
    G4Tubs* solidEsphagus2 = new G4Tubs("Esphagus2", 
                                        innerRadius, 
                                        outerRadius, 
                                        0.5*hz2,
                                        startAngle,
                                        spanningAngle);

    G4LogicalVolume* logicEsphagus2 = 
        new G4LogicalVolume(solidEsphagus2,
                            Esphagus_mat,
                            "Esphagus2");

        new G4PVPlacement(0,
                          G4ThreeVector(0.*cm,0.*cm,-6.25*cm),
                          logicEsphagus2,
                          "Esphagus2",
                          logicBody,
                          false,
                          0,
                          checkOverlaps);

    //Esphagus3
    G4double hz3 = 9.5*cm;
    
    G4Tubs* solidEsphagus3 = new G4Tubs("Esphagus3", 
                                        innerRadius, 
                                        outerRadius, 
                                        0.5*hz3,
                                        startAngle,
                                        spanningAngle);

    G4LogicalVolume* logicEsphagus3 = 
        new G4LogicalVolume(solidEsphagus3,
                            Esphagus_mat,
                            "Esphagus3");

        new G4PVPlacement(0,
                          G4ThreeVector(0.*cm,0.*cm,6.25*cm),
                          logicEsphagus3,
                          "Esphagus3",
                          logicBody,
                          false,
                          0,
                          checkOverlaps);
                    

    // ring  length = 1.5cm radius = 0.25cm
    //Esphagus
    G4double innerRadius_ring = 0.*cm;
    G4double outerRadius_ring = 0.125*cm;
    G4double hz_ring = 1.5*cm;
    G4double startAngle_ring = 0.*deg;
    G4double spanningAngle_ring = 360.*deg;
    
    G4Tubs* solidRing = new G4Tubs("Ring", 
                                    innerRadius_ring, 
                                    outerRadius_ring, 
                                    0.5*hz_ring,
                                    startAngle_ring,
                                    spanningAngle_ring);

    G4LogicalVolume* logicRing = 
        new G4LogicalVolume(solidRing,
                            Iron,
                            "Ring");

        new G4PVPlacement(0,
                          G4ThreeVector(0.*cm,0.*cm,0.*cm),
                          logicRing,
                          "Ring",
                          logicBody,
                          false,
                          0,
                    checkOverlaps);
    fScoringVolume = logicEsphagus1;

    return physWorld;
           
}


