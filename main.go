package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":8002", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "<h1>Hello, World!</h1>")
}
