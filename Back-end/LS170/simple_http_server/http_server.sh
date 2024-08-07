#!/bin/bash

# requests should consists on (1) line comprised of (3) parts:
#	1. reqquest method
#	2. path
#	3. HTTP version

function server() {

	while true
	do
		# read method path version
		message_arr=()
		check=true
		while $check
		do
			read line
			message_arr+=($line)
			if [[ "${#line}" -eq 1 ]]
			then
				check=false
			fi
		done
		method=${message_arr[0]}
		path=${mesage_arr[1]}
		if [[ $method = 'GET' ]]
		then
			if [[ -f ./www/$path ]]
			then
        echo -ne "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: $(wc -c <'./www/'$path)\r\n\r\n"; cat "./www/$path"
      else
        echo -ne 'HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n'
      fi
    else
      echo -ne 'HTTP/1.1 400 Bad Request\r\nContent-Length: 0\r\n\r\n'
		fi

	done

}

coproc SERVER_PROCESS { server; }  	# `coproc` command executes a process
																		#	asynchronously in a subshell
                                   	# this coprocess is called `SERVER_PROCESS` and executes the `server` function

netcat -lkv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}
