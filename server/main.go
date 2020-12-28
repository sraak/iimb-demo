package main

import (
	"log"

	"github.com/valyala/fasthttp"
)

func main() {
	fs := &fasthttp.FS{
		Root:       ".",
		IndexNames: []string{"index.html"},
		Compress:   true,
	}
	h := fs.NewRequestHandler()

	if err := fasthttp.ListenAndServe(":3000", h); err != nil {
		log.Fatalf("error in ListenAndServe: %s", err)
	}
}
