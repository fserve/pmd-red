@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_503_grp, bank_026
	.equ	seq_503_pri, 127
	.equ	seq_503_rev, 158
	.equ	seq_503_mvl, 127
	.equ	seq_503_key, 0

	.section .rodata
	.global	seq_503
	.align	2

@*********************** Track 01 ***********************@

seq_503_0:
	.byte	KEYSH , seq_503_key+0
	.byte	TEMPO , 160/2
	.byte		VOICE , 32
	.byte	W01
	.byte		VOL   , 118*seq_503_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		LFOS  , 0
	.byte	W01
	.byte		MODT  , mod_vib
	.byte	W01
	.byte		BENDR , 12
	.byte		N08   , Bn3 , v116
	.byte	W01
	.byte		        Fs3 , v088
	.byte	W02
	.byte		N06   , Fs4 , v116
	.byte	W04
	.byte		N07   , Cs4 
	.byte	W07
	.byte		        An3 , v127
	.byte	W02
	.byte		N08   , En3 , v120
	.byte	W02
	.byte		N05   , Gs4 , v127
	.byte	W03
	.byte		N08   , Ds4 
	.byte	W07
	.byte		        As3 
	.byte	W02
	.byte		N07   , Fn3 , v120
	.byte	W03
	.byte		N10   , Fs4 , v127
	.byte	W04
	.byte		N06   , Cs4 
	.byte	W07
	.byte		N08   , As3 , v116
	.byte	W02
	.byte		        Gn3 
	.byte	W03
	.byte		        Cn4 , v127
	.byte	W01
	.byte		N07   , As4 , v104
	.byte	W02
	.byte		N10   , Fn4 , v096
	.byte	W08
	.byte		N09   , En3 , v127
	.byte	W02
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W02
	.byte		N07   , Dn3 , v104
	.byte	W01
	.byte		N10   , Gn4 , v096
	.byte	W04
	.byte		N08   , An3 , v116
	.byte	W07
	.byte		N06   , Cs4 , v096
	.byte	W07
	.byte	FINE

@******************************************************@

	.align	2

seq_503:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_503_pri	@ Priority
	.byte	seq_503_rev	@ Reverb

	.word	seq_503_grp

	.word	seq_503_0

	.end
