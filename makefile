LINK_TARGET = hello

all: $(LINK_TARGET)

$(LINK_TARGET): 
	gcc -Wall -o ./dist/$(LINK_TARGET) src/main.c src/splash.c

test:
	make -f MakeTests.mk V=${V} all

clean:
	 rm ./dist/$(LINK_TARGET)
	 make -f MakeTests.mk V=${V} clean