SHELL = /bin/sh
JAVAC = javac
JFLAGS = -g -deprecation -source 1.5
SRC=$(wildcard *.java)
OBJ=$(addsuffix .class,$(basename $(SRC)))
CLASS=$(wildcard *.class)

.PHONY: clean

all: $(OBJ)

clean:
	rm -fv $(CLASS)

%.class: %.java
	$(JAVAC) $(JFLAGS) $^
