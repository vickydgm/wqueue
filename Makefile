CC			= g++
CFLAGS		= -c -Wall
LDFLAGS		= -lpthread
SOURCES		= main.cpp ../threads/thread.cpp
INCLUDES	= -I../threads
OBJECTS		= $(SOURCES:.cpp=.o)
TARGET		= wqueue

all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@

clean:
	rm -rf $(OBJECTS) $(TARGET)
