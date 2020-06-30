//#include <unistd.h>
#include <sys/syscall.h>

#ifndef DOCKER_GREETING
	#define DOCKER_GREETING "Hello from Docker!"
#endif

const char message[] =
	DOCKER_GREETING "\n";

void _start() {
	//write(1, message, sizeof(message) - 1);
	syscall(SYS_write, 1, message, sizeof(message) - 1);

	//_exit(0);
	syscall(SYS_exit, 0);
}
