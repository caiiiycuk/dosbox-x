
SIO_MIDISPEED	equ 128		; 31250bps�ߎ��l

SENDBUF_SIZE	equ 2048
RECEIVEBUF_SIZE	equ 6144
FLOW_STOP_SIZE	equ 4096	; ���M��~��v������ՊE�_

SYSTEM_PORTB	equ 33h		; ~CI ~CS ~CD x x x x x �̓ǂݍ��ݐ����
SIO_SYS_CD	equ	00100000b
SIO_SYS_CS	equ	01000000b
SIO_SYS_CI	equ	10000000b

SYSTEM_PORTC	equ 35h		; SIO���荞�݃t���O������8255�� Port C
SYSTEM_CTRL	equ 37h		; �V�AControl Port
SIO_RXRE	equ	0	; ��M���荞��
SIO_RXRE_BIT	equ	001b
SIO_TXEE	equ	1	; ���M�G���v�e�B���荞��
SIO_TXEE_BIT	equ	010b
SIO_TXRE	equ	2	; ���M���荞��
SIO_TXRE_BIT	equ	100b
SIO_INTMASKS	equ	111b

SIO_MODE	equ 32h	; USART�̃��[�h���W�X�^(write)

SIO_CMD		equ 32h	; USART�̃R�}���h���W�X�^(write)
SIO_CMD_TXEN	equ	00000001b	; 8251���M����
SIO_CMD_ER	equ	00000010b	; DTR
SIO_CMD_RXEN	equ	00000100b	; 8251��M����
SIO_CMD_BREAK	equ	00001000b	; �u���[�N
SIO_CMD_ERST	equ	00010000b	; error reset
SIO_CMD_RS	equ	00100000b	; RTS
SIO_CMD_RESET	equ	01000000b	; ���[�h�w��Ɉڍs

SIO_STAT equ	32h	; USART�̃X�e�[�^�X���W�X�^(read)
SIO_STAT_TXRDY	equ	00000001b
SIO_STAT_RXRDY	equ	00000010b
SIO_STAT_TERR	equ	00000100b	; ?
SIO_STAT_PERR	equ	00001000b	; parity error
SIO_STAT_OERR	equ	00010000b	; over run error
SIO_STAT_FERR	equ	00100000b	; framing error
SIO_STAT_CS	equ	01000000b
SIO_STAT_DR	equ	10000000b

SIO_DATA	equ 30h	; USART�̃f�[�^���W�X�^

TIMER2_MODE	equ 77h	; �{�[���[�g�𐧌䂷��^�C�}#2�̃��[�h���W�X�^
TIMER2_DATA	equ 75h	; �V�A�f�[�^���W�X�^


SIO_INTVECT	equ 0ch	; SIO���荞�݃x�N�^

XON	=	'Q'-'@'
XOFF	=	'S'-'@'

ifndef DATADEF

	.DATA?

	EXTRN sio_receive_buf:BYTE
	EXTRN sio_send_buf:BYTE
	EXTRN sio_cmdbackup:WORD

	EXTRN sio_rec_stop:WORD
	EXTRN sio_send_stop:WORD

	EXTRN sio_flow_type:WORD
		SIO_FLOW_NO	equ 0
		SIO_FLOW_HARD	equ 1
		SIO_FLOW_SOFT	equ 2

	EXTRN sio_SendLen:WORD
	EXTRN sio_send_wp:WORD
	EXTRN sio_send_rp:WORD

	EXTRN sio_ReceiveLen:WORD
	EXTRN sio_receive_wp:WORD
	EXTRN sio_receive_rp:WORD

endif