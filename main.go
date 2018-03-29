package main

import (
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello Cruel World of Continuous Delivery!"))
	})

	http.ListenAndServe(":80", nil)
}
