# Simple Client for OPC UA Using Open62541 #

A simple client ripped off of the examples of
 [open62541](https://github.com/open62541/open62541).

## Building ##
* `make open62541lib` to build the static library
* `make all` to build the client
* `make clean` to clean everything except for the static library
* `make cleann` to clean EVERYTHING

## Usage ##
`./client_sub`  will connect to the server 
<opc.tcp://opcuademo.sterfive.com:26543> from (this list of publicly avaliable
 OPC UA servers)[https://github.com/node-opcua/node-opcua/wiki/
publicly-available-OPC-UA-Servers-and-Clients]
