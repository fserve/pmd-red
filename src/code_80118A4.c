#include "global.h"

void sub_8011924(void);

extern void sub_800BDFC(u16 r0);
extern void sub_800BE8C(u16 r0, u16 r1);
extern void sub_800BF48(u16 r0);
extern void sub_800BF80(void);
extern void sub_800BFD0(u16 r0);
extern void sub_800C3F8(u16 r0, u16 r1);
extern void sub_801199C(u16 r0);
extern u16 sub_800C068();
extern void sub_800C074(u16 r0, u16 r1);
extern void sub_800C298(u16 r0);
extern u8 sub_800C5D0(u16 r0);

struct UnkStructType
{
    /* 0x0 */ s16 unk0;

};

extern u16 gUnknown_80D4144[];
extern struct UnkStructType gUnknown_202DE20;

void sub_80118A4(void)
{
    sub_8011924();
    sub_801199C(0x3e6);
    sub_801199C(0x3e5);
}

void sub_80118C4(u16 r0)
{
    sub_800BFD0(r0);
    sub_800C3F8(0x3e6, r0);
    sub_800C3F8(0x3e5, r0);
}

void sub_80118F0(u16 r0)
{
    sub_800BDFC(r0);
}

void sub_8011900(u16 r0, u16 r1)
{
    sub_800BE8C(r0, r1);
}

void sub_8011914(u16 r0)
{
    sub_800BF48(r0);
}

void sub_8011924()
{
    sub_800BF80();
}

void sub_8011930(u16 r0)
{
    sub_800BFD0(r0);
}

// TODO fix this nonmatching
#ifndef NONMATCHING
NAKED
#endif
u32 sub_8011940(u16 r0)
{
#ifdef NONMATCHING
    u32 temp;
    temp = sub_800C068();

    if(r0 == 0x3e7)
    {
        temp ^= r0;
        // TODO this OR/NEG apparently is close
        temp |= -temp;
        return temp >> 31;
    }

    if(temp != r0)
        return 0;
    else
        return 1;
#else
	asm_unified("\tpush {r4,lr}\n"
	"\tlsls r0, 16\n"
	"\tlsrs r4, r0, 16\n"
	"\tbl sub_800C068\n"
	"\tlsls r0, 16\n"
	"\tlsrs r1, r0, 16\n"
	"\tldr r0, _08011960\n"
	"\tcmp r4, r0\n"
	"\tbne _08011964\n"
	"\teors r1, r4\n"
	"\tnegs r0, r1\n"
	"\torrs r0, r1\n"
	"\tlsrs r0, 31\n"
	"\tb _0801196C\n"
        "\t.align 2,0\n"
        "_08011960: .4byte 0x000003e7\n"
        "_08011964:\n"
        "\tmovs r0, 0\n"
        "\tcmp r1, r4\n"
        "\tbne _0801196C\n"
        "\tmovs r0, 0x1\n"
        "_0801196C:\n"
        "\tpop {r4}\n"
        "\tpop {r1}\n"
        "\tbx r1");
#endif
}

void sub_8011974(u16 r0, u16 r1)
{
    sub_800C074(r0, r1);
}

void sub_8011988(u16 r0)
{
    sub_800C074(r0, 0x80 << 1);
}

void sub_801199C(u16 r0)
{
    sub_800C298(r0);
}

void sub_80119AC(u16 r0, u16 r1)
{
    sub_800C3F8(r0, r1);
}

u8 sub_80119C0(u16 r0)
{
    return sub_800C5D0(r0);
}

// TODO pretty close except r4's where should be r2's
//void sub_80119D4(u32 r0)
//{
//    if(gUnknown_202DE20.unk0 > 0)
//        return;
//    sub_800C074(gUnknown_80D4144[r0], 0x80 << 1);
//    gUnknown_80D4144[r0] = 0x4;
//}
