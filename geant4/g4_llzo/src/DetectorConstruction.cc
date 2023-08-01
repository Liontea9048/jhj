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
    // G4Material * matAir = G4NistManager::Instance()->FindOrBuildMaterial("G4_AIR");
    G4Material * matAir = G4NistManager::Instance()->FindOrBuildMaterial("G4_Galactic");
    G4Material * matSi = G4NistManager::Instance()->FindOrBuildMaterial("G4_Si");


    G4Material * matLi  = G4NistManager::Instance()->FindOrBuildMaterial("G4_Li");
    // G4Material * matLi  = G4NistManager::Instance()->FindOrBuildMaterial("G4_B");
    G4Material * matPhosphorus = G4NistManager::Instance()->FindOrBuildMaterial("G4_P");
    G4Material * matOxygen = G4NistManager::Instance()->FindOrBuildMaterial("G4_O");
    G4Material * matNitrogen = G4NistManager::Instance()->FindOrBuildMaterial("G4_N");

    //LiPON
    // G4Material * LiPON = G4NistManager::Instance()->ConstructNewMaterial("LiPON");
    G4Material * LiPON = new G4Material("LiPON", 2.33 * g / cm3, 4);
    // std::vector<G4String> elLiPON = {"Li", "P", "O", "N"};
    // std::vector<G4double> weightLiPON = {21.11, 26.15, 44.58, 8.16 };
    // G4Material * LiPON = ConstructNewMaterial("LiPON", elLiPON, weightLiPON, 2.33 * g / cm3, true, kStateSolid);
    LiPON->AddMaterial(matLi,           0.2111);
    LiPON->AddMaterial(matPhosphorus,   0.2615);
    LiPON->AddMaterial(matOxygen,       0.4458);
    LiPON->AddMaterial(matNitrogen,     0.0816);
    // fraction sum should be 1

    //LiCo
    // auto nist = G4NistManager::Instance();
    G4Element * elLi = G4NistManager::Instance()->FindOrBuildElement("Li");
    G4Element * elCo = G4NistManager::Instance()->FindOrBuildElement("Co");
    G4Element * elOxygen = G4NistManager::Instance()->FindOrBuildElement("O");
    G4Material * LiCo = new G4Material("LiCo", 4.9 * g / cm3, 2);
    LiCo->AddElement(elLi,           1);
    LiCo->AddElement(elCo,           1);
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
    G4double Total_ZLength = 7.43 * micrometer;
    G4ThreeVector Total_Pos = G4ThreeVector();
    G4VSolid* Total_Sol = new G4Box("Total_Cell", .5 * Total_XLength, .5 * Total_YLength, .5 *Total_ZLength);

    // Detector
    G4double Det_XLength = 7.62 * cm;
    G4double Det_YLength = 7.62 * cm; //set
    G4double Det_ZLength = 7.62 * cm; //thickness
    G4int Distance = 5 * cm;
    G4ThreeVector Detector_Pos = G4ThreeVector(0., 0., .5 * Total_ZLength + 0.5 * Det_ZLength + Distance );
    G4VSolid* Detector_Sol = new G4Box("Detector", .5 * Det_XLength, .5 * Det_YLength, .5 *Det_ZLength);

  // LiPON Cell
    G4double LiPONXLength = 1. * cm;
    G4double LiPONYLength = .5 * cm; //set
    G4double LiPONZLength = .7 * micrometer; //thickness
    G4ThreeVector LiPONPos = G4ThreeVector(0., 0., .5 * Total_ZLength - .5 * LiPONZLength);
    G4VSolid* LiPONSol = new G4Box("LiPON", .5 * LiPONXLength, .5 * LiPONYLength, .5 *LiPONZLength);
    
    //Cu Cell
    G4double CuXLength = 1. * cm;
    G4double CuYLength = .5 * cm;  // set
    G4double CuZLength = .2 * micrometer; //thickness
    // -0.35 - 0.01 = -0.45 micrometer 
    G4ThreeVector CuPos = G4ThreeVector(0., 0., LiPONPos.getZ() - 0.5*LiPONZLength - 0.5*CuZLength); 
    G4VSolid* CuSol = new G4Box("Cu", .5 * CuXLength, .5 * CuYLength, .5 *CuZLength);

    // SE LiPON
    G4double SEXLength = 1. * cm;
    G4double SEYLength = .5 * cm;
    G4double SEZLength = 3.2 * micrometer;
    // -0.45 -0.1 -1.6 = -2.15 micrometer
    G4ThreeVector SEPos = G4ThreeVector(0. * cm, 0. * cm, CuPos.getZ() - 0.5*CuZLength - 0.5*SEZLength);
    G4VSolid* SESol = new G4Box("SELiPON", .5 * SEXLength, .5 * SEYLength, .5 *SEZLength);

    //LiCoO2
    G4double LiCoXLength = 1. * cm;
    G4double LiCoYLength = .5 * cm;
    G4double LiCoZLength = 3.1 * micrometer;
    // -2.15 -1.6 -1.55 = -5.3 micrometer
    G4ThreeVector LiCoPos = G4ThreeVector(0. * cm, 0. * cm, SEPos.getZ() - -0.5*SEZLength - 0.5*LiCoZLength);
    G4VSolid* LiCoSol = new G4Box("LiCo", .5 * LiCoXLength, .5 * LiCoYLength, .5 *LiCoZLength);

    //Pt
    G4double PtXLength = 1. * cm;
    G4double PtYLength = .5 * cm;
    G4double PtZLength = .2 * micrometer; //thickness
    // -5.3 -1.55 -0.1 = -6.95
    G4ThreeVector PtPos = G4ThreeVector(0. * cm, 0. * cm, LiCoPos.getZ() - 0.5*LiCoZLength - 0.5*PtZLength);
    G4VSolid* PtSol = new G4Box("Pt", .5 * PtXLength, .5 * PtYLength, .5 *PtZLength);

    //Co 
    G4double CoXLength = 1. * cm;
    G4double CoYLength = .5 * cm;
    G4double CoZLength = .03 * micrometer;
    // -6.95 - 0.1 - 0.015 = -7.065
    G4ThreeVector CoPos = G4ThreeVector(0. * cm, 0. * cm, PtPos.getZ() - 0.5*PtZLength - 0.5*CoZLength);
    G4VSolid* CoSol = new G4Box("Co", .5 * CoXLength, .5 * CoYLength, .5 *CoZLength);
 
    // Logical
    G4LogicalVolume* imaginary_BoxLog = new G4LogicalVolume(imaginary_Box_Sol, matAir, "imaginary_Box");

    G4LogicalVolume* TotalLog = new G4LogicalVolume(Total_Sol, matAir, "Total_Cell");

    G4LogicalVolume* DetectorLog = new G4LogicalVolume(Detector_Sol, matSi, "detLV");


    G4LogicalVolume* LiPONLog = new G4LogicalVolume(LiPONSol, LiPON, "LiPON");
    G4LogicalVolume* CuLog = new G4LogicalVolume(CuSol, matCu, "Cu");
    G4LogicalVolume* SELog = new G4LogicalVolume(SESol, LiPON, "SELiPON");
    G4LogicalVolume* LiCoLog = new G4LogicalVolume(LiCoSol, LiCo, "LiCo");
    G4LogicalVolume* PtLog = new G4LogicalVolume(PtSol, matPt, "Pt");
    G4LogicalVolume* CoLog = new G4LogicalVolume(CoSol, matCo, "Co");


    // LiPON physical
    bool checkOverlaps = true;
    // new G4PVPlacement(nullptr, imaginary_Box_Pos, imaginary_BoxLog, "imaginary_Box", worldLog, false, checkOverlaps);

    G4RotationMatrix * fieldRot = new G4RotationMatrix();
    fieldRot->rotateX(-45.*deg);
    new G4PVPlacement(fieldRot,imaginary_Box_Pos, imaginary_BoxLog, "imaginary_Box", worldLog, false, checkOverlaps);
    
    new G4PVPlacement(nullptr, Total_Pos, TotalLog, "Total_Cell", imaginary_BoxLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, Detector_Pos, DetectorLog, "Detector", imaginary_BoxLog, 100, checkOverlaps);


    new G4PVPlacement(nullptr, LiPONPos, LiPONLog, "LiPON", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, CuPos, CuLog, "Cu", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, SEPos, SELog, "SELiPON", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, LiCoPos, LiCoLog, "LiCo", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, PtPos, PtLog, "Pt", TotalLog, false, checkOverlaps);
    new G4PVPlacement(nullptr, CoPos, CoLog, "Co", TotalLog, false, checkOverlaps);

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