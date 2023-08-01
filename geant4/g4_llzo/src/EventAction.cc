#include "G4Event.hh"
#include "G4SDManager.hh" //To use GetCollectionID function of G4SDManager class
#include "EventAction.hh"
#include "G4THitsMap.hh"  // To get HC by using ID 
#include "G4SystemOfUnits.hh" 

EventAction::EventAction()
    : G4UserEventAction(), fHCID(-1) // initializing fHCID to -1
{
}

EventAction::~EventAction()
{
}

void EventAction::BeginOfEventAction(const G4Event *)
{
}

void EventAction::EndOfEventAction(const G4Event *anEvent)
{
    auto HCE = anEvent->GetHCofThisEvent(); // Made HCofThisEvent in this event is designated to HCE parameter
    if (!HCE)
        return;

    // if(fHCID == -1)
    // fHCID = G4SDManager::GetSDMpointer()->GetCollectionID("Detector/cellFlux");
    fHCID = G4SDManager::GetSDMpointer()->GetCollectionID("Detector/edep");
    // G4cout << fHCID << G4endl;
	
    // only set when ID is -1 if not, if sentence is not executed

    auto hitsMap = static_cast<G4THitsMap<G4double> *>(HCE->GetHC(fHCID));
    // hitsMap is a parameter which copynumber is stored

    
    double summation = 0.;
    for (const auto &iter : *(hitsMap->GetMap()))
    {
        summation = summation + *(iter.second);
    }
    if (summation > 0.){
        G4cout << "new " << summation/MeV << G4endl;
    }

}
