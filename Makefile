PHONY: all clean

all: hello.jar

Hello.class: Hello.java
  javac $^

hello.jar: Hello.class
  jar -cfe $@ Hello $^

clean:
  -rm -f hello.jar Hello.class
