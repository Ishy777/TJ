#include <cab202_graphics.h>
#include <cab202_timers.h>

timer_id timer_1;
char * msg_1 = "I move about once per second";

int x_1 = 0;

void setup() {
    timer_1 = create_timer(1000*1);
}

void loop() {
    if( timer_expired(timer_1)) x_1 = (x_1+1) % screen_width();
}
void draw_all(){
clear_screen();
draw_string(x_1, 5, msg_1);
show_screen();
}
int main() {
    setup_screen();
    setup();

    for (;;) {
        draw_all();
        loop();
        timer_pause(10);
    }
}