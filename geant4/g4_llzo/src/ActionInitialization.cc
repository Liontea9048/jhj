#include "ActionInitialization.hh"
#include "PrimaryGeneratorAction.hh"
#include "RunAction.hh"
#include "EventAction.hh"
#include "SteppingAction.hh"

ActionInitialization::ActionInitialization()
    : G4VUserActionInitialization()
{
}

ActionInitialization::~ActionInitialization()
{
}

void ActionInitialization::BuildForMaster() const
{
    SetUserAction(new RunAction);
}

void ActionInitialization::Build() const
{
    SetUserAction(new PrimaryGeneratorAction);
    // auto runAction = new RunAction;
    // SetUserAction(runAction);
    SetUserAction(new RunAction);
    // auto eventAction = new EventAction(runAction);
    // SetUserAction(eventAction);
    // SetUserAction(new EventAction);
    SetUserAction(new MySteppingAction);
}
