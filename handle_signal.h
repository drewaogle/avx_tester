#include <csignal>

void on_signal( int signum ) {
    exit(1+signum);
}
