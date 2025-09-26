#include "SetBit.h"

int ToggleBit(int num, int bitPos)
{
    return num ^ (1 << bitPos);
}
int ClearBit(int num, int bitPos)
{
    return num & ~(1 << bitPos);
}
int SetBit(int num, int bitPos)
{
    return num | (1 << bitPos);
}
