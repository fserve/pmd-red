@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_764_grp, bank_026
	.equ	seq_764_pri, 127
	.equ	seq_764_rev, 0
	.equ	seq_764_mvl, 127
	.equ	seq_764_key, 0

	.section .rodata
	.global	seq_764
	.align	2

@*********************** Track 01 ***********************@

seq_764_0:
	.byte	KEYSH , seq_764_key+0
	.byte	TEMPO , 200/2
	.byte		VOICE , 46
	.byte		VOL   , 127*seq_764_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 50
	.byte	W01
	.byte		N05   , Ds3 , v112
	.byte	W06
	.byte		        Cs3 , v120
	.byte	W07
	.byte		VOICE , 38
	.byte		N06   , Gs2 , v092
	.byte	W36
	.byte	W01
	.byte		VOL   , 123*seq_764_mvl/mxv
	.byte	W01
	.byte		        87*seq_764_mvl/mxv
	.byte	W01
	.byte		        73*seq_764_mvl/mxv
	.byte	W01
	.byte		        61*seq_764_mvl/mxv
	.byte	W01
	.byte		        52*seq_764_mvl/mxv
	.byte	W01
	.byte		        44*seq_764_mvl/mxv
	.byte	W01
	.byte		        29*seq_764_mvl/mxv
	.byte	W01
	.byte		        23*seq_764_mvl/mxv
	.byte	W01
	.byte		        17*seq_764_mvl/mxv
	.byte	W01
	.byte		        11*seq_764_mvl/mxv
	.byte	W01
	.byte		        6*seq_764_mvl/mxv
	.byte	W01
	.byte		        0*seq_764_mvl/mxv
	.byte	FINE

@******************************************************@

	.align	2

seq_764:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_764_pri	@ Priority
	.byte	seq_764_rev	@ Reverb

	.word	seq_764_grp

	.word	seq_764_0

	.end