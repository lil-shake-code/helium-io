// Settings    V1.4.0
// -- Updates in this version? Fixed many large bugs that did not allow sending messages in some cases.
/*
* Your server id or secret key. 
* This identifies your Rocket Net Server
* Please do not share with anyone!
*/
global.SERVERID = "71Rp9oLeSI02"


/*
* On which layer do you want other players to be instantiated
*/
global.OtherPlayersLayerName = "Instances"

/*                ------------HTML EXPORTS USE THIS!!!----------------
* Do you want to manually connect to RNet? You can do this by copying your serverURL directy
* from dashboard.rocketnetworking.net
* As of V 1.3.1 this is the HTML workaround
*/
global.manualServerURLconnection = false;
global.manualServerURL = "add it here if youre doing it manually"

/*
* How often do you want to share your sharedProperties?
* The higher this Time period is in frames, thats how many frames later the server is updated
*/
global.sharingFrequency = 1 ;    //Equivalent to alarm of 1 frame
global.entitySharingFrequency = 3   //for entities