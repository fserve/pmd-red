@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_790_grp, bank_026
	.equ	seq_790_pri, 127
	.equ	seq_790_rev, 0
	.equ	seq_790_mvl, 127
	.equ	seq_790_key, 0

	.section .rodata
	.global	seq_790
	.align	2

@*********************** Track 01 ***********************@

seq_790_0:
	.byte	KEYSH , seq_790_key+0
	.byte	TEMPO , 180/2
	.byte		VOICE , 1
	.byte	W01
	.byte		VOL   , 120*seq_790_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BENDR , 13
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+9
	.byte		N04   , En4 , v120
	.byte	W05
	.byte		BEND  , c_v-2
	.byte		N04   , Fn3 , v088
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+11
	.byte	W02
	.byte		N05   , En4 
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte		N24   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 118*seq_790_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 116*seq_790_mvl/mxv
	.byte	W01
	.byte		        114*seq_790_mvl/mxv
	.byte	W01
	.byte		        111*seq_790_mvl/mxv
	.byte	W01
	.byte		        108*seq_790_mvl/mxv
	.byte	W01
	.byte		        104*seq_790_mvl/mxv
	.byte	W01
	.byte		        99*seq_790_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 94*seq_790_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 88*seq_790_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 82*seq_790_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 75*seq_790_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 67*seq_790_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 59*seq_790_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 50*seq_790_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 41*seq_790_mvl/mxv
	.byte	W01
	.byte		        31*seq_790_mvl/mxv
	.byte	W01
	.byte		        20*seq_790_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 0*seq_790_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-48
	.byte	FINE

@******************************************************@

	.align	2

seq_790:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_790_pri	@ Priority
	.byte	seq_790_rev	@ Reverb

	.word	seq_790_grp

	.word	seq_790_0

	.end
