#include "G4SystemOfUnits.hh"
#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4Orb.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SDManager.hh"
#include "G4MultiFunctionalDetector.hh"
#include "G4PSEnergyDeposit.hh"
#include "G4RotationMatrix.hh"
#include "G4VisAttributes.hh"

#include "DetectorConstruction.hh"
#include "G4PSEnergyDeposit.hh"
#include "G4PSCellFlux.hh"
#include "G4SDParticleFilter.hh"
DetectorConstruction::DetectorConstruction()
    : G4VUserDetectorConstruction()
{
}

DetectorConstruction::~DetectorConstruction()
{
}

G4VPhysicalVolume *DetectorConstruction::Construct()
{
    // materials
    G4Material * matCu  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Cu");
    G4Material * matPt  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Pt");
    G4Material * matCo  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Co");
    G4Material * matKapton  = G4NistManager::Instance()->FindOrBuildMaterial("G4_KAPTON");
    G4Material * matNi  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Ni");
    // G4Material * matAir = G4NistManager::Instance()->FindOrBuildMaterial("G4_AIR");
    G4Material * matAir = G4NistManager::Instance()->FindOrBuildMaterial("G4_Galactic"); //vacuum
    G4Material * matSi = G4NistManager::Instance()->FindOrBuildMaterial("G4_Si");


    G4Material * matLi  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Li");
    // G4Material * matLi  = G4NistManager::Instance()->FindOrBuildMaterial("G4_B");
    G4Material * matLa = G4NistManager::Instance()->FindOrBuildMaterial("G4_La");
    G4Material * matZr = G4NistManager::Instance()->FindOrBuildMaterial("G4_Zr");
    G4Material * matTa = G4NistManager::Instance()->FindOrBuildMaterial("G4_Ta");
    G4Material * matOxygen  = G4NistManager::Instance()->FindOrBuildMaterial("G4_O");

    //LLZO
    // G4Material * LiPON = G4NistManager::Instance()->ConstructNewMaterial("LiPON");
    G4Material * LLZO = new G4Material("LLZO", 5.34 * g / cm3, 5);
    // std::vector<G4String> elLiPON = {"Li", "P", "O", "N"};
    // std::vector<G4double> weightLiPON = {21.11, 26.15, 44.58, 8.16 };
    // G4Material * LiPON = ConstructNewMaterial("LiPON", elLiPON, weightLiPON, 2.33 * g / cm3, true, kStateSolid);
    LLZO->AddMaterial(matLi,           0.049946);
    LLZO->AddMaterial(matLa,   0.468532);
    LLZO->AddMaterial(matZr,       0.143594);
    LLZO->AddMaterial(matTa,     0.122068);
    LLZO->AddMaterial(matOxygen,     0.21586);

    // fraction sum should be 1

    //LiCo
    // auto nist = G4NistManager::Instance();
    // G4Element * elLi = G4NistManager::Instance()->FindOrBuildElement("Li");
    // G4Element * elCo = G4NistManager::Instance()->FindOrBuildElement("Co");
    // G4Element * elOxygen = G4NistManager::Instance()->FindOrBuildElement("O");
    // G4Material * LiCo = new G4Material("LiCo", 4.9 * g / cm3, 2);
    // LiCo->AddElement(elLi,           1);
    // LiCo->AddElement(elCo,           1);
    // std::vector<G4String> elLiCo = {"Li", "Co", "O"};
    // std::vector<G4int> nbLiCo = {1, 1, 2};
    // G4Material * matLiCo = nist->ConstructNewMaterial("LiCo", elLiCo, nbLiCo, 4.9 * g / cm3, true, kStateSolid);

    // World
    G4double worldSize = 50. * cm;
    G4VSolid * worldSol = new G4Box("World", .5 * worldSize, .5 * worldSize, .5 * worldSize);
    G4LogicalVolume* worldLog = new G4LogicalVolume(worldSol, matAir, "World");
    G4VPhysicalVolume* worldPhy = new G4PVPlacement(0, G4ThreeVector(), worldLog, "World", nullptr, false, 0);

    // imaginary axis
    G4double img_Xlength = 10. *cm;
    G4double img_Ylength = 10. *cm;
    G4double img_Zlength = 30. *cm;
    G4ThreeVector imaginary_Box_Pos = G4ThreeVector();
    G4VSolid* imaginary_Box_Sol = new G4Box("imaginary_Box", .5 * img_Xlength, .5 * img_Ylength, .5 *img_Zlength);

   
    // Total Cell
   
    G4double Total_XLength = 1.   *cm;
    G4double Total_YLength =  .5  *cm;
    G4double Total_ZLength = 1117.7 * micrometer;
    G4ThreeVector Total_Pos = G4ThreeVector();
    G4VSolid* Total_Sol = new G4Box("Total_Cell", .5 * Total_XLength, .5 * Total_YLength, .5 *Total_ZLength);

    // Detector active area: 150 mm2
    G4double Det_Diameter = 1.386 * cm; // radius of 0.693
    G4double Det_Height = 1 * cm; //height 1cm
    G4int Distance = 6 * cm;
    G4ThreeVector Detector_Pos = G4ThreeVector(0., 0., .5 * Total_ZLength + 0.5 * Det_Height + Distance );
    G4VSolid* Detector_Sol = new G4Tubs("Detector", 0., .5 * Det_Diameter, .5 * Det_Height, 0., 360. * deg);

  // Kapton
    G4double KaptonXLength = 1. * cm;
    G4double KaptonYLength = .5 * cm; //set
    G4double KaptonZLength = 7.5 * micrometer; //thickness
    G4ThreeVector KaptonPos = G4ThreeVector(0., 0., .5 * Total_ZLength - .5 * KaptonZLength);
    G4VSolid* KaptonSol = new G4Box("Kapton", .5 * KaptonXLength, .5 * KaptonYLength, .5 *KaptonZLength);
    
    //Cu Cell
    G4double CuXLength = 1. * cm;
    G4double CuYLength = .5 * cm;  // set
    G4double CuZLength = .2 * micrometer; //thickness
    // -0.35 - 0.01 = -0.45 micrometer 
    G4ThreeVector CuPos = G4ThreeVector(0., 0., KaptonPos.getZ() - 0.5*KaptonZLength - 0.5*CuZLength); 
    G4VSolid* CuSol = new G4Box("Cu", .5 * CuXLength, .5 * CuYLength, .5 *CuZLength);

    // LLZO
    G4double LLZOXLength = 1. * cm;
    G4double LLZOYLength = .5 * cm;
    G4double LLZOZLength = 1000. * micrometer;
    // -0.45 -0.1 -1.6 = -2.15 micrometer
    G4ThreeVector LLZOPos = G4ThreeVector(0. * cm, 0. * cm, CuPos.getZ() - 0.5*CuZLength - 0.5*LLZOZLength);
    G4VSolid* LLZOSol = new G4Box("LLZO", .5 * LLZOXLength, .5 * LLZOYLength, .5 *LLZOZLength);

    //LiCathode
    G4double LiCathodeXLength = 1. * cm;
    G4double LiCathodeLength = .5 * cm;
    G4double LiCathodeZLength = 100. * micrometer;
    // -2.15 -1.6 -1.55 = -5.3 micrometer
    G4ThreeVector LiCathodePos = G4ThreeVector(0. * cm, 0. * cm, LLZOPos.getZ() - -0.5*LLZOZLength - 0.5*LiCathodeZLength);
    G4VSolid* LiCathodeSol = new G4Box("LiCathode", .5 * LiCathodeXLength, .5 * LiCathodeLength, .5 *LiCathodeZLength);

    //Ni
    G4double NiXLength = 1. * cm;
    G4double NiYLength = .5 * cm;
    G4double NiZLength = 10. * micrometer; //thickness
    // -5.3 -1.55 -0.1 = -6.95
    G4ThreeVector NiPos = G4ThreeVector(0. * cm, 0. * cm, LiCathodePos.getZ() - 0.5*LiCathodeZLength - 0.5*NiZLength);
    G4VSolid* NiSol = new G4Box("Ni", .5 * NiXLength, .5 * NiYLength, .5 *NiZLength);

    //Co 
    // G4double CoXLength = 1. * cm;
    // G4double CoYLength = .5 * cm;
    // G4double CoZLength = .03 * micrometer;
    // // -6.95 - 0.1 - 0.015 = -7.065
    // G4ThreeVector CoPos = G4ThreeVector(0. * cm, 0. * cm, PtPos.getZ() - 0.5*PtZLength - 0.5*CoZLength);
    // G4VSolid* CoSol = new G4Box("Co", .5 * CoXLength, .5 * CoYLength, .5 *CoZLength);
 
    // Logical
    G4LogicalVolume* imaginary_BoxLog = new G4LogicalVolume(imaginary_Box_Sol, matAir, "imaginary_Box");

    G4LogicalVolume* TotalLog = new G4LogicalVolume(Total_Sol, matAir, "Total_Cell");

    G4LogicalVolume* DetectorLog = new G4LogicalVolume(Detector_Sol, matSi, "detLV");


    G4LogicalVolume* KaptonLog = new G4LogicalVolume(KaptonSol, matKapton, "Kapton");
    G4LogicalVolume* CuLog = new G4LogicalVolume(CuSol, matCu, "Cu");
    G4LogicalVolume* LLZOLog = new G4LogicalVolume(LLZOSol, LLZO, "LLZO");
    G4LogicalVolume* LiCathodeLog = new G4LogicalVolume(LiCathodeSol, matLi, "LiCathode");
    G4LogicalVolume* NiLog = new G4LogicalVolume(NiSol, matNi, "Ni");
    


    // LiPON physical
    bool checkOverlaps = true;
    // new G4PVPlacement(nullptr, imaginary_Box_Pos, imaginary_BoxLog, "imaginary_Box", worldLog, false, checkOverlaps);

    G4RotationMatrix * fieldRot = new G4RotationMatrix();
    fieldRot->rotateX(-45.*deg);
    new G4PVPlacement(fieldRot,imaginary_Box_Pos, imaginary_BoxLog, "imaginary_Box", worldLog, false, checkOverlaps);
    
    new G4PVPlacement(nullptr, Total_Pos, TotalLog, "Total_Cell", imaginary_BoxLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, Detector_Pos, DetectorLog, "Detector", imaginary_BoxLog, false, checkOverlaps);


    new G4PVPlacement(nullptr, KaptonPos, KaptonLog, "Kapton", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, CuPos, CuLog, "Cu", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, LLZOPos, LLZOLog, "LLZO", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, LiCathodePos, LiCathodeLog, "LiCathode", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, NiPos, NiLog, "Ni", TotalLog, false, checkOverlaps);

    // vis
    G4VisAttributes * va_imaginary = new G4VisAttributes(G4Colour(0.0, 1.0, 1.0));
    va_imaginary->SetForceWireframe(true);
    imaginary_BoxLog->SetVisAttributes(va_imaginary); 
    return worldPhy;
}

void DetectorConstruction::ConstructSDandField()
{
    auto det = new G4MultiFunctionalDetector("Detector");
    G4SDManager::GetSDMpointer()->AddNewDetector(det);
    G4VPrimitiveScorer* primitive = new G4PSEnergyDeposit("edep");
    // G4VPrimitiveScorer* primitive = new G4PSCellFlux("cellFlux");
	G4SDParticleFilter * chargedParticles = new G4SDParticleFilter("chargedParticles");
    // chargedParticles->add("neutron");
	chargedParticles->add("alpha");
    chargedParticles->add("triton");
	primitive->SetFilter(chargedParticles);
	det->RegisterPrimitive(primitive);

    // det->RegisterPrimitive(primitive); // Detector/cellFlux
    SetSensitiveDetector("detLV",det);
}