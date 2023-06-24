// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreConnect(){
	var url = "https://us-central1-rocket-networking.cloudfunctions.net/getServerUrl";
	//USE HTTPS FOR WINDOWS
	//Cut the https:// FULLY FOR HTML. It still does not hit the server because server does not allow non https req
	// Also in HTML you cant call this in the get event
	



	var headers = ds_map_create();
	headers[?"Content-Type"] = "application/x-www-form-urlencoded";


	http_request(url, "POST" , headers , global.SERVERID) //http_post_string(url,json_stringify(data))
	
	show_debug_message("Asking RNet backend to give us our server information from bckend..")

	
	global.clientId = -1 //not set anything yet
	global.roomId = -1 //not set anything yet
	global.lastCheckedArrayOfAllRooms = ["please check once using ShowAllRooms()"]
	ds_map_destroy(headers)

}