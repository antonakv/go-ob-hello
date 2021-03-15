#!/usr/bin/env bash

  cd ~
  wget https://raw.githubusercontent.com/antonakv/go-ob-hello/main/hello.go
  go build hello.go
  ./hello
  