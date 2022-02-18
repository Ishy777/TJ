#include <cab202_graphics.h>
#include <cab202_timers.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <stdbool.h>

timer_id timer_1s;
// Insert other functions here, or include header files
// sets the requirement for the game to run
bool game_over = false;
//screen dimensions
int W, H;
int count_sec = 00;
int count_min = 00;

//Jerry State
double Jx, Jy;
int Lives = 5;
#define J_IMG 'J'
#define J_Int_Cheese 0

//Tom state
double Tx, Ty, Tdx, Tdy;
#define T_IMG 'T'
#define T

//mousetrap state
double Mx, My, Mx1, My1,Mx2, My2,Mx3, My3,Mx4, My4,Mx5, My5;
int Mouse_Traps = 0;
#define Mouse_Trap_IMG 'M'

//cheese state
double Cx, Cy;
int Score = 0;
#define Cheese_IMG 'C'
double Dx, Dy;

//board state
int Walls[100][4];
int Last_Wall_Written = 0;

//------------ dimension setup ---------------------------
int get_usable_height()
{
    return H - 5;
}

int get_usable_width()
{
    return W - 2;
}

// -----------------draw status ------------------------

void draw_boarder()
{
    const int ch = '*';
    draw_line(0, 3, 0, H - 1, ch);
    draw_line(0, 3, W - 1, 3, ch);
    draw_line(0, H - 1, W - 1, H - 1, ch);
    draw_line(W - 1, 3, W - 1, H - 1, ch);
}

void draw_status()
{

    draw_formatted(1, 0, "Student Number: 10084592");
    draw_formatted(30, 0, "Score: %d", Score);
    draw_formatted(45, 0, "Lives: %d", Lives);
    draw_formatted(60, 0, "Player: %c", 'J');
    draw_formatted(75, 0, "Time: %d:%d", count_min, count_sec);
    draw_formatted(1, 2, "Cheese: %d", 1);
    draw_formatted(15, 2, "Traps: %d", Mouse_Traps);
    draw_formatted(30, 2, "Fireworks: %d", 0);
    draw_formatted(45, 2, "Level: %d", 1);
}

// ------------------------- collision detections ---------------------------
bool collided(double x0, double y0, double x1, double y1)
{
    return round(x0) == round(x1) && round(y0) == round(y1);
}
// Diplays room information by passing array of walls into function
void show_room()
{
    // instead of the stream/ file, array of walls should be read
    char pen = '*';

    for (int i = 0; i <= Last_Wall_Written; i++)
    {
        {
            draw_line(
                Walls[i][0],
                Walls[i][1],
                Walls[i][2],
                Walls[i][3],
                pen);
        }
    }

    // draw Tom and Jerry in their current positions
    draw_char(Jx, Jy, J_IMG);
    draw_char(Tx, Ty, T_IMG);

    show_screen();
}

//---------- Jerry ---------------------
void update_jerry(int key_code)
{
    if (key_code == 'a' && Jx > 1)
    {
        Jx--;
    }
    else if (key_code == 'd' && Jx < W - 2)
    {
        Jx++;
    }
    else if (key_code == 's' && Jy < H - 2)
    {
        Jy++;
    }
    else if (key_code == 'w' && Jy > 4)
    {
        Jy--;
    }
}
void draw_jerry()
{
    draw_char(round(Jx), round(Jy), J_IMG);
}

/// ------------------ Tom ----------------------------------------------------
void setup_tom()
{
    //creates angle between tom and jerry
    double tom_dir = atan((Jy - Ty / (Jx - Tx))) * (M_PI / 180);
    const double step = 0.1;

    Tdx = step * cos(tom_dir);
    Tdy = step * sin(tom_dir);
}

void draw_tom()
{
    draw_char(round(Tx), round(Ty), T_IMG);
}
void move_tom()
{
    Tx += Tdx;
    Ty += Tdy;
}

void update_tom(int key)
{
    if (key < 0)
        move_tom();
}
//-----------------game over conditions----------------------
void set_game_over()
{
    if (Lives == 0)
        game_over = true;
}

void draw_door()
{

    draw_char(round(Dx), round(Dy), 'X');
}
void setup_door()
{
    
        Dx = 1 + rand() % get_usable_width();
        Dy = 4 + rand() % get_usable_height();

}

void update_win()
{
    // jerry picks up cheese
    if (collided(Jx, Jy, Dx, Dy))
    {
        game_over = true;
    }
}

// ----------------cheese---------------

