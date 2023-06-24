// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ConnectToServer(){
	if(!global.manualServerURLconnection){
		PreConnect()
	}else{
		if(string_length(global.manualServerURL)>15){
			//this is a paid customer
			show_debug_message("Connecting to paid private server")
	
			oBrain.socket = network_create_socket(network_socket_wss)
			var PORT=443
		}else{
			//this is a free customer
			show_debug_message("connecting to free public server")
		
		
			oBrain.socket = network_create_socket(network_socket_wss)
			var PORT=443
		
		}

		var IP = global.manualServerURL

	
		show_debug_message("Trying to connect to your Rocket Server")
		oBrain.connect=network_connect_raw_async(oBrain.socket, IP,PORT)
		show_debug_message("connect is "+string(oBrain.connect))
	}

}