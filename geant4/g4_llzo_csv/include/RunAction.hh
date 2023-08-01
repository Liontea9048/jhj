#ifndef RUNACTION_HH
#define RUNACTION_HH

#include "G4UserRunAction.hh"
#include "Run.hh"

class G4Run;

class RunAction : public G4UserRunAction
{
public:
    RunAction();
    virtual ~RunAction() override;

    virtual G4Run* GenerateRun() override;
    virtual void BeginOfRunAction(const G4Run *) override;
    virtual void EndOfRunAction(const G4Run *) override;

    void PrintResult(std::ostream &out);

private:
    Run* fRun;
    G4int numOfEvent;

};

#endif