// sets cheese coordinats to random location
void setup_cheese()
{
    Cx = 2 + rand() % get_usable_width();
    Cy = 4 + rand() % get_usable_height();
}
// draws cheese coordinates
void draw_cheese()
{

    draw_char(round(Cx), round(Cy), Cheese_IMG);
}
void update_cheese()
{
    // jerry picks up cheese
    if (collided(Jx, Jy, Cx, Cy))
    {
        Score++;
        setup_cheese();
    }
}
// ----------------Mouse Trap---------------
void setup_mousetrap()
{
    Mx = 1 + rand() % get_usable_width();
    My = 4 + rand() % get_usable_height();
if (Mouse_Traps == 1) {
    Mx1 = 1 + rand() % get_usable_width();
    My1 = 4 + rand() % get_usable_height();}
if (Mouse_Traps == 2) {
    Mx2 = 1 + rand() % get_usable_width();
    My2 = 4 + rand() % get_usable_height();}
 if (Mouse_Traps == 3) {
    Mx3 = 1 + rand() % get_usable_width();
    My3 = 4 + rand() % get_usable_height();}
 if (Mouse_Traps == 4) {
    Mx4 = 1 + rand() % get_usable_width();
    My4 = 4 + rand() % get_usable_height();}
 if (Mouse_Traps == 5) {
    Mx5 = 1 + rand() % get_usable_width();
    My5 = 4 + rand() % get_usable_height();}
}
// draws mousetrap coordinates
void draw_mousetrap()
{
    
    draw_char(round(Mx), round(My), Mouse_Trap_IMG);
    if (Mouse_Traps == 1) draw_char(round(Mx1), round(My1), Mouse_Trap_IMG);
    if (Mouse_Traps == 2) draw_char(round(Mx2), round(My2), Mouse_Trap_IMG);
    if (Mouse_Traps == 3) draw_char(round(Mx3), round(My3), Mouse_Trap_IMG);
    if (Mouse_Traps == 4) draw_char(round(Mx4), round(My4), Mouse_Trap_IMG);
    if (Mouse_Traps == 5) draw_char(round(Mx5), round(My5), Mouse_Trap_IMG);
}
void update_mousetrap()
{
    // collision between jerry and mousetrap
    if (round(count_sec) / 2 == count_sec / 2 && Mouse_Traps < 6)
    {
        Mouse_Traps++;
        setup_mousetrap();
    }
    if (collided(Jx, Jy, Mx, My))
    {
        Lives--;
    }
}

//---------- calls all setup fucntions -----------------
void setup(FILE *stream)
{
    // Insert setup logic here
    srand(get_current_time());
    W = screen_width();
    H = screen_height();

    // read board details from file
    while (!feof(stream))
    {
        char command;
        double x1s, y1s, x2s, y2s;
        double items_scanned = fscanf(stream, " %c %lf %lf %lf %lf", &command, &x1s, &y1s, &x2s, &y2s);

        int x_1 = (x1s * get_usable_width()) + 1;
        int x_2 = (x2s * get_usable_width()) + 1;
        int y_1 = (y1s * get_usable_height()) + 4;
        int y_2 = (y2s * get_usable_height()) + 4;

        if (items_scanned == 3)
        {
            if (command == 'J')
            {
                Jx = x_1;
                Jy = y_1;
            }
            else if (command == 'T')
            {
                Tx = x_1;
                Ty = y_1;
            }
        }

        // record wall info
        if (items_scanned == 5)
        {
            Walls[Last_Wall_Written][0] = x_1;
            Walls[Last_Wall_Written][1] = y_1;
            Walls[Last_Wall_Written][2] = x_2;
            Walls[Last_Wall_Written][3] = y_2;
            Last_Wall_Written++;
        }
    }
    timer_1s = create_timer(1000 * 1);
    setup_tom();
    setup_cheese();
    setup_mousetrap();
    setup_door();
}

//----- -----loop and update fucntion-------------
void loop()
{
    int key = get_char();

    if (key == 'q')
    {
        game_over = true;
        return;
    }
    if (timer_expired(timer_1s))
        count_sec = (count_sec + 1);
    if (count_sec == 60)
    {
        count_min++;
        count_sec = 0;
    }
    update_jerry(key);
    update_tom(key);
    update_cheese();
    update_mousetrap();
    set_game_over();
    update_win();
    
}

//----------- calls all draw fucntions--------------
void draw_all()
{
    clear_screen();
    draw_boarder();
    draw_status();
    draw_cheese();
    draw_jerry();
    draw_tom();
    draw_mousetrap();
    if (Score == 5) draw_door();
    show_screen();
}

//------------------MAIN--------------------------

int main()
{
    setup_screen();
    FILE *stream = fopen("room01.txt", "r");
    if (stream != NULL)
    {

        setup(stream);

        while (!game_over)
        {
            show_room(stream);
            draw_all();
            loop();
            timer_pause(1);
        }
    }
}