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
double Mx, My;
int Mouse_Traps = 0;
#define Mouse_Trap_IMG 'M'

//cheese state
double Cx, Cy;
int Score = 0;
#define Cheese_IMG 'C'
double Dx, Dy;

//board state
double Walls[100][4];
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
    draw_formatted(60, 0, "Player:");
    draw_formatted(75, 0, "Time: %d:%d", count_min, count_sec);
    draw_formatted(1, 2, "Cheese");
    draw_formatted(15, 2, "Traps");
    draw_formatted(30, 2, "Fireworks:");
    draw_formatted(45, 2, "Level:");
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
    double new_x = Jx;
    double new_y = Jy;
    if (key_code == 'a' && Jx > 1)
    {
        new_x--;
    }
    else if (key_code == 'd' && Jx < W - 2)
    {
        new_x++;
    }
    else if (key_code == 's' && Jy < H - 2)
    {
        new_y++;
    }
    else if (key_code == 'w' && Jy > 4)
    {
        new_y--;
    }

    // check if new coordinates are legal
    for (int i = 0; i < Last_Wall_Written; i++)
    {
        double start_x, start_y, end_x, end_y;
        start_x = Walls[i][0];
        start_y = Walls[i][1];
        end_x = Walls[i][2];
        end_y = Walls[i][3];

        double bigger_x, smaller_x, bigger_y, smaller_y;
        if (start_x > end_x)
        {
            bigger_x = start_x;
            smaller_x = end_x;
        }
        else
        {
            bigger_x = end_x;
            smaller_x = start_x;
        }
        if (start_y > end_y)
        {
            bigger_y = start_y;
            smaller_y = end_y;
        }
        else
        {
            bigger_y = end_y;
            smaller_y = start_y;
        }

        double dx = end_x - start_x;
        double dy = end_y - start_y;

        // coordinate geometric formula magic below
        if (new_x >= smaller_x && new_x <= bigger_x &&
            new_y >= smaller_y && new_y <= bigger_y &&
            ((new_x - start_x) * dy) == ((new_y - start_y) * dx))
        {
            return;
        }
    }

    // update Jerry's coordinates if legal
    Jx = new_x;
    Jy = new_y;
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
void update_door()
{
    if (Score == 5)
    {
        Dx = 2 + rand() % get_usable_width();
        Dy = 4 + rand() % get_usable_height();
    }
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
    Mx = 2 + rand() % get_usable_width();
    My = 4 + rand() % get_usable_height();
}
// draws mousetrap coordinates
void draw_mousetrap()
{
    draw_char(round(Mx), round(My), Mouse_Trap_IMG);
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
        setup_mousetrap();
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
    update_door();
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
    show_screen();
    if (Score == 5)
        draw_door();
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
            timer_pause(10);
        }
    }
}