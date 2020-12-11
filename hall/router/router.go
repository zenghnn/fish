package router

import (
	"fish/hall/controllers"
	"net/http"
)

func init() {
	http.HandleFunc("/api/get_serverinfo", controllers.GetServerInfo)
	http.HandleFunc("/guest", controllers.Guest)
	http.HandleFunc("/api/guest", controllers.NewGuest)
	http.HandleFunc("/login", controllers.Login)
	http.HandleFunc("/api/get_user_status", controllers.GetUserStatus)
	http.HandleFunc("/api/get_message", controllers.GetMessage)
	http.HandleFunc("/enter_public_room", controllers.EnterPublicRoom)
	http.HandleFunc("/register_game_server", controllers.RegisterGameServer)

	http.HandleFunc("/qq/login", controllers.QQLogin)
	http.HandleFunc("/qq/message", controllers.QQCallback)
}
