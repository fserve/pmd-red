@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_211_grp, bank_025
	.equ	seq_211_pri, 50
	.equ	seq_211_rev, 178
	.equ	seq_211_mvl, 127
	.equ	seq_211_key, 0

	.section .rodata
	.global	seq_211
	.align	2

@*********************** Track 01 ***********************@

seq_211_0:
	.byte	KEYSH , seq_211_key+0
	.byte	TEMPO , 120/2
	.byte		VOICE , 7
	.byte		MOD   , 50
	.byte		VOL   , 94*seq_211_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		MODT  , mod_pan
	.byte	W11
	.byte		N03   , Gs2 , v120
	.byte	W06
	.byte		        Dn3 , v100
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W03
	.byte	FINE

@*********************** Track 02 ***********************@

seq_211_1:
	.byte	KEYSH , seq_211_key+0
	.byte	W06
	.byte		VOICE , 42
	.byte		MOD   , 40
	.byte		VOL   , 120*seq_211_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		MODT  , mod_pan
	.byte	W05
	.byte		N02   , Fn1 , v127
	.byte	W03
	.byte		        Fn1 , v060
	.byte	W03
	.byte		        Bn1 , v127
	.byte	W03
	.byte		        Bn1 , v060
	.byte	W03
	.byte		        Fn2 , v127
	.byte	W03
	.byte		        Fn2 , v060
	.byte	W03
	.byte		        As2 , v127
	.byte	W03
	.byte		        As2 , v060
	.byte	W03
	.byte		        Bn2 , v127
	.byte	W03
	.byte		        Bn2 , v060
	.byte	W03
	.byte		        Dn3 , v127
	.byte	W03
	.byte		        Dn3 , v060
	.byte	W02
	.byte	FINE

@*********************** Track 03 ***********************@

seq_211_2:
	.byte	KEYSH , seq_211_key+0
	.byte	W06
	.byte		VOICE , 47
	.byte		MOD   , 75
	.byte		VOL   , 94*seq_211_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		MODT  , mod_pan
	.byte	W05
	.byte		N02   , Gs2 , v092
	.byte	W03
	.byte		        Gs2 , v060
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W03
	.byte		        Dn3 , v060
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		        Gs3 , v060
	.byte	W03
	.byte		        Cs4 , v092
	.byte	W03
	.byte		        Cs4 , v060
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Dn4 , v060
	.byte	W03
	.byte		        Fn4 , v092
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W02
	.byte	FINE

@*********************** Track 04 ***********************@

seq_211_3:
	.byte	KEYSH , seq_211_key+0
	.byte	W06
	.byte		VOICE , 47
	.byte		MOD   , 50
	.byte		VOL   , 63*seq_211_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		MODT  , mod_pan
	.byte	W05
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	FINE

@******************************************************@

	.align	2

seq_211:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_211_pri	@ Priority
	.byte	seq_211_rev	@ Reverb

	.word	seq_211_grp

	.word	seq_211_0
	.word	seq_211_1
	.word	seq_211_2
	.word	seq_211_3

	.end