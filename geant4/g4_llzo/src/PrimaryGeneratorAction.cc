#include "G4ParticleGun.hh"
#include "G4Gamma.hh" //including G4Gamma Class
#include "G4Neutron.hh"
#include "G4SystemOfUnits.hh"

#include "PrimaryGeneratorAction.hh"
#include "G4ParticleTable.hh"

PrimaryGeneratorAction::PrimaryGeneratorAction()
    : G4VUserPrimaryGeneratorAction()
{
    fPrimary = new G4ParticleGun();
    G4ParticleTable* particleTable = G4ParticleTable::GetParticleTable();
    G4ParticleDefinition* particle = particleTable->FindParticle("neutron");
    // G4ParticleDefinition* particle = particleTable->FindParticle("gamma");
    fPrimary->SetParticleDefinition(particle);
    fPrimary->SetParticlePosition(G4ThreeVector(0.,0.,10.*cm));
    fPrimary->SetParticleEnergy(0.025*eV);
    // fPrimary->SetParticleEnergy(100.*eV);
    fPrimary->SetParticleMomentumDirection(G4ThreeVector(0.,0.,-1.));
}

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
    delete fPrimary;
}

void PrimaryGeneratorAction::GeneratePrimaries(G4Event *anEvent)
{
    G4ParticleDefinition* particle = fPrimary->GetParticleDefinition();

    // fPrimary->SetParticleDefinition(G4Neutron::Definition()); // Initial particle is gamma

    // fPrimary->SetParticleEnergy(0.025 * eV); // Setting Gamma energy

    // fPrimary->SetParticlePosition(G4ThreeVector()); // Setting Initial Gamma position

    // fPrimary->SetParticleMomentumDirection(G4ThreeVector(0., 0., 1.)); // Setting Gamma direction

    fPrimary->GeneratePrimaryVertex(anEvent);
}
