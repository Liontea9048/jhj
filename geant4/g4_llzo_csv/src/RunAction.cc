#include "G4RunManager.hh"

#include "RunAction.hh"
#include "Run.hh"

RunAction::RunAction()
    : G4UserRunAction()
{
}

RunAction::~RunAction()
{
}

G4Run* RunAction::GenerateRun(){
    //generate Run
    fRun = new Run();
    return fRun;
}

void RunAction::BeginOfRunAction(const G4Run* aRun)
{
    numOfEvent=aRun->GetNumberOfEventToBeProcessed();
	G4RunManager::GetRunManager()->SetPrintProgress(int(numOfEvent*0.1));
}

void RunAction::EndOfRunAction(const G4Run * aRun)
{
    if(!isMaster) return;

    // auto runID = aRun->GetRunID();

    std::ofstream ofs("./output.txt");
    PrintResult(ofs);
    ofs.close();
}

void RunAction::PrintResult(std::ostream &out){
    using namespace std;
    EDEPVEC edepVec = *fRun->GetEdepVec();

    // auto idx = 100
    out << "Deposited Energy, " << G4endl;
    for(auto itr : edepVec){
        if (itr != 0){
            out << itr << "," << G4endl;
        }
        
    }
}
