#ifndef PRIMARYGENERATORACTION_HH
#define PRIMARYGENERATORACTION_HH

#include "G4VUserPrimaryGeneratorAction.hh"
#include "G4GeneralParticleSource.hh"


class G4ParticleGun;

class PrimaryGeneratorAction : public G4VUserPrimaryGeneratorAction
{
public:
    PrimaryGeneratorAction();
    virtual ~PrimaryGeneratorAction() override;

    virtual void GeneratePrimaries(G4Event *) override;

private:
    G4ParticleGun *fPrimary;
    G4GeneralParticleSource* fGeneralParticleSource;
};

#endif
