#include <stdio.h>
#include "SetBit.h"

int main()
{
    printf("\n==============================\n");
    int num, bitPos;
    printf("Enter An Integer : ");
    scanf("%d", &num);
    printf("Enter The Bit Position (0-based) : ");
    scanf("%d", &bitPos);
    int Toggled = ToggleBit(num, bitPos);
    int Cleared = ClearBit(num, bitPos);
    int Set     = SetBit(num, bitPos);
    printf("\nAfter Toggling Bit %d : %d\n", bitPos, Toggled);
    printf("After Clearing Bit %d : %d\n", bitPos, Cleared);
    printf("After Setting Bit %d : %d\n", bitPos, Set);
    printf("\n==============================\n");
    return 0;
}
