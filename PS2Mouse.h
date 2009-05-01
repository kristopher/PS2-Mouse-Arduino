#ifndef PS2Mouse_h

#define PS2Mouse_h
#define REMOTE 1
#define STREAM 2

class PS2Mouse
{
  private:
    int _clock_pin;
    int _data_pin;
    int _mode;
    int _initialized;
    int _enabled;
    int _disabled;
    int read_byte();
    int read_bit();
    int read_movement_x(int);
    int read_movement_y(int);
    void pull_high(int);
    void pull_low(int);
    void set_mode(int);
  public:
    PS2Mouse(int, int, int mode = REMOTE);
    void initialize();
    int clock_pin();
    int data_pin();
    int read();
    int* report(int data[]);
    void write(int);
    void enable_data_reporting();
    void disable_data_reporting();
    void set_remote_mode();
    void set_stream_mode();
    void set_resolution(int);
    void set_scaling_2_1();
    void set_scaling_1_1();
    void set_sample_rate(int);
};

#endif

