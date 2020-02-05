# Makefile to build program
# --- macros
CC=gcc
AR=ar
CFLAGS=  -O3 -std=c99

OBJECTS=  client_subscription_loop.o
# LIBS =  -lopen62541 -lm
LIBS =  libopen62541-x86.a 

# --- targets
all: client_sub

client_sub:   $(OBJECTS) 
	$(CC)  -o client_sub  $(OBJECTS) $(LIBS)
open62541lib:   open62541.o
	$(AR)  rcs libopen62541-x86.a open62541.o
client_subscription_loop.o: client_subscription_loop.c
	$(CC) $(CFLAGS) -c client_subscription_loop.c
open62541.o: open62541.c
	$(CC) $(CFLAGS) -c open62541.c
clean:
	rm -f *.o client_sub $(OBJECTS)
cleann:
	rm -f *.o *.a client_sub $(OBJECTS)


