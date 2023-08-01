#ifndef Run_h
#define Run_h 1

#include "G4Run.hh"
#include "G4Event.hh"
#include "G4THitsMap.hh"
#include "G4SystemOfUnits.hh"
#include "G4SDManager.hh"

typedef std::vector<G4double> EDEPVEC;

// *********************************************************************
// This is G4Run class that sums up energy deposition from each event.
// The sum of the square of energy deposition was also calculated to
// produce the relative error of the dose.
// -- RecordEvent: Sum up the energy deposition and the square of it.
//                 The sums for each organ were saved as the form of
//                 std::map.
// -- Merge: Merge the data calculated in each thread.
// *********************************************************************

class Run : public G4Run 
{
public:
	Run();
	virtual ~Run();

	virtual void RecordEvent(const G4Event*);
	void ConstructMFD(const G4String& mfdName);
    virtual void Merge(const G4Run*);

 	EDEPVEC* GetEdepVec() {return &edepVec;};

private:
	EDEPVEC edepVec;
};

#endif
