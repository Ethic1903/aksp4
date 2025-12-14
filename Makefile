# Simple Makefile for quick backend run

ifeq ($(OS),Windows_NT)
	MVNW = ../mvnw.cmd
else
	MVNW = ../mvnw
endif

.PHONY: run backend-run backend-build backend-test clean

# Default target: run backend Spring Boot app
run: backend-run

backend-run:
	cd backend && $(MVNW) spring-boot:run

backend-build:
	cd backend && $(MVNW) clean package

backend-test:
	cd backend && $(MVNW) test

clean:
	cd backend && $(MVNW) clean
