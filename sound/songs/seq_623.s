@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_623_grp, bank_026
	.equ	seq_623_pri, 127
	.equ	seq_623_rev, 0
	.equ	seq_623_mvl, 127
	.equ	seq_623_key, 0

	.section .rodata
	.global	seq_623
	.align	2

@*********************** Track 01 ***********************@

seq_623_0:
	.byte	KEYSH , seq_623_key+0
	.byte	TEMPO , 190/2
	.byte		VOICE , 7
	.byte		VOL   , 120*seq_623_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BENDR , 24
	.byte		LFOS  , 40
	.byte		MODT  , mod_tre
	.byte	W01
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		N02   , Cn2 , v120
	.byte	W03
	.byte		N03   , Fn2 , v080
	.byte	W02
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		N02   , As2 , v100
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		N03   , Ds3 , v080
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N02   , Gs3 , v100
	.byte	W03
	.byte		N03   , Cs4 , v080
	.byte	W01
	.byte		MOD   , 60
	.byte	W01
	.byte		VOICE , 10
	.byte	W01
	.byte		N12   , Cn3 , v120
	.byte	W12
	.byte		        Cn3 , v040
	.byte	W12
	.byte		        Cn3 , v020
	.byte	W12
	.byte	FINE

@******************************************************@

	.align	2

seq_623:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_623_pri	@ Priority
	.byte	seq_623_rev	@ Reverb

	.word	seq_623_grp

	.word	seq_623_0

	.end