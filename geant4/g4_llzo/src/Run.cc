#include "Run.hh"

Run::Run()
:G4Run()
{}

Run::~Run()
{
	edepVec.clear();
}

void Run::RecordEvent(const G4Event* event)
{
	// G4cout << "Run.cccc ------------------------" <<G4endl;
	auto  fCollID_alpha
	= G4SDManager::GetSDMpointer()->GetCollectionID("Detector/edep");
	
	// Hits collections
	G4HCofThisEvent* HCE = event->GetHCofThisEvent();
	if(!HCE) return;
	G4THitsMap<G4double>* evtMap_alpha =
			static_cast<G4THitsMap<G4double>*>(HCE->GetHC(fCollID_alpha));
	// manua
	
	auto summation = 0.;
	for (auto itr : *evtMap_alpha->GetMap()) { // itr => detector copy num (100), depositEnergy (step by step)
		// edepMap[itr.first] += *itr.second;                   //sum
		summation += *itr.second;
	}
	edepVec.push_back(summation);
}

void Run::Merge(const G4Run* run)
{
	// merge the data from each thread
	EDEPVEC localVec = static_cast<const Run*>(run)->edepVec;
    // for(auto itr : localMap){
	// 	edepMap[itr.first]  += itr.second;
	// }
	for (auto itr : localVec) { // itr => detector copy num (100), depositEnergy (step by step)
		// edepMap[itr.first] += *itr.second;                   //sum
		edepVec.push_back(itr);
	}
	// edepVec.push_back(summation);

	G4Run::Merge(run);
}




