module fish

go 1.12

replace (
	golang.org/x/crypto v0.0.0-20181127143415-eb0de9b17e85 => github.com/golang/crypto v0.0.0-20181127143415-eb0de9b17e85
	golang.org/x/net v0.0.0-20181114220301-adae6a3d119a => github.com/golang/net v0.0.0-20181114220301-adae6a3d119a
	golang.org/x/sys v0.3.0 => github.com/golang/sys v0.3.0
	golang.org/x/text v0.3.0 => github.com/golang/text v0.3.0
)

require (
	git.apache.org/thrift.git v0.12.0 // indirect
	github.com/apache/thrift v0.12.0
	github.com/astaxie/beego v1.11.1
	github.com/garyburd/redigo v1.6.0 // indirect
	github.com/go-redis/redis v6.15.2+incompatible
	github.com/go-sql-driver/mysql v1.4.1
	github.com/golang/go v0.0.0-20190523013941-3e9d8e2e1bb9 // indirect
	github.com/gorilla/websocket v1.4.0
	github.com/jmoiron/sqlx v1.2.0
	github.com/onsi/ginkgo v1.14.2 // indirect
	github.com/onsi/gomega v1.10.4 // indirect
	github.com/orestonce/ChessGame v0.0.0-20190419000812-8e1a70c446b3 // indirect
	google.golang.org/appengine v1.6.7 // indirect
)
