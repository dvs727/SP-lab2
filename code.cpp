#include <stdio.h>
int main()
{
    int array[12] = {300, -600, 900, -1200, 1500, -1800, 2100, -2400, 2700, -3000, 3600, -3900};
    double positive = 0;
    double negative = 0;

    for (int i = 0; i < 11; i++)
    {
        if (array[i] > 0)
        {
           positive += array[i];
        }
        else
        {
           negative += array[i];
        }
    }
    return 0;
}
