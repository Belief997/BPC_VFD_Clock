# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2








# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\xc.h" 1 3
# 18 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\features.h" 1 3
# 10 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 3
# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 22 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 127 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 21 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);





long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);
# 52 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 3
          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);
# 65 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 3
void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));





__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 104 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdlib.h" 3
size_t __ctype_get_mb_cur_max(void);
# 4 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\xc8debug.h" 2 3








#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\xc.h" 2 3




# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 1 3




# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\htc.h" 1 3



# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\xc.h" 1 3
# 4 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\htc.h" 2 3
# 5 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 2 3








# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 1 3
# 1754 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 3
# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 1 3
# 44 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\__at.h" 1 3
# 44 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 2 3








extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 72 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 92 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 171 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 195 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 215 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 239 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 259 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned BSR0 :1;
        unsigned BSR1 :1;
        unsigned BSR2 :1;
        unsigned BSR3 :1;
        unsigned BSR4 :1;
    };
    struct {
        unsigned BSR :5;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 311 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 331 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 351 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned IOCIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 429 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned PORTA :8;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 499 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned PORTB :8;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 569 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned PORTC :8;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 639 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x010)));

__asm("PORTE equ 010h");


typedef union {
    struct {
        unsigned :3;
        unsigned RE3 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x010)));
# 660 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x011)));

__asm("PIR1 equ 011h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSP1IF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x011)));
# 722 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x012)));

__asm("PIR2 equ 012h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned C3IF :1;
        unsigned C4IF :1;
        unsigned BCL1IF :1;
        unsigned EEIF :1;
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x012)));
# 784 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x013)));

__asm("PIR3 equ 013h");


typedef union {
    struct {
        unsigned :4;
        unsigned CCP3IF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x013)));
# 805 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x014)));

__asm("PIR4 equ 014h");


typedef union {
    struct {
        unsigned PSMC1SIF :1;
        unsigned PSMC2SIF :1;
        unsigned PSMC3SIF :1;
        unsigned :1;
        unsigned PSMC1TIF :1;
        unsigned PSMC2TIF :1;
        unsigned PSMC3TIF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x014)));
# 856 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x015)));

__asm("TMR0 equ 015h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x015)));
# 876 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x016)));

__asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __attribute__((address(0x016)));

__asm("TMR1L equ 016h");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x016)));
# 903 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x017)));

__asm("TMR1H equ 017h");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x017)));
# 923 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x018)));

__asm("T1CON equ 018h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x018)));
# 995 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x019)));

__asm("T1GCON equ 019h");


typedef union {
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS :2;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x019)));
# 1065 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x01A)));

__asm("TMR2 equ 01Ah");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x01A)));
# 1085 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x01B)));

__asm("PR2 equ 01Bh");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x01B)));
# 1105 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x01C)));

__asm("T2CON equ 01Ch");


typedef union {
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned TMR2ON :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
    struct {
        unsigned T2CKPS :2;
        unsigned :1;
        unsigned T2OUTPS :4;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x01C)));
# 1176 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x08C)));

__asm("TRISA equ 08Ch");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned TRISA :8;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x08C)));
# 1246 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x08D)));

__asm("TRISB equ 08Dh");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned TRISB :8;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x08D)));
# 1316 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x08E)));

__asm("TRISC equ 08Eh");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned TRISC :8;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x08E)));
# 1386 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x090)));

__asm("TRISE equ 090h");


typedef union {
    struct {
        unsigned :3;
        unsigned TRISE3 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x090)));
# 1407 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x091)));

__asm("PIE1 equ 091h");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSP1IE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x091)));
# 1469 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x092)));

__asm("PIE2 equ 092h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned C3IE :1;
        unsigned C4IE :1;
        unsigned BCL1IE :1;
        unsigned EEIE :1;
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned OSFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x092)));
# 1531 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x093)));

__asm("PIE3 equ 093h");


typedef union {
    struct {
        unsigned :4;
        unsigned CCP3IE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x093)));
# 1552 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x094)));

__asm("PIE4 equ 094h");


typedef union {
    struct {
        unsigned PSMC1SIE :1;
        unsigned PSMC2SIE :1;
        unsigned PSMC3SIE :1;
        unsigned :1;
        unsigned PSMC1TIE :1;
        unsigned PSMC2TIE :1;
        unsigned PSMC3TIE :1;
    };
    struct {
        unsigned :6;
        unsigned PMSC3TIE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x094)));
# 1612 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x095)));

__asm("OPTION_REG equ 095h");


typedef union {
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned PSA :1;
        unsigned TMR0SE :1;
        unsigned TMR0CS :1;
        unsigned INTEDG :1;
        unsigned nWPUEN :1;
    };
    struct {
        unsigned PS :3;
        unsigned :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x095)));
# 1695 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PCON __attribute__((address(0x096)));

__asm("PCON equ 096h");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x096)));
# 1752 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0x097)));

__asm("WDTCON equ 097h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS :5;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0x097)));
# 1811 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x098)));

__asm("OSCTUNE equ 098h");


typedef union {
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
    struct {
        unsigned TUN :6;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x098)));
# 1869 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x099)));

__asm("OSCCON equ 099h");


typedef union {
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
        unsigned IRCF3 :1;
        unsigned SPLLEN :1;
    };
    struct {
        unsigned SCS :2;
        unsigned :1;
        unsigned IRCF :4;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x099)));
# 1941 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x09A)));

__asm("OSCSTAT equ 09Ah");


typedef union {
    struct {
        unsigned HFIOFS :1;
        unsigned LFIOFR :1;
        unsigned MFIOFR :1;
        unsigned HFIOFL :1;
        unsigned HFIOFR :1;
        unsigned OSTS :1;
        unsigned PLLR :1;
        unsigned T1OSCR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x09A)));
# 2003 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x09B)));

__asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __attribute__((address(0x09B)));

__asm("ADRESL equ 09Bh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09B)));
# 2030 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x09C)));

__asm("ADRESH equ 09Ch");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x09C)));
# 2050 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x09D)));

__asm("ADCON0 equ 09Dh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
        unsigned ADRMD :1;
    };
    struct {
        unsigned :1;
        unsigned ADGO :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x09D)));
# 2145 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x09E)));

__asm("ADCON1 equ 09Eh");


typedef union {
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
        unsigned ADNREF :1;
        unsigned :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADPREF :2;
        unsigned :2;
        unsigned ADCS :3;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09E)));
# 2217 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x09F)));

__asm("ADCON2 equ 09Fh");


typedef union {
    struct {
        unsigned CHSN0 :1;
        unsigned CHSN1 :1;
        unsigned CHSN2 :1;
        unsigned CHSN3 :1;
        unsigned TRIGSEL0 :1;
        unsigned TRIGSEL1 :1;
        unsigned TRIGSEL2 :1;
        unsigned TRIGSEL3 :1;
    };
    struct {
        unsigned CHSN :4;
        unsigned TRIGSEL :4;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x09F)));
# 2293 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char LATA __attribute__((address(0x10C)));

__asm("LATA equ 010Ch");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
    struct {
        unsigned LATA :8;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x10C)));
# 2363 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char LATB __attribute__((address(0x10D)));

__asm("LATB equ 010Dh");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LATB :8;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x10D)));
# 2433 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char LATC __attribute__((address(0x10E)));

__asm("LATC equ 010Eh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LATC :8;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x10E)));
# 2503 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x111)));

__asm("CM1CON0 equ 0111h");


typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned C1ZLF :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x111)));
# 2565 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x112)));

__asm("CM1CON1 equ 0112h");


typedef union {
    struct {
        unsigned C1NCH :3;
        unsigned C1PCH :3;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1PCH2 :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x112)));
# 2641 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x113)));

__asm("CM2CON0 equ 0113h");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned C2ZLF :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x113)));
# 2703 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x114)));

__asm("CM2CON1 equ 0114h");


typedef union {
    struct {
        unsigned C2NCH :3;
        unsigned C2PCH :3;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2PCH2 :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x114)));
# 2779 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x115)));

__asm("CMOUT equ 0115h");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
        unsigned MC3OUT :1;
        unsigned MC4OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x115)));
# 2817 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x116)));

__asm("BORCON equ 0116h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :5;
        unsigned BORFS :1;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x116)));
# 2850 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x117)));

__asm("FVRCON equ 0117h");


typedef union {
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x117)));
# 2926 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char DACCON0 __attribute__((address(0x118)));

__asm("DACCON0 equ 0118h");


typedef union {
    struct {
        unsigned DACNSS :1;
        unsigned :1;
        unsigned DACPSS0 :1;
        unsigned DACPSS1 :1;
        unsigned DACOE2 :1;
        unsigned DACOE1 :1;
        unsigned :1;
        unsigned DACEN :1;
    };
    struct {
        unsigned :2;
        unsigned DACPSS :2;
    };
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __attribute__((address(0x118)));
# 2987 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char DACCON1 __attribute__((address(0x119)));

__asm("DACCON1 equ 0119h");


typedef union {
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
        unsigned DACR5 :1;
        unsigned DACR6 :1;
        unsigned DACR7 :1;
    };
    struct {
        unsigned DACR :8;
    };
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __attribute__((address(0x119)));
# 3057 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM4CON0 __attribute__((address(0x11A)));

__asm("CM4CON0 equ 011Ah");


typedef union {
    struct {
        unsigned C4SYNC :1;
        unsigned C4HYS :1;
        unsigned C4SP :1;
        unsigned C4ZLF :1;
        unsigned C4POL :1;
        unsigned C4OE :1;
        unsigned C4OUT :1;
        unsigned C4ON :1;
    };
} CM4CON0bits_t;
extern volatile CM4CON0bits_t CM4CON0bits __attribute__((address(0x11A)));
# 3119 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM4CON1 __attribute__((address(0x11B)));

__asm("CM4CON1 equ 011Bh");


typedef union {
    struct {
        unsigned C4NCH :3;
        unsigned C4PCH :3;
        unsigned C4INTN :1;
        unsigned C4INTP :1;
    };
    struct {
        unsigned C4NCH0 :1;
        unsigned C4NCH1 :1;
        unsigned C4NCH2 :1;
        unsigned C4PCH0 :1;
        unsigned C4PCH1 :1;
        unsigned C4PCH2 :1;
    };
} CM4CON1bits_t;
extern volatile CM4CON1bits_t CM4CON1bits __attribute__((address(0x11B)));
# 3195 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char APFCON2 __attribute__((address(0x11C)));

__asm("APFCON2 equ 011Ch");


typedef union {
    struct {
        unsigned CCP3SEL :1;
    };
} APFCON2bits_t;
extern volatile APFCON2bits_t APFCON2bits __attribute__((address(0x11C)));
# 3215 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char APFCON1 __attribute__((address(0x11D)));

__asm("APFCON1 equ 011Dh");


extern volatile unsigned char APFCON0 __attribute__((address(0x11D)));

__asm("APFCON0 equ 011Dh");

extern volatile unsigned char APFCON __attribute__((address(0x11D)));

__asm("APFCON equ 011Dh");


typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned RXSEL :1;
        unsigned TXSEL :1;
        unsigned SDISEL :1;
        unsigned SCKSEL :1;
        unsigned SDOSEL :1;
        unsigned CCP1SEL :1;
        unsigned C2OUTSEL :1;
    };
} APFCON1bits_t;
extern volatile APFCON1bits_t APFCON1bits __attribute__((address(0x11D)));
# 3284 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned RXSEL :1;
        unsigned TXSEL :1;
        unsigned SDISEL :1;
        unsigned SCKSEL :1;
        unsigned SDOSEL :1;
        unsigned CCP1SEL :1;
        unsigned C2OUTSEL :1;
    };
} APFCON0bits_t;
extern volatile APFCON0bits_t APFCON0bits __attribute__((address(0x11D)));
# 3338 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned RXSEL :1;
        unsigned TXSEL :1;
        unsigned SDISEL :1;
        unsigned SCKSEL :1;
        unsigned SDOSEL :1;
        unsigned CCP1SEL :1;
        unsigned C2OUTSEL :1;
    };
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __attribute__((address(0x11D)));
# 3395 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM3CON0 __attribute__((address(0x11E)));

__asm("CM3CON0 equ 011Eh");


typedef union {
    struct {
        unsigned C3SYNC :1;
        unsigned C3HYS :1;
        unsigned C3SP :1;
        unsigned C3ZLF :1;
        unsigned C3POL :1;
        unsigned C3OE :1;
        unsigned C3OUT :1;
        unsigned C3ON :1;
    };
} CM3CON0bits_t;
extern volatile CM3CON0bits_t CM3CON0bits __attribute__((address(0x11E)));
# 3457 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CM3CON1 __attribute__((address(0x11F)));

__asm("CM3CON1 equ 011Fh");


typedef union {
    struct {
        unsigned C3NCH :3;
        unsigned C3PCH :3;
        unsigned C3INTN :1;
        unsigned C3INTP :1;
    };
    struct {
        unsigned C3NCH0 :1;
        unsigned C3NCH1 :1;
        unsigned C3NCH2 :1;
        unsigned C3PCH0 :1;
        unsigned C3PCH1 :1;
        unsigned C3PCH2 :1;
    };
} CM3CON1bits_t;
extern volatile CM3CON1bits_t CM3CON1bits __attribute__((address(0x11F)));
# 3533 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x18C)));

__asm("ANSELA equ 018Ch");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
        unsigned :1;
        unsigned ANSA7 :1;
    };
    struct {
        unsigned ANSELA :8;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x18C)));
# 3598 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x18D)));

__asm("ANSELB equ 018Dh");


typedef union {
    struct {
        unsigned ANSB0 :1;
        unsigned ANSB1 :1;
        unsigned ANSB2 :1;
        unsigned ANSB3 :1;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
    };
    struct {
        unsigned ANSELB :6;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x18D)));
# 3662 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short EEADR __attribute__((address(0x191)));

__asm("EEADR equ 0191h");




extern volatile unsigned char EEADRL __attribute__((address(0x191)));

__asm("EEADRL equ 0191h");


typedef union {
    struct {
        unsigned EEADRL :8;
    };
} EEADRLbits_t;
extern volatile EEADRLbits_t EEADRLbits __attribute__((address(0x191)));
# 3689 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char EEADRH __attribute__((address(0x192)));

__asm("EEADRH equ 0192h");


typedef union {
    struct {
        unsigned EEADRH :7;
    };
} EEADRHbits_t;
extern volatile EEADRHbits_t EEADRHbits __attribute__((address(0x192)));
# 3709 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short EEDAT __attribute__((address(0x193)));

__asm("EEDAT equ 0193h");




extern volatile unsigned char EEDATL __attribute__((address(0x193)));

__asm("EEDATL equ 0193h");


extern volatile unsigned char EEDATA __attribute__((address(0x193)));

__asm("EEDATA equ 0193h");


typedef union {
    struct {
        unsigned EEDATL :8;
    };
} EEDATLbits_t;
extern volatile EEDATLbits_t EEDATLbits __attribute__((address(0x193)));







typedef union {
    struct {
        unsigned EEDATL :8;
    };
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __attribute__((address(0x193)));
# 3754 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char EEDATH __attribute__((address(0x194)));

__asm("EEDATH equ 0194h");


typedef union {
    struct {
        unsigned EEDATH :6;
    };
} EEDATHbits_t;
extern volatile EEDATHbits_t EEDATHbits __attribute__((address(0x194)));
# 3774 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0x195)));

__asm("EECON1 equ 0195h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x195)));
# 3836 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x196)));

__asm("EECON2 equ 0196h");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0x196)));
# 3856 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x197)));

__asm("VREGCON equ 0197h");


typedef union {
    struct {
        unsigned :1;
        unsigned VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x197)));
# 3877 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char RC1REG __attribute__((address(0x199)));

__asm("RC1REG equ 0199h");


extern volatile unsigned char RCREG __attribute__((address(0x199)));

__asm("RCREG equ 0199h");

extern volatile unsigned char RCREG1 __attribute__((address(0x199)));

__asm("RCREG1 equ 0199h");


typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x199)));







typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x199)));






typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x199)));
# 3931 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TX1REG __attribute__((address(0x19A)));

__asm("TX1REG equ 019Ah");


extern volatile unsigned char TXREG1 __attribute__((address(0x19A)));

__asm("TXREG1 equ 019Ah");

extern volatile unsigned char TXREG __attribute__((address(0x19A)));

__asm("TXREG equ 019Ah");


typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x19A)));







typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x19A)));






typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x19A)));
# 3985 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short SP1BRG __attribute__((address(0x19B)));

__asm("SP1BRG equ 019Bh");




extern volatile unsigned char SP1BRGL __attribute__((address(0x19B)));

__asm("SP1BRGL equ 019Bh");


extern volatile unsigned char SPBRG __attribute__((address(0x19B)));

__asm("SPBRG equ 019Bh");

extern volatile unsigned char SPBRG1 __attribute__((address(0x19B)));

__asm("SPBRG1 equ 019Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x19B)));

__asm("SPBRGL equ 019Bh");


typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x19B)));







typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0x19B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x19B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x19B)));
# 4062 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SP1BRGH __attribute__((address(0x19C)));

__asm("SP1BRGH equ 019Ch");


extern volatile unsigned char SPBRGH __attribute__((address(0x19C)));

__asm("SPBRGH equ 019Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x19C)));

__asm("SPBRGH1 equ 019Ch");


typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x19C)));







typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x19C)));






typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x19C)));
# 4116 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char RC1STA __attribute__((address(0x19D)));

__asm("RC1STA equ 019Dh");


extern volatile unsigned char RCSTA1 __attribute__((address(0x19D)));

__asm("RCSTA1 equ 019Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x19D)));

__asm("RCSTA equ 019Dh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x19D)));
# 4185 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x19D)));
# 4239 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x19D)));
# 4296 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TX1STA __attribute__((address(0x19E)));

__asm("TX1STA equ 019Eh");


extern volatile unsigned char TXSTA1 __attribute__((address(0x19E)));

__asm("TXSTA1 equ 019Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x19E)));

__asm("TXSTA equ 019Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x19E)));
# 4365 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x19E)));
# 4419 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x19E)));
# 4476 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char BAUD1CON __attribute__((address(0x19F)));

__asm("BAUD1CON equ 019Fh");


extern volatile unsigned char BAUDCON1 __attribute__((address(0x19F)));

__asm("BAUDCON1 equ 019Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x19F)));

__asm("BAUDCTL1 equ 019Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x19F)));

__asm("BAUDCON equ 019Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x19F)));

__asm("BAUDCTL equ 019Fh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x19F)));
# 4543 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x19F)));
# 4587 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x19F)));
# 4631 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x19F)));
# 4675 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x19F)));
# 4722 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x20C)));

__asm("WPUA equ 020Ch");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
        unsigned WPUA6 :1;
        unsigned WPUA7 :1;
    };
    struct {
        unsigned WPUA :8;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x20C)));
# 4792 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x20D)));

__asm("WPUB equ 020Dh");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
    struct {
        unsigned WPUB :8;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x20D)));
# 4862 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WPUC __attribute__((address(0x20E)));

__asm("WPUC equ 020Eh");


typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
    struct {
        unsigned WPUC :8;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0x20E)));
# 4932 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WPUE __attribute__((address(0x210)));

__asm("WPUE equ 0210h");


typedef union {
    struct {
        unsigned :3;
        unsigned WPUE3 :1;
    };
} WPUEbits_t;
extern volatile WPUEbits_t WPUEbits __attribute__((address(0x210)));
# 4953 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0x211)));

__asm("SSP1BUF equ 0211h");


extern volatile unsigned char SSPBUF __attribute__((address(0x211)));

__asm("SSPBUF equ 0211h");


typedef union {
    struct {
        unsigned SSP1BUF0 :1;
        unsigned SSP1BUF1 :1;
        unsigned SSP1BUF2 :1;
        unsigned SSP1BUF3 :1;
        unsigned SSP1BUF4 :1;
        unsigned SSP1BUF5 :1;
        unsigned SSP1BUF6 :1;
        unsigned SSP1BUF7 :1;
    };
    struct {
        unsigned BUF :8;
    };
    struct {
        unsigned BUF0 :1;
        unsigned BUF1 :1;
        unsigned BUF2 :1;
        unsigned BUF3 :1;
        unsigned BUF4 :1;
        unsigned BUF5 :1;
        unsigned BUF6 :1;
        unsigned BUF7 :1;
    };
    struct {
        unsigned SSP1BUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x211)));
# 5084 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSP1BUF0 :1;
        unsigned SSP1BUF1 :1;
        unsigned SSP1BUF2 :1;
        unsigned SSP1BUF3 :1;
        unsigned SSP1BUF4 :1;
        unsigned SSP1BUF5 :1;
        unsigned SSP1BUF6 :1;
        unsigned SSP1BUF7 :1;
    };
    struct {
        unsigned BUF :8;
    };
    struct {
        unsigned BUF0 :1;
        unsigned BUF1 :1;
        unsigned BUF2 :1;
        unsigned BUF3 :1;
        unsigned BUF4 :1;
        unsigned BUF5 :1;
        unsigned BUF6 :1;
        unsigned BUF7 :1;
    };
    struct {
        unsigned SSP1BUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0x211)));
# 5207 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0x212)));

__asm("SSP1ADD equ 0212h");


extern volatile unsigned char SSPADD __attribute__((address(0x212)));

__asm("SSPADD equ 0212h");


typedef union {
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned ADD :8;
    };
    struct {
        unsigned ADD0 :1;
        unsigned ADD1 :1;
        unsigned ADD2 :1;
        unsigned ADD3 :1;
        unsigned ADD4 :1;
        unsigned ADD5 :1;
        unsigned ADD6 :1;
        unsigned ADD7 :1;
    };
    struct {
        unsigned SSP1ADD :8;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x212)));
# 5338 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned ADD :8;
    };
    struct {
        unsigned ADD0 :1;
        unsigned ADD1 :1;
        unsigned ADD2 :1;
        unsigned ADD3 :1;
        unsigned ADD4 :1;
        unsigned ADD5 :1;
        unsigned ADD6 :1;
        unsigned ADD7 :1;
    };
    struct {
        unsigned SSP1ADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x212)));
# 5461 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0x213)));

__asm("SSP1MSK equ 0213h");


extern volatile unsigned char SSPMSK __attribute__((address(0x213)));

__asm("SSPMSK equ 0213h");


typedef union {
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
    struct {
        unsigned MSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned SSP1MSK :8;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x213)));
# 5592 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
    struct {
        unsigned MSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned SSP1MSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x213)));
# 5715 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0x214)));

__asm("SSP1STAT equ 0214h");


extern volatile unsigned char SSPSTAT __attribute__((address(0x214)));

__asm("SSPSTAT equ 0214h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x214)));
# 5780 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x214)));
# 5837 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0x215)));

__asm("SSP1CON1 equ 0215h");


extern volatile unsigned char SSPCON __attribute__((address(0x215)));

__asm("SSPCON equ 0215h");

extern volatile unsigned char SSPCON1 __attribute__((address(0x215)));

__asm("SSPCON1 equ 0215h");

extern volatile unsigned char SSP1CON __attribute__((address(0x215)));

__asm("SSP1CON equ 0215h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x215)));
# 5918 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x215)));
# 5980 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0x215)));
# 6042 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSP1CONbits_t;
extern volatile SSP1CONbits_t SSP1CONbits __attribute__((address(0x215)));
# 6107 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1CON2 __attribute__((address(0x216)));

__asm("SSP1CON2 equ 0216h");


extern volatile unsigned char SSPCON2 __attribute__((address(0x216)));

__asm("SSPCON2 equ 0216h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x216)));
# 6172 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x216)));
# 6229 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0x217)));

__asm("SSP1CON3 equ 0217h");


extern volatile unsigned char SSPCON3 __attribute__((address(0x217)));

__asm("SSPCON3 equ 0217h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x217)));
# 6294 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0x217)));
# 6351 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0x28C)));

__asm("ODCONA equ 028Ch");


typedef union {
    struct {
        unsigned ODCONA0 :1;
        unsigned ODCONA1 :1;
        unsigned ODCONA2 :1;
        unsigned ODCONA3 :1;
        unsigned ODCONA4 :1;
        unsigned ODCONA5 :1;
        unsigned ODCONA6 :1;
        unsigned ODCONA7 :1;
    };
    struct {
        unsigned ODCONA :8;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0x28C)));
# 6421 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0x28D)));

__asm("ODCONB equ 028Dh");


typedef union {
    struct {
        unsigned ODCONB0 :1;
        unsigned ODCONB1 :1;
        unsigned ODCONB2 :1;
        unsigned ODCONB3 :1;
        unsigned ODCONB4 :1;
        unsigned ODCONB5 :1;
        unsigned ODCONB6 :1;
        unsigned ODCONB7 :1;
    };
    struct {
        unsigned ODCONB :8;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0x28D)));
# 6491 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0x28E)));

__asm("ODCONC equ 028Eh");


typedef union {
    struct {
        unsigned ODCONC0 :1;
        unsigned ODCONC1 :1;
        unsigned ODCONC2 :1;
        unsigned ODCONC3 :1;
        unsigned ODCONC4 :1;
        unsigned ODCONC5 :1;
        unsigned ODCONC6 :1;
        unsigned ODCONC7 :1;
    };
    struct {
        unsigned ODCONC :8;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0x28E)));
# 6561 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x291)));

__asm("CCPR1 equ 0291h");




extern volatile unsigned char CCPR1L __attribute__((address(0x291)));

__asm("CCPR1L equ 0291h");


typedef union {
    struct {
        unsigned CCPR1L :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x291)));
# 6588 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x292)));

__asm("CCPR1H equ 0292h");


typedef union {
    struct {
        unsigned CCPR1H :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x292)));
# 6608 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x293)));

__asm("CCP1CON equ 0293h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x293)));
# 6672 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x298)));

__asm("CCPR2 equ 0298h");




extern volatile unsigned char CCPR2L __attribute__((address(0x298)));

__asm("CCPR2L equ 0298h");


typedef union {
    struct {
        unsigned CCPR2L :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x298)));
# 6699 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x299)));

__asm("CCPR2H equ 0299h");


typedef union {
    struct {
        unsigned CCPR2H :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x299)));
# 6719 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x29A)));

__asm("CCP2CON equ 029Ah");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x29A)));
# 6783 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x30C)));

__asm("SLRCONA equ 030Ch");


typedef union {
    struct {
        unsigned SLRCONA0 :1;
        unsigned SLRCONA1 :1;
        unsigned SLRCONA2 :1;
        unsigned SLRCONA3 :1;
        unsigned SLRCONA4 :1;
        unsigned SLRCONA5 :1;
        unsigned SLRCONA6 :1;
        unsigned SLRCONA7 :1;
    };
    struct {
        unsigned SLRCONA :8;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x30C)));
# 6853 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0x30D)));

__asm("SLRCONB equ 030Dh");


typedef union {
    struct {
        unsigned SLRCONB0 :1;
        unsigned SLRCONB1 :1;
        unsigned SLRCONB2 :1;
        unsigned SLRCONB3 :1;
        unsigned SLRCONB4 :1;
        unsigned SLRCONB5 :1;
        unsigned SLRCONB6 :1;
        unsigned SLRCONB7 :1;
    };
    struct {
        unsigned SLRCONB :8;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0x30D)));
# 6923 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0x30E)));

__asm("SLRCONC equ 030Eh");


typedef union {
    struct {
        unsigned SLRCONC0 :1;
        unsigned SLRCONC1 :1;
        unsigned SLRCONC2 :1;
        unsigned SLRCONC3 :1;
        unsigned SLRCONC4 :1;
        unsigned SLRCONC5 :1;
        unsigned SLRCONC6 :1;
        unsigned SLRCONC7 :1;
    };
    struct {
        unsigned SLRCONC :8;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0x30E)));
# 6993 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0x311)));

__asm("CCPR3 equ 0311h");




extern volatile unsigned char CCPR3L __attribute__((address(0x311)));

__asm("CCPR3L equ 0311h");


typedef union {
    struct {
        unsigned CCPR3L :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0x311)));
# 7020 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCPR3H __attribute__((address(0x312)));

__asm("CCPR3H equ 0312h");


typedef union {
    struct {
        unsigned CCPR3H :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0x312)));
# 7040 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0x313)));

__asm("CCP3CON equ 0313h");


typedef union {
    struct {
        unsigned CCP3M :4;
        unsigned DC3B :2;
    };
    struct {
        unsigned CCP3M0 :1;
        unsigned CCP3M1 :1;
        unsigned CCP3M2 :1;
        unsigned CCP3M3 :1;
        unsigned DC3B0 :1;
        unsigned DC3B1 :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0x313)));
# 7104 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0x38C)));

__asm("INLVLA equ 038Ch");


typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
        unsigned INLVLA6 :1;
        unsigned INLVLA7 :1;
    };
    struct {
        unsigned INLVLA :8;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0x38C)));
# 7174 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0x38D)));

__asm("INLVLB equ 038Dh");


typedef union {
    struct {
        unsigned INLVLB0 :1;
        unsigned INLVLB1 :1;
        unsigned INLVLB2 :1;
        unsigned INLVLB3 :1;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
    struct {
        unsigned INLVLB :8;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0x38D)));
# 7244 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0x38E)));

__asm("INLVLC equ 038Eh");


typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
    struct {
        unsigned INLVLC :8;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0x38E)));
# 7314 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char INLVLE __attribute__((address(0x390)));

__asm("INLVLE equ 0390h");


typedef union {
    struct {
        unsigned :3;
        unsigned INLVLE3 :1;
    };
} INLVLEbits_t;
extern volatile INLVLEbits_t INLVLEbits __attribute__((address(0x390)));
# 7335 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x391)));

__asm("IOCAP equ 0391h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
        unsigned IOCAP6 :1;
        unsigned IOCAP7 :1;
    };
    struct {
        unsigned IOCAP :8;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x391)));
# 7405 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x392)));

__asm("IOCAN equ 0392h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
        unsigned IOCAN6 :1;
        unsigned IOCAN7 :1;
    };
    struct {
        unsigned IOCAN :8;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x392)));
# 7475 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x393)));

__asm("IOCAF equ 0393h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
        unsigned IOCAF6 :1;
        unsigned IOCAF7 :1;
    };
    struct {
        unsigned IOCAF :8;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x393)));
# 7545 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x394)));

__asm("IOCBP equ 0394h");


typedef union {
    struct {
        unsigned IOCBP0 :1;
        unsigned IOCBP1 :1;
        unsigned IOCBP2 :1;
        unsigned IOCBP3 :1;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
    struct {
        unsigned IOCBP :8;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x394)));
# 7615 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x395)));

__asm("IOCBN equ 0395h");


typedef union {
    struct {
        unsigned IOCBN0 :1;
        unsigned IOCBN1 :1;
        unsigned IOCBN2 :1;
        unsigned IOCBN3 :1;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
    struct {
        unsigned IOCBN :8;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x395)));
# 7685 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x396)));

__asm("IOCBF equ 0396h");


typedef union {
    struct {
        unsigned IOCBF0 :1;
        unsigned IOCBF1 :1;
        unsigned IOCBF2 :1;
        unsigned IOCBF3 :1;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
    struct {
        unsigned IOCBF :8;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x396)));
# 7755 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0x397)));

__asm("IOCCP equ 0397h");


typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
    struct {
        unsigned IOCCP :8;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0x397)));
# 7825 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0x398)));

__asm("IOCCN equ 0398h");


typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
    struct {
        unsigned IOCCN :8;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0x398)));
# 7895 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0x399)));

__asm("IOCCF equ 0399h");


typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
    struct {
        unsigned IOCCF :8;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0x399)));
# 7965 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCEP __attribute__((address(0x39D)));

__asm("IOCEP equ 039Dh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEP3 :1;
    };
} IOCEPbits_t;
extern volatile IOCEPbits_t IOCEPbits __attribute__((address(0x39D)));
# 7986 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCEN __attribute__((address(0x39E)));

__asm("IOCEN equ 039Eh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEN3 :1;
    };
} IOCENbits_t;
extern volatile IOCENbits_t IOCENbits __attribute__((address(0x39E)));
# 8007 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char IOCEF __attribute__((address(0x39F)));

__asm("IOCEF equ 039Fh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEF3 :1;
    };
} IOCEFbits_t;
extern volatile IOCEFbits_t IOCEFbits __attribute__((address(0x39F)));
# 8028 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OPA1CON __attribute__((address(0x511)));

__asm("OPA1CON equ 0511h");


typedef union {
    struct {
        unsigned OPA1PCH0 :1;
        unsigned OPA1PCH1 :1;
    };
    struct {
        unsigned OPA1PCH :3;
        unsigned :3;
        unsigned OPA1SP :1;
        unsigned OPA1EN :1;
    };
    struct {
        unsigned PCH :3;
        unsigned :3;
        unsigned SP :1;
        unsigned EN :1;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
    };
} OPA1CONbits_t;
extern volatile OPA1CONbits_t OPA1CONbits __attribute__((address(0x511)));
# 8110 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char OPA2CON __attribute__((address(0x513)));

__asm("OPA2CON equ 0513h");


typedef union {
    struct {
        unsigned OPA2PCH0 :1;
        unsigned OPA2PCH1 :1;
    };
    struct {
        unsigned OPA2PCH :3;
        unsigned :3;
        unsigned OPA2SP :1;
        unsigned OPA2EN :1;
    };
    struct {
        unsigned PCH :3;
        unsigned :3;
        unsigned SP :1;
        unsigned EN :1;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
    };
} OPA2CONbits_t;
extern volatile OPA2CONbits_t OPA2CONbits __attribute__((address(0x513)));
# 8192 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char CLKRCON __attribute__((address(0x51A)));

__asm("CLKRCON equ 051Ah");


typedef union {
    struct {
        unsigned CLKRDIV0 :1;
        unsigned CLKRDIV1 :1;
        unsigned CLKRDIV2 :1;
        unsigned CLKRDC0 :1;
        unsigned CLKRDC1 :1;
        unsigned CLKRSLR :1;
        unsigned CLKROE :1;
        unsigned CLKREN :1;
    };
    struct {
        unsigned CLKRDIV :3;
        unsigned CLKRDC :2;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x51A)));
# 8268 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1CON __attribute__((address(0x811)));

__asm("PSMC1CON equ 0811h");


typedef union {
    struct {
        unsigned P1MODE :4;
        unsigned P1DBRE :1;
        unsigned P1DBFE :1;
        unsigned PSMC1LD :1;
        unsigned PSMC1EN :1;
    };
    struct {
        unsigned P1MODE0 :1;
        unsigned P1MODE1 :1;
        unsigned P1MODE2 :1;
        unsigned P1MODE3 :1;
    };
} PSMC1CONbits_t;
extern volatile PSMC1CONbits_t PSMC1CONbits __attribute__((address(0x811)));
# 8338 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1MDL __attribute__((address(0x812)));

__asm("PSMC1MDL equ 0812h");


typedef union {
    struct {
        unsigned P1MSRC :4;
        unsigned :1;
        unsigned P1MDLBIT :1;
        unsigned P1MDLPOL :1;
        unsigned P1MDLEN :1;
    };
    struct {
        unsigned P1MSRC0 :1;
        unsigned P1MSRC1 :1;
        unsigned P1MSRC2 :1;
        unsigned P1MSRC3 :1;
    };
} PSMC1MDLbits_t;
extern volatile PSMC1MDLbits_t PSMC1MDLbits __attribute__((address(0x812)));
# 8403 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1SYNC __attribute__((address(0x813)));

__asm("PSMC1SYNC equ 0813h");


typedef union {
    struct {
        unsigned P1SYNC0 :1;
        unsigned P1SYNC1 :1;
        unsigned P1SYNC2 :1;
        unsigned :2;
        unsigned P1DCPOL :1;
        unsigned P1PRPOL :1;
        unsigned P1POFST :1;
    };
} PSMC1SYNCbits_t;
extern volatile PSMC1SYNCbits_t PSMC1SYNCbits __attribute__((address(0x813)));
# 8454 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1CLK __attribute__((address(0x814)));

__asm("PSMC1CLK equ 0814h");


typedef union {
    struct {
        unsigned P1CSRC0 :1;
        unsigned P1CSRC1 :1;
        unsigned :2;
        unsigned P1CPRE0 :1;
        unsigned P1CPRE1 :1;
    };
    struct {
        unsigned P1CSRC :2;
        unsigned :2;
        unsigned P1CPRE :2;
    };
} PSMC1CLKbits_t;
extern volatile PSMC1CLKbits_t PSMC1CLKbits __attribute__((address(0x814)));
# 8508 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1OEN __attribute__((address(0x815)));

__asm("PSMC1OEN equ 0815h");


typedef union {
    struct {
        unsigned P1OEA :1;
        unsigned P1OEB :1;
        unsigned P1OEC :1;
        unsigned P1OED :1;
        unsigned P1OEE :1;
        unsigned P1OEF :1;
    };
} PSMC1OENbits_t;
extern volatile PSMC1OENbits_t PSMC1OENbits __attribute__((address(0x815)));
# 8558 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1POL __attribute__((address(0x816)));

__asm("PSMC1POL equ 0816h");


typedef union {
    struct {
        unsigned P1POLA :1;
        unsigned P1POLB :1;
        unsigned P1POLC :1;
        unsigned P1POLD :1;
        unsigned P1POLE :1;
        unsigned P1POLF :1;
        unsigned P1INPOL :1;
    };
} PSMC1POLbits_t;
extern volatile PSMC1POLbits_t PSMC1POLbits __attribute__((address(0x816)));
# 8614 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1BLNK __attribute__((address(0x817)));

__asm("PSMC1BLNK equ 0817h");


typedef union {
    struct {
        unsigned P1REBM :2;
        unsigned :2;
        unsigned P1FEBM :2;
    };
    struct {
        unsigned P1REBM0 :1;
        unsigned P1REBM1 :1;
        unsigned :2;
        unsigned P1FEBM0 :1;
        unsigned P1FEBM1 :1;
    };
} PSMC1BLNKbits_t;
extern volatile PSMC1BLNKbits_t PSMC1BLNKbits __attribute__((address(0x817)));
# 8668 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1REBS __attribute__((address(0x818)));

__asm("PSMC1REBS equ 0818h");


typedef union {
    struct {
        unsigned :1;
        unsigned P1REBSC1 :1;
        unsigned P1REBSC2 :1;
        unsigned P1REBSC3 :1;
        unsigned P1REBSC4 :1;
        unsigned :2;
        unsigned P1REBSIN :1;
    };
} PSMC1REBSbits_t;
extern volatile PSMC1REBSbits_t PSMC1REBSbits __attribute__((address(0x818)));
# 8714 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1FEBS __attribute__((address(0x819)));

__asm("PSMC1FEBS equ 0819h");


typedef union {
    struct {
        unsigned :1;
        unsigned P1FEBSC1 :1;
        unsigned P1FEBSC2 :1;
        unsigned P1FEBSC3 :1;
        unsigned P1FEBSC4 :1;
        unsigned :2;
        unsigned P1FEBSIN :1;
    };
} PSMC1FEBSbits_t;
extern volatile PSMC1FEBSbits_t PSMC1FEBSbits __attribute__((address(0x819)));
# 8760 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1PHS __attribute__((address(0x81A)));

__asm("PSMC1PHS equ 081Ah");


typedef union {
    struct {
        unsigned P1PHST :1;
        unsigned P1PHSC1 :1;
        unsigned P1PHSC2 :1;
        unsigned P1PHSC3 :1;
        unsigned P1PHSC4 :1;
        unsigned :2;
        unsigned P1PHSIN :1;
    };
} PSMC1PHSbits_t;
extern volatile PSMC1PHSbits_t PSMC1PHSbits __attribute__((address(0x81A)));
# 8811 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1DCS __attribute__((address(0x81B)));

__asm("PSMC1DCS equ 081Bh");


typedef union {
    struct {
        unsigned P1DCST :1;
        unsigned P1DCSC1 :1;
        unsigned P1DCSC2 :1;
        unsigned P1DCSC3 :1;
        unsigned P1DCSC4 :1;
        unsigned :2;
        unsigned P1DCSIN :1;
    };
} PSMC1DCSbits_t;
extern volatile PSMC1DCSbits_t PSMC1DCSbits __attribute__((address(0x81B)));
# 8862 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1PRS __attribute__((address(0x81C)));

__asm("PSMC1PRS equ 081Ch");


typedef union {
    struct {
        unsigned P1PRST :1;
        unsigned P1PRSC1 :1;
        unsigned P1PRSC2 :1;
        unsigned P1PRSC3 :1;
        unsigned P1PRSC4 :1;
        unsigned :2;
        unsigned P1PRSIN :1;
    };
} PSMC1PRSbits_t;
extern volatile PSMC1PRSbits_t PSMC1PRSbits __attribute__((address(0x81C)));
# 8913 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1ASDC __attribute__((address(0x81D)));

__asm("PSMC1ASDC equ 081Dh");


typedef union {
    struct {
        unsigned P1ASDOV :1;
        unsigned :4;
        unsigned P1ARSEN :1;
        unsigned P1ASDEN :1;
        unsigned P1ASE :1;
    };
} PSMC1ASDCbits_t;
extern volatile PSMC1ASDCbits_t PSMC1ASDCbits __attribute__((address(0x81D)));
# 8952 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1ASDL __attribute__((address(0x81E)));

__asm("PSMC1ASDL equ 081Eh");


typedef union {
    struct {
        unsigned P1ASDLA :1;
        unsigned P1ASDLB :1;
        unsigned P1ASDLC :1;
        unsigned P1ASDLD :1;
        unsigned P1ASDLE :1;
        unsigned P1ASDLF :1;
    };
} PSMC1ASDLbits_t;
extern volatile PSMC1ASDLbits_t PSMC1ASDLbits __attribute__((address(0x81E)));
# 9002 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1ASDS __attribute__((address(0x81F)));

__asm("PSMC1ASDS equ 081Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned P1ASDSC1 :1;
        unsigned P1ASDSC2 :1;
        unsigned P1ASDSC3 :1;
        unsigned P1ASDSC4 :1;
        unsigned :2;
        unsigned P1ASDSIN :1;
    };
} PSMC1ASDSbits_t;
extern volatile PSMC1ASDSbits_t PSMC1ASDSbits __attribute__((address(0x81F)));
# 9048 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1INT __attribute__((address(0x820)));

__asm("PSMC1INT equ 0820h");


typedef union {
    struct {
        unsigned P1TPRIF :1;
        unsigned P1TDCIF :1;
        unsigned P1TPHIF :1;
        unsigned P1TOVIF :1;
        unsigned P1TPRIE :1;
        unsigned P1TDCIE :1;
        unsigned P1TPHIE :1;
        unsigned P1TOVIE :1;
    };
} PSMC1INTbits_t;
extern volatile PSMC1INTbits_t PSMC1INTbits __attribute__((address(0x820)));
# 9110 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC1PH __attribute__((address(0x821)));

__asm("PSMC1PH equ 0821h");




extern volatile unsigned char PSMC1PHL __attribute__((address(0x821)));

__asm("PSMC1PHL equ 0821h");


typedef union {
    struct {
        unsigned PSMC1PH0 :1;
        unsigned PSMC1PH1 :1;
        unsigned PSMC1PH2 :1;
        unsigned PSMC1PH3 :1;
        unsigned PSMC1PH4 :1;
        unsigned PSMC1PH5 :1;
        unsigned PSMC1PH6 :1;
        unsigned PSMC1PH7 :1;
    };
} PSMC1PHLbits_t;
extern volatile PSMC1PHLbits_t PSMC1PHLbits __attribute__((address(0x821)));
# 9179 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1PHH __attribute__((address(0x822)));

__asm("PSMC1PHH equ 0822h");


typedef union {
    struct {
        unsigned PSMC1PH8 :1;
        unsigned PSMC1PH9 :1;
        unsigned PSMC1PH10 :1;
        unsigned PSMC1PH11 :1;
        unsigned PSMC1PH12 :1;
        unsigned PSMC1PH13 :1;
        unsigned PSMC1PH14 :1;
        unsigned PSMC1PH15 :1;
    };
} PSMC1PHHbits_t;
extern volatile PSMC1PHHbits_t PSMC1PHHbits __attribute__((address(0x822)));
# 9241 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC1DC __attribute__((address(0x823)));

__asm("PSMC1DC equ 0823h");




extern volatile unsigned char PSMC1DCL __attribute__((address(0x823)));

__asm("PSMC1DCL equ 0823h");


typedef union {
    struct {
        unsigned PSMC1DC0 :1;
        unsigned PSMC1DC1 :1;
        unsigned PSMC1DC2 :1;
        unsigned PSMC1DC3 :1;
        unsigned PSMC1DC4 :1;
        unsigned PSMC1DC5 :1;
        unsigned PSMC1DC6 :1;
        unsigned PSMC1DC7 :1;
    };
} PSMC1DCLbits_t;
extern volatile PSMC1DCLbits_t PSMC1DCLbits __attribute__((address(0x823)));
# 9310 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1DCH __attribute__((address(0x824)));

__asm("PSMC1DCH equ 0824h");


typedef union {
    struct {
        unsigned PSMC1DC8 :1;
        unsigned PSMC1DC9 :1;
        unsigned PSMC1DC10 :1;
        unsigned PSMC1DC11 :1;
        unsigned PSMC1DC12 :1;
        unsigned PSMC1DC13 :1;
        unsigned PSMC1DC14 :1;
        unsigned PSMC1DC15 :1;
    };
} PSMC1DCHbits_t;
extern volatile PSMC1DCHbits_t PSMC1DCHbits __attribute__((address(0x824)));
# 9372 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC1PR __attribute__((address(0x825)));

__asm("PSMC1PR equ 0825h");




extern volatile unsigned char PSMC1PRL __attribute__((address(0x825)));

__asm("PSMC1PRL equ 0825h");


typedef union {
    struct {
        unsigned PSMC1PR0 :1;
        unsigned PSMC1PR1 :1;
        unsigned PSMC1PR2 :1;
        unsigned PSMC1PR3 :1;
        unsigned PSMC1PR4 :1;
        unsigned PSMC1PR5 :1;
        unsigned PSMC1PR6 :1;
        unsigned PSMC1PR7 :1;
    };
} PSMC1PRLbits_t;
extern volatile PSMC1PRLbits_t PSMC1PRLbits __attribute__((address(0x825)));
# 9441 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1PRH __attribute__((address(0x826)));

__asm("PSMC1PRH equ 0826h");


typedef union {
    struct {
        unsigned PSMC1PR8 :1;
        unsigned PSMC1PR9 :1;
        unsigned PSMC1PR10 :1;
        unsigned PSMC1PR11 :1;
        unsigned PSMC1PR12 :1;
        unsigned PSMC1PR13 :1;
        unsigned PSMC1PR14 :1;
        unsigned PSMC1PR15 :1;
    };
} PSMC1PRHbits_t;
extern volatile PSMC1PRHbits_t PSMC1PRHbits __attribute__((address(0x826)));
# 9503 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC1TMR __attribute__((address(0x827)));

__asm("PSMC1TMR equ 0827h");




extern volatile unsigned char PSMC1TMRL __attribute__((address(0x827)));

__asm("PSMC1TMRL equ 0827h");


typedef union {
    struct {
        unsigned PSMC1TMR0 :1;
        unsigned PSMC1TMR1 :1;
        unsigned PSMC1TMR2 :1;
        unsigned PSMC1TMR3 :1;
        unsigned PSMC1TMR4 :1;
        unsigned PSMC1TMR5 :1;
        unsigned PSMC1TMR6 :1;
        unsigned PSMC1TMR7 :1;
    };
} PSMC1TMRLbits_t;
extern volatile PSMC1TMRLbits_t PSMC1TMRLbits __attribute__((address(0x827)));
# 9572 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1TMRH __attribute__((address(0x828)));

__asm("PSMC1TMRH equ 0828h");


typedef union {
    struct {
        unsigned PSMC1TMR8 :1;
        unsigned PSMC1TMR9 :1;
        unsigned PSMC1TMR10 :1;
        unsigned PSMC1TMR11 :1;
        unsigned PSMC1TMR12 :1;
        unsigned PSMC1TMR13 :1;
        unsigned PSMC1TMR14 :1;
        unsigned PSMC1TMR15 :1;
    };
} PSMC1TMRHbits_t;
extern volatile PSMC1TMRHbits_t PSMC1TMRHbits __attribute__((address(0x828)));
# 9634 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1DBR __attribute__((address(0x829)));

__asm("PSMC1DBR equ 0829h");


typedef union {
    struct {
        unsigned PSMC1DBR0 :1;
        unsigned PSMC1DBR1 :1;
        unsigned PSMC1DBR2 :1;
        unsigned PSMC1DBR3 :1;
        unsigned PSMC1DBR4 :1;
        unsigned PSMC1DBR5 :1;
        unsigned PSMC1DBR6 :1;
        unsigned PSMC1DBR7 :1;
    };
} PSMC1DBRbits_t;
extern volatile PSMC1DBRbits_t PSMC1DBRbits __attribute__((address(0x829)));
# 9696 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1DBF __attribute__((address(0x82A)));

__asm("PSMC1DBF equ 082Ah");


typedef union {
    struct {
        unsigned PSMC1DBF0 :1;
        unsigned PSMC1DBF1 :1;
        unsigned PSMC1DBF2 :1;
        unsigned PSMC1DBF3 :1;
        unsigned PSMC1DBF4 :1;
        unsigned PSMC1DBF5 :1;
        unsigned PSMC1DBF6 :1;
        unsigned PSMC1DBF7 :1;
    };
} PSMC1DBFbits_t;
extern volatile PSMC1DBFbits_t PSMC1DBFbits __attribute__((address(0x82A)));
# 9758 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1BLKR __attribute__((address(0x82B)));

__asm("PSMC1BLKR equ 082Bh");


typedef union {
    struct {
        unsigned PSMC1BLKR0 :1;
        unsigned PSMC1BLKR1 :1;
        unsigned PSMC1BLKR2 :1;
        unsigned PSMC1BLKR3 :1;
        unsigned PSMC1BLKR4 :1;
        unsigned PSMC1BLKR5 :1;
        unsigned PSMC1BLKR6 :1;
        unsigned PSMC1BLKR7 :1;
    };
} PSMC1BLKRbits_t;
extern volatile PSMC1BLKRbits_t PSMC1BLKRbits __attribute__((address(0x82B)));
# 9820 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1BLKF __attribute__((address(0x82C)));

__asm("PSMC1BLKF equ 082Ch");


typedef union {
    struct {
        unsigned PSMC1BLKF0 :1;
        unsigned PSMC1BLKF1 :1;
        unsigned PSMC1BLKF2 :1;
        unsigned PSMC1BLKF3 :1;
        unsigned PSMC1BLKF4 :1;
        unsigned PSMC1BLKF5 :1;
        unsigned PSMC1BLKF6 :1;
        unsigned PSMC1BLKF7 :1;
    };
} PSMC1BLKFbits_t;
extern volatile PSMC1BLKFbits_t PSMC1BLKFbits __attribute__((address(0x82C)));
# 9882 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1FFA __attribute__((address(0x82D)));

__asm("PSMC1FFA equ 082Dh");


typedef union {
    struct {
        unsigned PSMC1FFA0 :1;
        unsigned PSMC1FFA1 :1;
        unsigned PSMC1FFA2 :1;
        unsigned PSMC1FFA3 :1;
    };
} PSMC1FFAbits_t;
extern volatile PSMC1FFAbits_t PSMC1FFAbits __attribute__((address(0x82D)));
# 9920 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1STR0 __attribute__((address(0x82E)));

__asm("PSMC1STR0 equ 082Eh");


typedef union {
    struct {
        unsigned P1STRA :1;
        unsigned P1STRB :1;
        unsigned P1STRC :1;
        unsigned P1STRD :1;
        unsigned P1STRE :1;
        unsigned P1STRF :1;
    };
} PSMC1STR0bits_t;
extern volatile PSMC1STR0bits_t PSMC1STR0bits __attribute__((address(0x82E)));
# 9970 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC1STR1 __attribute__((address(0x82F)));

__asm("PSMC1STR1 equ 082Fh");


typedef union {
    struct {
        unsigned P1HSMEN :1;
        unsigned P1LSMEN :1;
        unsigned :5;
        unsigned P1SSYNC :1;
    };
} PSMC1STR1bits_t;
extern volatile PSMC1STR1bits_t PSMC1STR1bits __attribute__((address(0x82F)));
# 10003 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2CON __attribute__((address(0x831)));

__asm("PSMC2CON equ 0831h");


typedef union {
    struct {
        unsigned P2MODE :4;
        unsigned P2DBRE :1;
        unsigned P2DBFE :1;
        unsigned PSMC2LD :1;
        unsigned PSMC2EN :1;
    };
    struct {
        unsigned P2MODE0 :1;
        unsigned P2MODE1 :1;
        unsigned P2MODE2 :1;
        unsigned P2MODE3 :1;
    };
} PSMC2CONbits_t;
extern volatile PSMC2CONbits_t PSMC2CONbits __attribute__((address(0x831)));
# 10073 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2MDL __attribute__((address(0x832)));

__asm("PSMC2MDL equ 0832h");


typedef union {
    struct {
        unsigned P2MSRC :4;
        unsigned :1;
        unsigned P2MDLBIT :1;
        unsigned P2MDLPOL :1;
        unsigned P2MDLEN :1;
    };
    struct {
        unsigned P2MSRC0 :1;
        unsigned P2MSRC1 :1;
        unsigned P2MSRC2 :1;
        unsigned P2MSRC3 :1;
    };
} PSMC2MDLbits_t;
extern volatile PSMC2MDLbits_t PSMC2MDLbits __attribute__((address(0x832)));
# 10138 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2SYNC __attribute__((address(0x833)));

__asm("PSMC2SYNC equ 0833h");


typedef union {
    struct {
        unsigned P2SYNC0 :1;
        unsigned P2SYNC1 :1;
        unsigned P2SYNC2 :1;
        unsigned :2;
        unsigned P2DCPOL :1;
        unsigned P2PRPOL :1;
        unsigned P2POFST :1;
    };
} PSMC2SYNCbits_t;
extern volatile PSMC2SYNCbits_t PSMC2SYNCbits __attribute__((address(0x833)));
# 10189 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2CLK __attribute__((address(0x834)));

__asm("PSMC2CLK equ 0834h");


typedef union {
    struct {
        unsigned P2CSRC0 :1;
        unsigned P2CSRC1 :1;
        unsigned :2;
        unsigned P2CPRE0 :1;
        unsigned P2CPRE1 :1;
    };
    struct {
        unsigned P2CSRC :2;
        unsigned :2;
        unsigned P2CPRE :2;
    };
} PSMC2CLKbits_t;
extern volatile PSMC2CLKbits_t PSMC2CLKbits __attribute__((address(0x834)));
# 10243 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2OEN __attribute__((address(0x835)));

__asm("PSMC2OEN equ 0835h");


typedef union {
    struct {
        unsigned P2OEA :1;
        unsigned P2OEB :1;
    };
} PSMC2OENbits_t;
extern volatile PSMC2OENbits_t PSMC2OENbits __attribute__((address(0x835)));
# 10269 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2POL __attribute__((address(0x836)));

__asm("PSMC2POL equ 0836h");


typedef union {
    struct {
        unsigned P2POLA :1;
        unsigned P2POLB :1;
        unsigned :4;
        unsigned P2INPOL :1;
    };
} PSMC2POLbits_t;
extern volatile PSMC2POLbits_t PSMC2POLbits __attribute__((address(0x836)));
# 10302 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2BLNK __attribute__((address(0x837)));

__asm("PSMC2BLNK equ 0837h");


typedef union {
    struct {
        unsigned P2REBM :2;
        unsigned :2;
        unsigned P2FEBM :2;
    };
    struct {
        unsigned P2REBM0 :1;
        unsigned P2REBM1 :1;
        unsigned :2;
        unsigned P2FEBM0 :1;
        unsigned P2FEBM1 :1;
    };
} PSMC2BLNKbits_t;
extern volatile PSMC2BLNKbits_t PSMC2BLNKbits __attribute__((address(0x837)));
# 10356 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2REBS __attribute__((address(0x838)));

__asm("PSMC2REBS equ 0838h");


typedef union {
    struct {
        unsigned :1;
        unsigned P2REBSC1 :1;
        unsigned P2REBSC2 :1;
        unsigned P2REBSC3 :1;
        unsigned P2REBSC4 :1;
        unsigned :2;
        unsigned P2REBSIN :1;
    };
} PSMC2REBSbits_t;
extern volatile PSMC2REBSbits_t PSMC2REBSbits __attribute__((address(0x838)));
# 10402 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2FEBS __attribute__((address(0x839)));

__asm("PSMC2FEBS equ 0839h");


typedef union {
    struct {
        unsigned :1;
        unsigned P2FEBSC1 :1;
        unsigned P2FEBSC2 :1;
        unsigned P2FEBSC3 :1;
        unsigned P2FEBSC4 :1;
        unsigned :2;
        unsigned P2FEBSIN :1;
    };
} PSMC2FEBSbits_t;
extern volatile PSMC2FEBSbits_t PSMC2FEBSbits __attribute__((address(0x839)));
# 10448 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2PHS __attribute__((address(0x83A)));

__asm("PSMC2PHS equ 083Ah");


typedef union {
    struct {
        unsigned P2PHST :1;
        unsigned P2PHSC1 :1;
        unsigned P2PHSC2 :1;
        unsigned P2PHSC3 :1;
        unsigned P2PHSC4 :1;
        unsigned :2;
        unsigned P2PHSIN :1;
    };
} PSMC2PHSbits_t;
extern volatile PSMC2PHSbits_t PSMC2PHSbits __attribute__((address(0x83A)));
# 10499 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2DCS __attribute__((address(0x83B)));

__asm("PSMC2DCS equ 083Bh");


typedef union {
    struct {
        unsigned P2DCST :1;
        unsigned P2DCSC1 :1;
        unsigned P2DCSC2 :1;
        unsigned P2DCSC3 :1;
        unsigned P2DCSC4 :1;
        unsigned :2;
        unsigned P2DCSIN :1;
    };
} PSMC2DCSbits_t;
extern volatile PSMC2DCSbits_t PSMC2DCSbits __attribute__((address(0x83B)));
# 10550 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2PRS __attribute__((address(0x83C)));

__asm("PSMC2PRS equ 083Ch");


typedef union {
    struct {
        unsigned P2PRST :1;
        unsigned P2PRSC1 :1;
        unsigned P2PRSC2 :1;
        unsigned P2PRSC3 :1;
        unsigned P2PRSC4 :1;
        unsigned :2;
        unsigned P2PRSIN :1;
    };
} PSMC2PRSbits_t;
extern volatile PSMC2PRSbits_t PSMC2PRSbits __attribute__((address(0x83C)));
# 10601 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2ASDC __attribute__((address(0x83D)));

__asm("PSMC2ASDC equ 083Dh");


typedef union {
    struct {
        unsigned P2ASDOV :1;
        unsigned :4;
        unsigned P2ARSEN :1;
        unsigned P2ASDEN :1;
        unsigned P2ASE :1;
    };
} PSMC2ASDCbits_t;
extern volatile PSMC2ASDCbits_t PSMC2ASDCbits __attribute__((address(0x83D)));
# 10640 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2ASDL __attribute__((address(0x83E)));

__asm("PSMC2ASDL equ 083Eh");


typedef union {
    struct {
        unsigned P2ASDLA :1;
        unsigned P2ASDLB :1;
    };
} PSMC2ASDLbits_t;
extern volatile PSMC2ASDLbits_t PSMC2ASDLbits __attribute__((address(0x83E)));
# 10666 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2ASDS __attribute__((address(0x83F)));

__asm("PSMC2ASDS equ 083Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned P2ASDSC1 :1;
        unsigned P2ASDSC2 :1;
        unsigned P2ASDSC3 :1;
        unsigned P2ASDSC4 :1;
        unsigned :2;
        unsigned P2ASDSIN :1;
    };
} PSMC2ASDSbits_t;
extern volatile PSMC2ASDSbits_t PSMC2ASDSbits __attribute__((address(0x83F)));
# 10712 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2INT __attribute__((address(0x840)));

__asm("PSMC2INT equ 0840h");


typedef union {
    struct {
        unsigned P2TPRIF :1;
        unsigned P2TDCIF :1;
        unsigned P2TPHIF :1;
        unsigned P2TOVIF :1;
        unsigned P2TPRIE :1;
        unsigned P2TDCIE :1;
        unsigned P2TPHIE :1;
        unsigned P2TOVIE :1;
    };
} PSMC2INTbits_t;
extern volatile PSMC2INTbits_t PSMC2INTbits __attribute__((address(0x840)));
# 10774 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC2PH __attribute__((address(0x841)));

__asm("PSMC2PH equ 0841h");




extern volatile unsigned char PSMC2PHL __attribute__((address(0x841)));

__asm("PSMC2PHL equ 0841h");


typedef union {
    struct {
        unsigned PSMC2PH0 :1;
        unsigned PSMC2PH1 :1;
        unsigned PSMC2PH2 :1;
        unsigned PSMC2PH3 :1;
        unsigned PSMC2PH4 :1;
        unsigned PSMC2PH5 :1;
        unsigned PSMC2PH6 :1;
        unsigned PSMC2PH7 :1;
    };
} PSMC2PHLbits_t;
extern volatile PSMC2PHLbits_t PSMC2PHLbits __attribute__((address(0x841)));
# 10843 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2PHH __attribute__((address(0x842)));

__asm("PSMC2PHH equ 0842h");


typedef union {
    struct {
        unsigned PSMC2PH8 :1;
        unsigned PSMC2PH9 :1;
        unsigned PSMC2PH10 :1;
        unsigned PSMC2PH11 :1;
        unsigned PSMC2PH12 :1;
        unsigned PSMC2PH13 :1;
        unsigned PSMC2PH14 :1;
        unsigned PSMC2PH15 :1;
    };
} PSMC2PHHbits_t;
extern volatile PSMC2PHHbits_t PSMC2PHHbits __attribute__((address(0x842)));
# 10905 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC2DC __attribute__((address(0x843)));

__asm("PSMC2DC equ 0843h");




extern volatile unsigned char PSMC2DCL __attribute__((address(0x843)));

__asm("PSMC2DCL equ 0843h");


typedef union {
    struct {
        unsigned PSMC2DC0 :1;
        unsigned PSMC2DC1 :1;
        unsigned PSMC2DC2 :1;
        unsigned PSMC2DC3 :1;
        unsigned PSMC2DC4 :1;
        unsigned PSMC2DC5 :1;
        unsigned PSMC2DC6 :1;
        unsigned PSMC2DC7 :1;
    };
} PSMC2DCLbits_t;
extern volatile PSMC2DCLbits_t PSMC2DCLbits __attribute__((address(0x843)));
# 10974 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2DCH __attribute__((address(0x844)));

__asm("PSMC2DCH equ 0844h");


typedef union {
    struct {
        unsigned PSMC2DC8 :1;
        unsigned PSMC2DC9 :1;
        unsigned PSMC2DC10 :1;
        unsigned PSMC2DC11 :1;
        unsigned PSMC2DC12 :1;
        unsigned PSMC2DC13 :1;
        unsigned PSMC2DC14 :1;
        unsigned PSMC2DC15 :1;
    };
} PSMC2DCHbits_t;
extern volatile PSMC2DCHbits_t PSMC2DCHbits __attribute__((address(0x844)));
# 11036 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC2PR __attribute__((address(0x845)));

__asm("PSMC2PR equ 0845h");




extern volatile unsigned char PSMC2PRL __attribute__((address(0x845)));

__asm("PSMC2PRL equ 0845h");


typedef union {
    struct {
        unsigned PSMC2PR0 :1;
        unsigned PSMC2PR1 :1;
        unsigned PSMC2PR2 :1;
        unsigned PSMC2PR3 :1;
        unsigned PSMC2PR4 :1;
        unsigned PSMC2PR5 :1;
        unsigned PSMC2PR6 :1;
        unsigned PSMC2PR7 :1;
    };
} PSMC2PRLbits_t;
extern volatile PSMC2PRLbits_t PSMC2PRLbits __attribute__((address(0x845)));
# 11105 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2PRH __attribute__((address(0x846)));

__asm("PSMC2PRH equ 0846h");


typedef union {
    struct {
        unsigned PSMC2PR8 :1;
        unsigned PSMC2PR9 :1;
        unsigned PSMC2PR10 :1;
        unsigned PSMC2PR11 :1;
        unsigned PSMC2PR12 :1;
        unsigned PSMC2PR13 :1;
        unsigned PSMC2PR14 :1;
        unsigned PSMC2PR15 :1;
    };
} PSMC2PRHbits_t;
extern volatile PSMC2PRHbits_t PSMC2PRHbits __attribute__((address(0x846)));
# 11167 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC2TMR __attribute__((address(0x847)));

__asm("PSMC2TMR equ 0847h");




extern volatile unsigned char PSMC2TMRL __attribute__((address(0x847)));

__asm("PSMC2TMRL equ 0847h");


typedef union {
    struct {
        unsigned PSMC2TMR0 :1;
        unsigned PSMC2TMR1 :1;
        unsigned PSMC2TMR2 :1;
        unsigned PSMC2TMR3 :1;
        unsigned PSMC2TMR4 :1;
        unsigned PSMC2TMR5 :1;
        unsigned PSMC2TMR6 :1;
        unsigned PSMC2TMR7 :1;
    };
} PSMC2TMRLbits_t;
extern volatile PSMC2TMRLbits_t PSMC2TMRLbits __attribute__((address(0x847)));
# 11236 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2TMRH __attribute__((address(0x848)));

__asm("PSMC2TMRH equ 0848h");


typedef union {
    struct {
        unsigned PSMC2TMR8 :1;
        unsigned PSMC2TMR9 :1;
        unsigned PSMC2TMR10 :1;
        unsigned PSMC2TMR11 :1;
        unsigned PSMC2TMR12 :1;
        unsigned PSMC2TMR13 :1;
        unsigned PSMC2TMR14 :1;
        unsigned PSMC2TMR15 :1;
    };
} PSMC2TMRHbits_t;
extern volatile PSMC2TMRHbits_t PSMC2TMRHbits __attribute__((address(0x848)));
# 11298 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2DBR __attribute__((address(0x849)));

__asm("PSMC2DBR equ 0849h");


typedef union {
    struct {
        unsigned PSMC2DBR0 :1;
        unsigned PSMC2DBR1 :1;
        unsigned PSMC2DBR2 :1;
        unsigned PSMC2DBR3 :1;
        unsigned PSMC2DBR4 :1;
        unsigned PSMC2DBR5 :1;
        unsigned PSMC2DBR6 :1;
        unsigned PSMC2DBR7 :1;
    };
} PSMC2DBRbits_t;
extern volatile PSMC2DBRbits_t PSMC2DBRbits __attribute__((address(0x849)));
# 11360 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2DBF __attribute__((address(0x84A)));

__asm("PSMC2DBF equ 084Ah");


typedef union {
    struct {
        unsigned PSMC2DBF0 :1;
        unsigned PSMC2DBF1 :1;
        unsigned PSMC2DBF2 :1;
        unsigned PSMC2DBF3 :1;
        unsigned PSMC2DBF4 :1;
        unsigned PSMC2DBF5 :1;
        unsigned PSMC2DBF6 :1;
        unsigned PSMC2DBF7 :1;
    };
} PSMC2DBFbits_t;
extern volatile PSMC2DBFbits_t PSMC2DBFbits __attribute__((address(0x84A)));
# 11422 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2BLKR __attribute__((address(0x84B)));

__asm("PSMC2BLKR equ 084Bh");


typedef union {
    struct {
        unsigned PSMC2BLKR0 :1;
        unsigned PSMC2BLKR1 :1;
        unsigned PSMC2BLKR2 :1;
        unsigned PSMC2BLKR3 :1;
        unsigned PSMC2BLKR4 :1;
        unsigned PSMC2BLKR5 :1;
        unsigned PSMC2BLKR6 :1;
        unsigned PSMC2BLKR7 :1;
    };
} PSMC2BLKRbits_t;
extern volatile PSMC2BLKRbits_t PSMC2BLKRbits __attribute__((address(0x84B)));
# 11484 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2BLKF __attribute__((address(0x84C)));

__asm("PSMC2BLKF equ 084Ch");


typedef union {
    struct {
        unsigned PSMC2BLKF0 :1;
        unsigned PSMC2BLKF1 :1;
        unsigned PSMC2BLKF2 :1;
        unsigned PSMC2BLKF3 :1;
        unsigned PSMC2BLKF4 :1;
        unsigned PSMC2BLKF5 :1;
        unsigned PSMC2BLKF6 :1;
        unsigned PSMC2BLKF7 :1;
    };
} PSMC2BLKFbits_t;
extern volatile PSMC2BLKFbits_t PSMC2BLKFbits __attribute__((address(0x84C)));
# 11546 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2FFA __attribute__((address(0x84D)));

__asm("PSMC2FFA equ 084Dh");


typedef union {
    struct {
        unsigned PSMC2FFA0 :1;
        unsigned PSMC2FFA1 :1;
        unsigned PSMC2FFA2 :1;
        unsigned PSMC2FFA3 :1;
    };
} PSMC2FFAbits_t;
extern volatile PSMC2FFAbits_t PSMC2FFAbits __attribute__((address(0x84D)));
# 11584 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2STR0 __attribute__((address(0x84E)));

__asm("PSMC2STR0 equ 084Eh");


typedef union {
    struct {
        unsigned P2STRA :1;
        unsigned P2STRB :1;
    };
} PSMC2STR0bits_t;
extern volatile PSMC2STR0bits_t PSMC2STR0bits __attribute__((address(0x84E)));
# 11610 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC2STR1 __attribute__((address(0x84F)));

__asm("PSMC2STR1 equ 084Fh");


typedef union {
    struct {
        unsigned P2HSMEN :1;
        unsigned P2LSMEN :1;
        unsigned :5;
        unsigned P2SSYNC :1;
    };
} PSMC2STR1bits_t;
extern volatile PSMC2STR1bits_t PSMC2STR1bits __attribute__((address(0x84F)));
# 11643 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3CON __attribute__((address(0x851)));

__asm("PSMC3CON equ 0851h");


typedef union {
    struct {
        unsigned P3MODE :4;
        unsigned P3DBRE :1;
        unsigned P3DBFE :1;
        unsigned PSMC3LD :1;
        unsigned PSMC3EN :1;
    };
    struct {
        unsigned P3MODE0 :1;
        unsigned P3MODE1 :1;
        unsigned P3MODE2 :1;
        unsigned P3MODE3 :1;
    };
} PSMC3CONbits_t;
extern volatile PSMC3CONbits_t PSMC3CONbits __attribute__((address(0x851)));
# 11713 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3MDL __attribute__((address(0x852)));

__asm("PSMC3MDL equ 0852h");


typedef union {
    struct {
        unsigned P3MSRC :4;
        unsigned :1;
        unsigned P3MDLBIT :1;
        unsigned P3MDLPOL :1;
        unsigned P3MDLEN :1;
    };
    struct {
        unsigned P3MSRC0 :1;
        unsigned P3MSRC1 :1;
        unsigned P3MSRC2 :1;
        unsigned P3MSRC3 :1;
    };
} PSMC3MDLbits_t;
extern volatile PSMC3MDLbits_t PSMC3MDLbits __attribute__((address(0x852)));
# 11778 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3SYNC __attribute__((address(0x853)));

__asm("PSMC3SYNC equ 0853h");


typedef union {
    struct {
        unsigned P3SYNC0 :1;
        unsigned P3SYNC1 :1;
        unsigned P3SYNC2 :1;
        unsigned :2;
        unsigned P3DCPOL :1;
        unsigned P3PRPOL :1;
        unsigned P3POFST :1;
    };
} PSMC3SYNCbits_t;
extern volatile PSMC3SYNCbits_t PSMC3SYNCbits __attribute__((address(0x853)));
# 11829 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3CLK __attribute__((address(0x854)));

__asm("PSMC3CLK equ 0854h");


typedef union {
    struct {
        unsigned P3CSRC0 :1;
        unsigned P3CSRC1 :1;
        unsigned :2;
        unsigned P3CPRE0 :1;
        unsigned P3CPRE1 :1;
    };
    struct {
        unsigned P3CSRC :2;
        unsigned :2;
        unsigned P3CPRE :2;
    };
} PSMC3CLKbits_t;
extern volatile PSMC3CLKbits_t PSMC3CLKbits __attribute__((address(0x854)));
# 11883 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3OEN __attribute__((address(0x855)));

__asm("PSMC3OEN equ 0855h");


typedef union {
    struct {
        unsigned P3OEA :1;
        unsigned P3OEB :1;
    };
} PSMC3OENbits_t;
extern volatile PSMC3OENbits_t PSMC3OENbits __attribute__((address(0x855)));
# 11909 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3POL __attribute__((address(0x856)));

__asm("PSMC3POL equ 0856h");


typedef union {
    struct {
        unsigned P3POLA :1;
        unsigned P3POLB :1;
        unsigned :4;
        unsigned P3INPOL :1;
    };
} PSMC3POLbits_t;
extern volatile PSMC3POLbits_t PSMC3POLbits __attribute__((address(0x856)));
# 11942 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3BLNK __attribute__((address(0x857)));

__asm("PSMC3BLNK equ 0857h");


typedef union {
    struct {
        unsigned P3REBM :2;
        unsigned :2;
        unsigned P3FEBM :2;
    };
    struct {
        unsigned P3REBM0 :1;
        unsigned P3REBM1 :1;
        unsigned :2;
        unsigned P3FEBM0 :1;
        unsigned P3FEBM1 :1;
    };
} PSMC3BLNKbits_t;
extern volatile PSMC3BLNKbits_t PSMC3BLNKbits __attribute__((address(0x857)));
# 11996 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3REBS __attribute__((address(0x858)));

__asm("PSMC3REBS equ 0858h");


typedef union {
    struct {
        unsigned :1;
        unsigned P3REBSC1 :1;
        unsigned P3REBSC2 :1;
        unsigned P3REBSC3 :1;
        unsigned P3REBSC4 :1;
        unsigned :2;
        unsigned P3REBSIN :1;
    };
} PSMC3REBSbits_t;
extern volatile PSMC3REBSbits_t PSMC3REBSbits __attribute__((address(0x858)));
# 12042 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3FEBS __attribute__((address(0x859)));

__asm("PSMC3FEBS equ 0859h");


typedef union {
    struct {
        unsigned :1;
        unsigned P3FEBSC1 :1;
        unsigned P3FEBSC2 :1;
        unsigned P3FEBSC3 :1;
        unsigned P3FEBSC4 :1;
        unsigned :2;
        unsigned P3FEBSIN :1;
    };
} PSMC3FEBSbits_t;
extern volatile PSMC3FEBSbits_t PSMC3FEBSbits __attribute__((address(0x859)));
# 12088 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3PHS __attribute__((address(0x85A)));

__asm("PSMC3PHS equ 085Ah");


typedef union {
    struct {
        unsigned P3PHST :1;
        unsigned P3PHSC1 :1;
        unsigned P3PHSC2 :1;
        unsigned P3PHSC3 :1;
        unsigned P3PHSC4 :1;
        unsigned :2;
        unsigned P3PHSIN :1;
    };
} PSMC3PHSbits_t;
extern volatile PSMC3PHSbits_t PSMC3PHSbits __attribute__((address(0x85A)));
# 12139 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3DCS __attribute__((address(0x85B)));

__asm("PSMC3DCS equ 085Bh");


typedef union {
    struct {
        unsigned P3DCST :1;
        unsigned P3DCSC1 :1;
        unsigned P3DCSC2 :1;
        unsigned P3DCSC3 :1;
        unsigned P3DCSC4 :1;
        unsigned :2;
        unsigned P3DCSIN :1;
    };
} PSMC3DCSbits_t;
extern volatile PSMC3DCSbits_t PSMC3DCSbits __attribute__((address(0x85B)));
# 12190 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3PRS __attribute__((address(0x85C)));

__asm("PSMC3PRS equ 085Ch");


typedef union {
    struct {
        unsigned P3PRST :1;
        unsigned P3PRSC1 :1;
        unsigned P3PRSC2 :1;
        unsigned P3PRSC3 :1;
        unsigned P3PRSC4 :1;
        unsigned :2;
        unsigned P3PRSIN :1;
    };
} PSMC3PRSbits_t;
extern volatile PSMC3PRSbits_t PSMC3PRSbits __attribute__((address(0x85C)));
# 12241 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3ASDC __attribute__((address(0x85D)));

__asm("PSMC3ASDC equ 085Dh");


typedef union {
    struct {
        unsigned P3ASDOV :1;
        unsigned :4;
        unsigned P3ARSEN :1;
        unsigned P3ASDEN :1;
        unsigned P3ASE :1;
    };
} PSMC3ASDCbits_t;
extern volatile PSMC3ASDCbits_t PSMC3ASDCbits __attribute__((address(0x85D)));
# 12280 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3ASDL __attribute__((address(0x85E)));

__asm("PSMC3ASDL equ 085Eh");


typedef union {
    struct {
        unsigned P3ASDLA :1;
        unsigned P3ASDLB :1;
        unsigned P3ASDLC :1;
        unsigned P3ASDLD :1;
        unsigned P3ASDLE :1;
        unsigned P3ASDLF :1;
    };
} PSMC3ASDLbits_t;
extern volatile PSMC3ASDLbits_t PSMC3ASDLbits __attribute__((address(0x85E)));
# 12330 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3ASDS __attribute__((address(0x85F)));

__asm("PSMC3ASDS equ 085Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned P3ASDSC1 :1;
        unsigned P3ASDSC2 :1;
        unsigned P3ASDSC3 :1;
        unsigned P3ASDSC4 :1;
        unsigned :2;
        unsigned P3ASDSIN :1;
    };
} PSMC3ASDSbits_t;
extern volatile PSMC3ASDSbits_t PSMC3ASDSbits __attribute__((address(0x85F)));
# 12376 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3INT __attribute__((address(0x860)));

__asm("PSMC3INT equ 0860h");


typedef union {
    struct {
        unsigned P3TPRIF :1;
        unsigned P3TDCIF :1;
        unsigned P3TPHIF :1;
        unsigned P3TOVIF :1;
        unsigned P3TPRIE :1;
        unsigned P3TDCIE :1;
        unsigned P3TPHIE :1;
        unsigned P3TOVIE :1;
    };
} PSMC3INTbits_t;
extern volatile PSMC3INTbits_t PSMC3INTbits __attribute__((address(0x860)));
# 12438 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC3PH __attribute__((address(0x861)));

__asm("PSMC3PH equ 0861h");




extern volatile unsigned char PSMC3PHL __attribute__((address(0x861)));

__asm("PSMC3PHL equ 0861h");


typedef union {
    struct {
        unsigned PSMC3PH0 :1;
        unsigned PSMC3PH1 :1;
        unsigned PSMC3PH2 :1;
        unsigned PSMC3PH3 :1;
        unsigned PSMC3PH4 :1;
        unsigned PSMC3PH5 :1;
        unsigned PSMC3PH6 :1;
        unsigned PSMC3PH7 :1;
    };
} PSMC3PHLbits_t;
extern volatile PSMC3PHLbits_t PSMC3PHLbits __attribute__((address(0x861)));
# 12507 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3PHH __attribute__((address(0x862)));

__asm("PSMC3PHH equ 0862h");


typedef union {
    struct {
        unsigned PSMC3PH8 :1;
        unsigned PSMC3PH9 :1;
        unsigned PSMC3PH10 :1;
        unsigned PSMC3PH11 :1;
        unsigned PSMC3PH12 :1;
        unsigned PSMC3PH13 :1;
        unsigned PSMC3PH14 :1;
        unsigned PSMC3PH15 :1;
    };
} PSMC3PHHbits_t;
extern volatile PSMC3PHHbits_t PSMC3PHHbits __attribute__((address(0x862)));
# 12569 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC3DC __attribute__((address(0x863)));

__asm("PSMC3DC equ 0863h");




extern volatile unsigned char PSMC3DCL __attribute__((address(0x863)));

__asm("PSMC3DCL equ 0863h");


typedef union {
    struct {
        unsigned PSMC3DC0 :1;
        unsigned PSMC3DC1 :1;
        unsigned PSMC3DC2 :1;
        unsigned PSMC3DC3 :1;
        unsigned PSMC3DC4 :1;
        unsigned PSMC3DC5 :1;
        unsigned PSMC3DC6 :1;
        unsigned PSMC3DC7 :1;
    };
} PSMC3DCLbits_t;
extern volatile PSMC3DCLbits_t PSMC3DCLbits __attribute__((address(0x863)));
# 12638 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3DCH __attribute__((address(0x864)));

__asm("PSMC3DCH equ 0864h");


typedef union {
    struct {
        unsigned PSMC3DC8 :1;
        unsigned PSMC3DC9 :1;
        unsigned PSMC3DC10 :1;
        unsigned PSMC3DC11 :1;
        unsigned PSMC3DC12 :1;
        unsigned PSMC3DC13 :1;
        unsigned PSMC3DC14 :1;
        unsigned PSMC3DC15 :1;
    };
} PSMC3DCHbits_t;
extern volatile PSMC3DCHbits_t PSMC3DCHbits __attribute__((address(0x864)));
# 12700 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC3PR __attribute__((address(0x865)));

__asm("PSMC3PR equ 0865h");




extern volatile unsigned char PSMC3PRL __attribute__((address(0x865)));

__asm("PSMC3PRL equ 0865h");


typedef union {
    struct {
        unsigned PSMC3PR0 :1;
        unsigned PSMC3PR1 :1;
        unsigned PSMC3PR2 :1;
        unsigned PSMC3PR3 :1;
        unsigned PSMC3PR4 :1;
        unsigned PSMC3PR5 :1;
        unsigned PSMC3PR6 :1;
        unsigned PSMC3PR7 :1;
    };
} PSMC3PRLbits_t;
extern volatile PSMC3PRLbits_t PSMC3PRLbits __attribute__((address(0x865)));
# 12769 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3PRH __attribute__((address(0x866)));

__asm("PSMC3PRH equ 0866h");


typedef union {
    struct {
        unsigned PSMC3PR8 :1;
        unsigned PSMC3PR9 :1;
        unsigned PSMC3PR10 :1;
        unsigned PSMC3PR11 :1;
        unsigned PSMC3PR12 :1;
        unsigned PSMC3PR13 :1;
        unsigned PSMC3PR14 :1;
        unsigned PSMC3PR15 :1;
    };
} PSMC3PRHbits_t;
extern volatile PSMC3PRHbits_t PSMC3PRHbits __attribute__((address(0x866)));
# 12831 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned short PSMC3TMR __attribute__((address(0x867)));

__asm("PSMC3TMR equ 0867h");




extern volatile unsigned char PSMC3TMRL __attribute__((address(0x867)));

__asm("PSMC3TMRL equ 0867h");


typedef union {
    struct {
        unsigned PSMC3TMR0 :1;
        unsigned PSMC3TMR1 :1;
        unsigned PSMC3TMR2 :1;
        unsigned PSMC3TMR3 :1;
        unsigned PSMC3TMR4 :1;
        unsigned PSMC3TMR5 :1;
        unsigned PSMC3TMR6 :1;
        unsigned PSMC3TMR7 :1;
    };
} PSMC3TMRLbits_t;
extern volatile PSMC3TMRLbits_t PSMC3TMRLbits __attribute__((address(0x867)));
# 12900 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3TMRH __attribute__((address(0x868)));

__asm("PSMC3TMRH equ 0868h");


typedef union {
    struct {
        unsigned PSMC3TMR8 :1;
        unsigned PSMC3TMR9 :1;
        unsigned PSMC3TMR10 :1;
        unsigned PSMC3TMR11 :1;
        unsigned PSMC3TMR12 :1;
        unsigned PSMC3TMR13 :1;
        unsigned PSMC3TMR14 :1;
        unsigned PSMC3TMR15 :1;
    };
} PSMC3TMRHbits_t;
extern volatile PSMC3TMRHbits_t PSMC3TMRHbits __attribute__((address(0x868)));
# 12962 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3DBR __attribute__((address(0x869)));

__asm("PSMC3DBR equ 0869h");


typedef union {
    struct {
        unsigned PSMC3DBR0 :1;
        unsigned PSMC3DBR1 :1;
        unsigned PSMC3DBR2 :1;
        unsigned PSMC3DBR3 :1;
        unsigned PSMC3DBR4 :1;
        unsigned PSMC3DBR5 :1;
        unsigned PSMC3DBR6 :1;
        unsigned PSMC3DBR7 :1;
    };
} PSMC3DBRbits_t;
extern volatile PSMC3DBRbits_t PSMC3DBRbits __attribute__((address(0x869)));
# 13024 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3DBF __attribute__((address(0x86A)));

__asm("PSMC3DBF equ 086Ah");


typedef union {
    struct {
        unsigned PSMC3DBF0 :1;
        unsigned PSMC3DBF1 :1;
        unsigned PSMC3DBF2 :1;
        unsigned PSMC3DBF3 :1;
        unsigned PSMC3DBF4 :1;
        unsigned PSMC3DBF5 :1;
        unsigned PSMC3DBF6 :1;
        unsigned PSMC3DBF7 :1;
    };
} PSMC3DBFbits_t;
extern volatile PSMC3DBFbits_t PSMC3DBFbits __attribute__((address(0x86A)));
# 13086 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3BLKR __attribute__((address(0x86B)));

__asm("PSMC3BLKR equ 086Bh");


typedef union {
    struct {
        unsigned PSMC3BLKR0 :1;
        unsigned PSMC3BLKR1 :1;
        unsigned PSMC3BLKR2 :1;
        unsigned PSMC3BLKR3 :1;
        unsigned PSMC3BLKR4 :1;
        unsigned PSMC3BLKR5 :1;
        unsigned PSMC3BLKR6 :1;
        unsigned PSMC3BLKR7 :1;
    };
} PSMC3BLKRbits_t;
extern volatile PSMC3BLKRbits_t PSMC3BLKRbits __attribute__((address(0x86B)));
# 13148 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3BLKF __attribute__((address(0x86C)));

__asm("PSMC3BLKF equ 086Ch");


typedef union {
    struct {
        unsigned PSMC3BLKF0 :1;
        unsigned PSMC3BLKF1 :1;
        unsigned PSMC3BLKF2 :1;
        unsigned PSMC3BLKF3 :1;
        unsigned PSMC3BLKF4 :1;
        unsigned PSMC3BLKF5 :1;
        unsigned PSMC3BLKF6 :1;
        unsigned PSMC3BLKF7 :1;
    };
} PSMC3BLKFbits_t;
extern volatile PSMC3BLKFbits_t PSMC3BLKFbits __attribute__((address(0x86C)));
# 13210 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3FFA __attribute__((address(0x86D)));

__asm("PSMC3FFA equ 086Dh");


typedef union {
    struct {
        unsigned PSMC3FFA0 :1;
        unsigned PSMC3FFA1 :1;
        unsigned PSMC3FFA2 :1;
        unsigned PSMC3FFA3 :1;
    };
} PSMC3FFAbits_t;
extern volatile PSMC3FFAbits_t PSMC3FFAbits __attribute__((address(0x86D)));
# 13248 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3STR0 __attribute__((address(0x86E)));

__asm("PSMC3STR0 equ 086Eh");


typedef union {
    struct {
        unsigned P3STRA :1;
        unsigned P3STRB :1;
    };
} PSMC3STR0bits_t;
extern volatile PSMC3STR0bits_t PSMC3STR0bits __attribute__((address(0x86E)));
# 13274 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PSMC3STR1 __attribute__((address(0x86F)));

__asm("PSMC3STR1 equ 086Fh");


typedef union {
    struct {
        unsigned P3HSMEN :1;
        unsigned P3LSMEN :1;
        unsigned :5;
        unsigned P3SSYNC :1;
    };
} PSMC3STR1bits_t;
extern volatile PSMC3STR1bits_t PSMC3STR1bits __attribute__((address(0x86F)));
# 13307 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");


typedef union {
    struct {
        unsigned C_SHAD :1;
        unsigned DC_SHAD :1;
        unsigned Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
# 13339 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");


typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
# 13359 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");


typedef union {
    struct {
        unsigned BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
# 13379 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");


typedef union {
    struct {
        unsigned PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
# 13399 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");


typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
# 13419 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
# 13439 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");


typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
# 13459 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");


typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
# 13479 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");


typedef union {
    struct {
        unsigned STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
# 13499 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
# 13519 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");


typedef union {
    struct {
        unsigned TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
# 13545 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic16f1786.h" 3
extern volatile __bit ABDEN __attribute__((address(0xCF8)));


extern volatile __bit ABDOVF __attribute__((address(0xCFF)));


extern volatile __bit ACKDT __attribute__((address(0x10B5)));


extern volatile __bit ACKEN __attribute__((address(0x10B4)));


extern volatile __bit ACKSTAT __attribute__((address(0x10B6)));


extern volatile __bit ACKTIM __attribute__((address(0x10BF)));


extern volatile __bit ADCS0 __attribute__((address(0x4F4)));


extern volatile __bit ADCS1 __attribute__((address(0x4F5)));


extern volatile __bit ADCS2 __attribute__((address(0x4F6)));


extern volatile __bit ADD0 __attribute__((address(0x1090)));


extern volatile __bit ADD1 __attribute__((address(0x1091)));


extern volatile __bit ADD2 __attribute__((address(0x1092)));


extern volatile __bit ADD3 __attribute__((address(0x1093)));


extern volatile __bit ADD4 __attribute__((address(0x1094)));


extern volatile __bit ADD5 __attribute__((address(0x1095)));


extern volatile __bit ADD6 __attribute__((address(0x1096)));


extern volatile __bit ADD7 __attribute__((address(0x1097)));


extern volatile __bit ADDEN __attribute__((address(0xCEB)));


extern volatile __bit ADFM __attribute__((address(0x4F7)));


extern volatile __bit ADFVR0 __attribute__((address(0x8B8)));


extern volatile __bit ADFVR1 __attribute__((address(0x8B9)));


extern volatile __bit ADGO __attribute__((address(0x4E9)));


extern volatile __bit ADIE __attribute__((address(0x48E)));


extern volatile __bit ADIF __attribute__((address(0x8E)));


extern volatile __bit ADNREF __attribute__((address(0x4F2)));


extern volatile __bit ADON __attribute__((address(0x4E8)));


extern volatile __bit ADPREF0 __attribute__((address(0x4F0)));


extern volatile __bit ADPREF1 __attribute__((address(0x4F1)));


extern volatile __bit ADRMD __attribute__((address(0x4EF)));


extern volatile __bit AHEN __attribute__((address(0x10B9)));


extern volatile __bit ANSA0 __attribute__((address(0xC60)));


extern volatile __bit ANSA1 __attribute__((address(0xC61)));


extern volatile __bit ANSA2 __attribute__((address(0xC62)));


extern volatile __bit ANSA3 __attribute__((address(0xC63)));


extern volatile __bit ANSA4 __attribute__((address(0xC64)));


extern volatile __bit ANSA5 __attribute__((address(0xC65)));


extern volatile __bit ANSA7 __attribute__((address(0xC67)));


extern volatile __bit ANSB0 __attribute__((address(0xC68)));


extern volatile __bit ANSB1 __attribute__((address(0xC69)));


extern volatile __bit ANSB2 __attribute__((address(0xC6A)));


extern volatile __bit ANSB3 __attribute__((address(0xC6B)));


extern volatile __bit ANSB4 __attribute__((address(0xC6C)));


extern volatile __bit ANSB5 __attribute__((address(0xC6D)));


extern volatile __bit ANSB6 __attribute__((address(0xC6E)));


extern volatile __bit BCL1IE __attribute__((address(0x493)));


extern volatile __bit BCL1IF __attribute__((address(0x93)));


extern volatile __bit BF __attribute__((address(0x10A0)));


extern volatile __bit BOEN __attribute__((address(0x10BC)));


extern volatile __bit BORFS __attribute__((address(0x8B6)));


extern volatile __bit BORRDY __attribute__((address(0x8B0)));


extern volatile __bit BRG16 __attribute__((address(0xCFB)));


extern volatile __bit BRGH __attribute__((address(0xCF2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit BUF0 __attribute__((address(0x1088)));


extern volatile __bit BUF1 __attribute__((address(0x1089)));


extern volatile __bit BUF2 __attribute__((address(0x108A)));


extern volatile __bit BUF3 __attribute__((address(0x108B)));


extern volatile __bit BUF4 __attribute__((address(0x108C)));


extern volatile __bit BUF5 __attribute__((address(0x108D)));


extern volatile __bit BUF6 __attribute__((address(0x108E)));


extern volatile __bit BUF7 __attribute__((address(0x108F)));


extern volatile __bit C1HYS __attribute__((address(0x889)));


extern volatile __bit C1IE __attribute__((address(0x495)));


extern volatile __bit C1IF __attribute__((address(0x95)));


extern volatile __bit C1INTN __attribute__((address(0x896)));


extern volatile __bit C1INTP __attribute__((address(0x897)));


extern volatile __bit C1NCH0 __attribute__((address(0x890)));


extern volatile __bit C1NCH1 __attribute__((address(0x891)));


extern volatile __bit C1NCH2 __attribute__((address(0x892)));


extern volatile __bit C1OE __attribute__((address(0x88D)));


extern volatile __bit C1ON __attribute__((address(0x88F)));


extern volatile __bit C1OUT __attribute__((address(0x88E)));


extern volatile __bit C1PCH0 __attribute__((address(0x893)));


extern volatile __bit C1PCH1 __attribute__((address(0x894)));


extern volatile __bit C1PCH2 __attribute__((address(0x895)));


extern volatile __bit C1POL __attribute__((address(0x88C)));


extern volatile __bit C1SP __attribute__((address(0x88A)));


extern volatile __bit C1SYNC __attribute__((address(0x888)));


extern volatile __bit C1ZLF __attribute__((address(0x88B)));


extern volatile __bit C2HYS __attribute__((address(0x899)));


extern volatile __bit C2IE __attribute__((address(0x496)));


extern volatile __bit C2IF __attribute__((address(0x96)));


extern volatile __bit C2INTN __attribute__((address(0x8A6)));


extern volatile __bit C2INTP __attribute__((address(0x8A7)));


extern volatile __bit C2NCH0 __attribute__((address(0x8A0)));


extern volatile __bit C2NCH1 __attribute__((address(0x8A1)));


extern volatile __bit C2NCH2 __attribute__((address(0x8A2)));


extern volatile __bit C2OE __attribute__((address(0x89D)));


extern volatile __bit C2ON __attribute__((address(0x89F)));


extern volatile __bit C2OUT __attribute__((address(0x89E)));


extern volatile __bit C2OUTSEL __attribute__((address(0x8EF)));


extern volatile __bit C2PCH0 __attribute__((address(0x8A3)));


extern volatile __bit C2PCH1 __attribute__((address(0x8A4)));


extern volatile __bit C2PCH2 __attribute__((address(0x8A5)));


extern volatile __bit C2POL __attribute__((address(0x89C)));


extern volatile __bit C2SP __attribute__((address(0x89A)));


extern volatile __bit C2SYNC __attribute__((address(0x898)));


extern volatile __bit C2ZLF __attribute__((address(0x89B)));


extern volatile __bit C3HYS __attribute__((address(0x8F1)));


extern volatile __bit C3IE __attribute__((address(0x491)));


extern volatile __bit C3IF __attribute__((address(0x91)));


extern volatile __bit C3INTN __attribute__((address(0x8FE)));


extern volatile __bit C3INTP __attribute__((address(0x8FF)));


extern volatile __bit C3NCH0 __attribute__((address(0x8F8)));


extern volatile __bit C3NCH1 __attribute__((address(0x8F9)));


extern volatile __bit C3NCH2 __attribute__((address(0x8FA)));


extern volatile __bit C3OE __attribute__((address(0x8F5)));


extern volatile __bit C3ON __attribute__((address(0x8F7)));


extern volatile __bit C3OUT __attribute__((address(0x8F6)));


extern volatile __bit C3PCH0 __attribute__((address(0x8FB)));


extern volatile __bit C3PCH1 __attribute__((address(0x8FC)));


extern volatile __bit C3PCH2 __attribute__((address(0x8FD)));


extern volatile __bit C3POL __attribute__((address(0x8F4)));


extern volatile __bit C3SP __attribute__((address(0x8F2)));


extern volatile __bit C3SYNC __attribute__((address(0x8F0)));


extern volatile __bit C3ZLF __attribute__((address(0x8F3)));


extern volatile __bit C4HYS __attribute__((address(0x8D1)));


extern volatile __bit C4IE __attribute__((address(0x492)));


extern volatile __bit C4IF __attribute__((address(0x92)));


extern volatile __bit C4INTN __attribute__((address(0x8DE)));


extern volatile __bit C4INTP __attribute__((address(0x8DF)));


extern volatile __bit C4NCH0 __attribute__((address(0x8D8)));


extern volatile __bit C4NCH1 __attribute__((address(0x8D9)));


extern volatile __bit C4NCH2 __attribute__((address(0x8DA)));


extern volatile __bit C4OE __attribute__((address(0x8D5)));


extern volatile __bit C4ON __attribute__((address(0x8D7)));


extern volatile __bit C4OUT __attribute__((address(0x8D6)));


extern volatile __bit C4PCH0 __attribute__((address(0x8DB)));


extern volatile __bit C4PCH1 __attribute__((address(0x8DC)));


extern volatile __bit C4PCH2 __attribute__((address(0x8DD)));


extern volatile __bit C4POL __attribute__((address(0x8D4)));


extern volatile __bit C4SP __attribute__((address(0x8D2)));


extern volatile __bit C4SYNC __attribute__((address(0x8D0)));


extern volatile __bit C4ZLF __attribute__((address(0x8D3)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x48A)));


extern volatile __bit CCP1IF __attribute__((address(0x8A)));


extern volatile __bit CCP1M0 __attribute__((address(0x1498)));


extern volatile __bit CCP1M1 __attribute__((address(0x1499)));


extern volatile __bit CCP1M2 __attribute__((address(0x149A)));


extern volatile __bit CCP1M3 __attribute__((address(0x149B)));


extern volatile __bit CCP1SEL __attribute__((address(0x8EE)));


extern volatile __bit CCP2IE __attribute__((address(0x490)));


extern volatile __bit CCP2IF __attribute__((address(0x90)));


extern volatile __bit CCP2M0 __attribute__((address(0x14D0)));


extern volatile __bit CCP2M1 __attribute__((address(0x14D1)));


extern volatile __bit CCP2M2 __attribute__((address(0x14D2)));


extern volatile __bit CCP2M3 __attribute__((address(0x14D3)));


extern volatile __bit CCP2SEL __attribute__((address(0x8E8)));


extern volatile __bit CCP3IE __attribute__((address(0x49C)));


extern volatile __bit CCP3IF __attribute__((address(0x9C)));


extern volatile __bit CCP3M0 __attribute__((address(0x1898)));


extern volatile __bit CCP3M1 __attribute__((address(0x1899)));


extern volatile __bit CCP3M2 __attribute__((address(0x189A)));


extern volatile __bit CCP3M3 __attribute__((address(0x189B)));


extern volatile __bit CCP3SEL __attribute__((address(0x8E0)));


extern volatile __bit CDAFVR0 __attribute__((address(0x8BA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x8BB)));


extern volatile __bit CFGS __attribute__((address(0xCAE)));


extern volatile __bit CHS0 __attribute__((address(0x4EA)));


extern volatile __bit CHS1 __attribute__((address(0x4EB)));


extern volatile __bit CHS2 __attribute__((address(0x4EC)));


extern volatile __bit CHS3 __attribute__((address(0x4ED)));


extern volatile __bit CHS4 __attribute__((address(0x4EE)));


extern volatile __bit CHSN0 __attribute__((address(0x4F8)));


extern volatile __bit CHSN1 __attribute__((address(0x4F9)));


extern volatile __bit CHSN2 __attribute__((address(0x4FA)));


extern volatile __bit CHSN3 __attribute__((address(0x4FB)));


extern volatile __bit CKE __attribute__((address(0x10A6)));


extern volatile __bit CKP __attribute__((address(0x10AC)));


extern volatile __bit CLKRDC0 __attribute__((address(0x28D3)));


extern volatile __bit CLKRDC1 __attribute__((address(0x28D4)));


extern volatile __bit CLKRDIV0 __attribute__((address(0x28D0)));


extern volatile __bit CLKRDIV1 __attribute__((address(0x28D1)));


extern volatile __bit CLKRDIV2 __attribute__((address(0x28D2)));


extern volatile __bit CLKREN __attribute__((address(0x28D7)));


extern volatile __bit CLKROE __attribute__((address(0x28D6)));


extern volatile __bit CLKRSLR __attribute__((address(0x28D5)));


extern volatile __bit CREN __attribute__((address(0xCEC)));


extern volatile __bit CSRC __attribute__((address(0xCF7)));


extern volatile __bit C_SHAD __attribute__((address(0x7F20)));


extern volatile __bit DACEN __attribute__((address(0x8C7)));


extern volatile __bit DACNSS __attribute__((address(0x8C0)));


extern volatile __bit DACOE1 __attribute__((address(0x8C5)));


extern volatile __bit DACOE2 __attribute__((address(0x8C4)));


extern volatile __bit DACPSS0 __attribute__((address(0x8C2)));


extern volatile __bit DACPSS1 __attribute__((address(0x8C3)));


extern volatile __bit DACR0 __attribute__((address(0x8C8)));


extern volatile __bit DACR1 __attribute__((address(0x8C9)));


extern volatile __bit DACR2 __attribute__((address(0x8CA)));


extern volatile __bit DACR3 __attribute__((address(0x8CB)));


extern volatile __bit DACR4 __attribute__((address(0x8CC)));


extern volatile __bit DACR5 __attribute__((address(0x8CD)));


extern volatile __bit DACR6 __attribute__((address(0x8CE)));


extern volatile __bit DACR7 __attribute__((address(0x8CF)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC1B0 __attribute__((address(0x149C)));


extern volatile __bit DC1B1 __attribute__((address(0x149D)));


extern volatile __bit DC2B0 __attribute__((address(0x14D4)));


extern volatile __bit DC2B1 __attribute__((address(0x14D5)));


extern volatile __bit DC3B0 __attribute__((address(0x189C)));


extern volatile __bit DC3B1 __attribute__((address(0x189D)));


extern volatile __bit DC_SHAD __attribute__((address(0x7F21)));


extern volatile __bit DHEN __attribute__((address(0x10B8)));


extern volatile __bit DONE __attribute__((address(0x4E9)));


extern volatile __bit D_nA __attribute__((address(0x10A5)));


extern volatile __bit EEIE __attribute__((address(0x494)));


extern volatile __bit EEIF __attribute__((address(0x94)));


extern volatile __bit EEPGD __attribute__((address(0xCAF)));


extern volatile __bit FERR __attribute__((address(0xCEA)));


extern volatile __bit FREE __attribute__((address(0xCAC)));


extern volatile __bit FVREN __attribute__((address(0x8BF)));


extern volatile __bit FVRRDY __attribute__((address(0x8BE)));


extern volatile __bit GCEN __attribute__((address(0x10B7)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0x4E9)));


extern volatile __bit GO_nDONE __attribute__((address(0x4E9)));


extern volatile __bit HFIOFL __attribute__((address(0x4D3)));


extern volatile __bit HFIOFR __attribute__((address(0x4D4)));


extern volatile __bit HFIOFS __attribute__((address(0x4D0)));


extern volatile __bit INLVLA0 __attribute__((address(0x1C60)));


extern volatile __bit INLVLA1 __attribute__((address(0x1C61)));


extern volatile __bit INLVLA2 __attribute__((address(0x1C62)));


extern volatile __bit INLVLA3 __attribute__((address(0x1C63)));


extern volatile __bit INLVLA4 __attribute__((address(0x1C64)));


extern volatile __bit INLVLA5 __attribute__((address(0x1C65)));


extern volatile __bit INLVLA6 __attribute__((address(0x1C66)));


extern volatile __bit INLVLA7 __attribute__((address(0x1C67)));


extern volatile __bit INLVLB0 __attribute__((address(0x1C68)));


extern volatile __bit INLVLB1 __attribute__((address(0x1C69)));


extern volatile __bit INLVLB2 __attribute__((address(0x1C6A)));


extern volatile __bit INLVLB3 __attribute__((address(0x1C6B)));


extern volatile __bit INLVLB4 __attribute__((address(0x1C6C)));


extern volatile __bit INLVLB5 __attribute__((address(0x1C6D)));


extern volatile __bit INLVLB6 __attribute__((address(0x1C6E)));


extern volatile __bit INLVLB7 __attribute__((address(0x1C6F)));


extern volatile __bit INLVLC0 __attribute__((address(0x1C70)));


extern volatile __bit INLVLC1 __attribute__((address(0x1C71)));


extern volatile __bit INLVLC2 __attribute__((address(0x1C72)));


extern volatile __bit INLVLC3 __attribute__((address(0x1C73)));


extern volatile __bit INLVLC4 __attribute__((address(0x1C74)));


extern volatile __bit INLVLC5 __attribute__((address(0x1C75)));


extern volatile __bit INLVLC6 __attribute__((address(0x1C76)));


extern volatile __bit INLVLC7 __attribute__((address(0x1C77)));


extern volatile __bit INLVLE3 __attribute__((address(0x1C83)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x4AE)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCAF0 __attribute__((address(0x1C98)));


extern volatile __bit IOCAF1 __attribute__((address(0x1C99)));


extern volatile __bit IOCAF2 __attribute__((address(0x1C9A)));


extern volatile __bit IOCAF3 __attribute__((address(0x1C9B)));


extern volatile __bit IOCAF4 __attribute__((address(0x1C9C)));


extern volatile __bit IOCAF5 __attribute__((address(0x1C9D)));


extern volatile __bit IOCAF6 __attribute__((address(0x1C9E)));


extern volatile __bit IOCAF7 __attribute__((address(0x1C9F)));


extern volatile __bit IOCAN0 __attribute__((address(0x1C90)));


extern volatile __bit IOCAN1 __attribute__((address(0x1C91)));


extern volatile __bit IOCAN2 __attribute__((address(0x1C92)));


extern volatile __bit IOCAN3 __attribute__((address(0x1C93)));


extern volatile __bit IOCAN4 __attribute__((address(0x1C94)));


extern volatile __bit IOCAN5 __attribute__((address(0x1C95)));


extern volatile __bit IOCAN6 __attribute__((address(0x1C96)));


extern volatile __bit IOCAN7 __attribute__((address(0x1C97)));


extern volatile __bit IOCAP0 __attribute__((address(0x1C88)));


extern volatile __bit IOCAP1 __attribute__((address(0x1C89)));


extern volatile __bit IOCAP2 __attribute__((address(0x1C8A)));


extern volatile __bit IOCAP3 __attribute__((address(0x1C8B)));


extern volatile __bit IOCAP4 __attribute__((address(0x1C8C)));


extern volatile __bit IOCAP5 __attribute__((address(0x1C8D)));


extern volatile __bit IOCAP6 __attribute__((address(0x1C8E)));


extern volatile __bit IOCAP7 __attribute__((address(0x1C8F)));


extern volatile __bit IOCBF0 __attribute__((address(0x1CB0)));


extern volatile __bit IOCBF1 __attribute__((address(0x1CB1)));


extern volatile __bit IOCBF2 __attribute__((address(0x1CB2)));


extern volatile __bit IOCBF3 __attribute__((address(0x1CB3)));


extern volatile __bit IOCBF4 __attribute__((address(0x1CB4)));


extern volatile __bit IOCBF5 __attribute__((address(0x1CB5)));


extern volatile __bit IOCBF6 __attribute__((address(0x1CB6)));


extern volatile __bit IOCBF7 __attribute__((address(0x1CB7)));


extern volatile __bit IOCBN0 __attribute__((address(0x1CA8)));


extern volatile __bit IOCBN1 __attribute__((address(0x1CA9)));


extern volatile __bit IOCBN2 __attribute__((address(0x1CAA)));


extern volatile __bit IOCBN3 __attribute__((address(0x1CAB)));


extern volatile __bit IOCBN4 __attribute__((address(0x1CAC)));


extern volatile __bit IOCBN5 __attribute__((address(0x1CAD)));


extern volatile __bit IOCBN6 __attribute__((address(0x1CAE)));


extern volatile __bit IOCBN7 __attribute__((address(0x1CAF)));


extern volatile __bit IOCBP0 __attribute__((address(0x1CA0)));


extern volatile __bit IOCBP1 __attribute__((address(0x1CA1)));


extern volatile __bit IOCBP2 __attribute__((address(0x1CA2)));


extern volatile __bit IOCBP3 __attribute__((address(0x1CA3)));


extern volatile __bit IOCBP4 __attribute__((address(0x1CA4)));


extern volatile __bit IOCBP5 __attribute__((address(0x1CA5)));


extern volatile __bit IOCBP6 __attribute__((address(0x1CA6)));


extern volatile __bit IOCBP7 __attribute__((address(0x1CA7)));


extern volatile __bit IOCCF0 __attribute__((address(0x1CC8)));


extern volatile __bit IOCCF1 __attribute__((address(0x1CC9)));


extern volatile __bit IOCCF2 __attribute__((address(0x1CCA)));


extern volatile __bit IOCCF3 __attribute__((address(0x1CCB)));


extern volatile __bit IOCCF4 __attribute__((address(0x1CCC)));


extern volatile __bit IOCCF5 __attribute__((address(0x1CCD)));


extern volatile __bit IOCCF6 __attribute__((address(0x1CCE)));


extern volatile __bit IOCCF7 __attribute__((address(0x1CCF)));


extern volatile __bit IOCCN0 __attribute__((address(0x1CC0)));


extern volatile __bit IOCCN1 __attribute__((address(0x1CC1)));


extern volatile __bit IOCCN2 __attribute__((address(0x1CC2)));


extern volatile __bit IOCCN3 __attribute__((address(0x1CC3)));


extern volatile __bit IOCCN4 __attribute__((address(0x1CC4)));


extern volatile __bit IOCCN5 __attribute__((address(0x1CC5)));


extern volatile __bit IOCCN6 __attribute__((address(0x1CC6)));


extern volatile __bit IOCCN7 __attribute__((address(0x1CC7)));


extern volatile __bit IOCCP0 __attribute__((address(0x1CB8)));


extern volatile __bit IOCCP1 __attribute__((address(0x1CB9)));


extern volatile __bit IOCCP2 __attribute__((address(0x1CBA)));


extern volatile __bit IOCCP3 __attribute__((address(0x1CBB)));


extern volatile __bit IOCCP4 __attribute__((address(0x1CBC)));


extern volatile __bit IOCCP5 __attribute__((address(0x1CBD)));


extern volatile __bit IOCCP6 __attribute__((address(0x1CBE)));


extern volatile __bit IOCCP7 __attribute__((address(0x1CBF)));


extern volatile __bit IOCEF3 __attribute__((address(0x1CFB)));


extern volatile __bit IOCEN3 __attribute__((address(0x1CF3)));


extern volatile __bit IOCEP3 __attribute__((address(0x1CEB)));


extern volatile __bit IOCIE __attribute__((address(0x5B)));


extern volatile __bit IOCIF __attribute__((address(0x58)));


extern volatile __bit IRCF0 __attribute__((address(0x4CB)));


extern volatile __bit IRCF1 __attribute__((address(0x4CC)));


extern volatile __bit IRCF2 __attribute__((address(0x4CD)));


extern volatile __bit IRCF3 __attribute__((address(0x4CE)));


extern volatile __bit LATA0 __attribute__((address(0x860)));


extern volatile __bit LATA1 __attribute__((address(0x861)));


extern volatile __bit LATA2 __attribute__((address(0x862)));


extern volatile __bit LATA3 __attribute__((address(0x863)));


extern volatile __bit LATA4 __attribute__((address(0x864)));


extern volatile __bit LATA5 __attribute__((address(0x865)));


extern volatile __bit LATA6 __attribute__((address(0x866)));


extern volatile __bit LATA7 __attribute__((address(0x867)));


extern volatile __bit LATB0 __attribute__((address(0x868)));


extern volatile __bit LATB1 __attribute__((address(0x869)));


extern volatile __bit LATB2 __attribute__((address(0x86A)));


extern volatile __bit LATB3 __attribute__((address(0x86B)));


extern volatile __bit LATB4 __attribute__((address(0x86C)));


extern volatile __bit LATB5 __attribute__((address(0x86D)));


extern volatile __bit LATB6 __attribute__((address(0x86E)));


extern volatile __bit LATB7 __attribute__((address(0x86F)));


extern volatile __bit LATC0 __attribute__((address(0x870)));


extern volatile __bit LATC1 __attribute__((address(0x871)));


extern volatile __bit LATC2 __attribute__((address(0x872)));


extern volatile __bit LATC3 __attribute__((address(0x873)));


extern volatile __bit LATC4 __attribute__((address(0x874)));


extern volatile __bit LATC5 __attribute__((address(0x875)));


extern volatile __bit LATC6 __attribute__((address(0x876)));


extern volatile __bit LATC7 __attribute__((address(0x877)));


extern volatile __bit LFIOFR __attribute__((address(0x4D1)));


extern volatile __bit LWLO __attribute__((address(0xCAD)));


extern volatile __bit MC1OUT __attribute__((address(0x8A8)));


extern volatile __bit MC2OUT __attribute__((address(0x8A9)));


extern volatile __bit MC3OUT __attribute__((address(0x8AA)));


extern volatile __bit MC4OUT __attribute__((address(0x8AB)));


extern volatile __bit MFIOFR __attribute__((address(0x4D2)));


extern volatile __bit MSK0 __attribute__((address(0x1098)));


extern volatile __bit MSK1 __attribute__((address(0x1099)));


extern volatile __bit MSK2 __attribute__((address(0x109A)));


extern volatile __bit MSK3 __attribute__((address(0x109B)));


extern volatile __bit MSK4 __attribute__((address(0x109C)));


extern volatile __bit MSK5 __attribute__((address(0x109D)));


extern volatile __bit MSK6 __attribute__((address(0x109E)));


extern volatile __bit MSK7 __attribute__((address(0x109F)));


extern volatile __bit ODCONA0 __attribute__((address(0x1460)));


extern volatile __bit ODCONA1 __attribute__((address(0x1461)));


extern volatile __bit ODCONA2 __attribute__((address(0x1462)));


extern volatile __bit ODCONA3 __attribute__((address(0x1463)));


extern volatile __bit ODCONA4 __attribute__((address(0x1464)));


extern volatile __bit ODCONA5 __attribute__((address(0x1465)));


extern volatile __bit ODCONA6 __attribute__((address(0x1466)));


extern volatile __bit ODCONA7 __attribute__((address(0x1467)));


extern volatile __bit ODCONB0 __attribute__((address(0x1468)));


extern volatile __bit ODCONB1 __attribute__((address(0x1469)));


extern volatile __bit ODCONB2 __attribute__((address(0x146A)));


extern volatile __bit ODCONB3 __attribute__((address(0x146B)));


extern volatile __bit ODCONB4 __attribute__((address(0x146C)));


extern volatile __bit ODCONB5 __attribute__((address(0x146D)));


extern volatile __bit ODCONB6 __attribute__((address(0x146E)));


extern volatile __bit ODCONB7 __attribute__((address(0x146F)));


extern volatile __bit ODCONC0 __attribute__((address(0x1470)));


extern volatile __bit ODCONC1 __attribute__((address(0x1471)));


extern volatile __bit ODCONC2 __attribute__((address(0x1472)));


extern volatile __bit ODCONC3 __attribute__((address(0x1473)));


extern volatile __bit ODCONC4 __attribute__((address(0x1474)));


extern volatile __bit ODCONC5 __attribute__((address(0x1475)));


extern volatile __bit ODCONC6 __attribute__((address(0x1476)));


extern volatile __bit ODCONC7 __attribute__((address(0x1477)));


extern volatile __bit OERR __attribute__((address(0xCE9)));


extern volatile __bit OPA1EN __attribute__((address(0x288F)));


extern volatile __bit OPA1PCH0 __attribute__((address(0x2888)));


extern volatile __bit OPA1PCH1 __attribute__((address(0x2889)));


extern volatile __bit OPA1SP __attribute__((address(0x288E)));


extern volatile __bit OPA2EN __attribute__((address(0x289F)));


extern volatile __bit OPA2PCH0 __attribute__((address(0x2898)));


extern volatile __bit OPA2PCH1 __attribute__((address(0x2899)));


extern volatile __bit OPA2SP __attribute__((address(0x289E)));


extern volatile __bit OSFIE __attribute__((address(0x497)));


extern volatile __bit OSFIF __attribute__((address(0x97)));


extern volatile __bit OSTS __attribute__((address(0x4D5)));


extern volatile __bit P1ARSEN __attribute__((address(0x40ED)));


extern volatile __bit P1ASDEN __attribute__((address(0x40EE)));


extern volatile __bit P1ASDLA __attribute__((address(0x40F0)));


extern volatile __bit P1ASDLB __attribute__((address(0x40F1)));


extern volatile __bit P1ASDLC __attribute__((address(0x40F2)));


extern volatile __bit P1ASDLD __attribute__((address(0x40F3)));


extern volatile __bit P1ASDLE __attribute__((address(0x40F4)));


extern volatile __bit P1ASDLF __attribute__((address(0x40F5)));


extern volatile __bit P1ASDOV __attribute__((address(0x40E8)));


extern volatile __bit P1ASDSC1 __attribute__((address(0x40F9)));


extern volatile __bit P1ASDSC2 __attribute__((address(0x40FA)));


extern volatile __bit P1ASDSC3 __attribute__((address(0x40FB)));


extern volatile __bit P1ASDSC4 __attribute__((address(0x40FC)));


extern volatile __bit P1ASDSIN __attribute__((address(0x40FF)));


extern volatile __bit P1ASE __attribute__((address(0x40EF)));


extern volatile __bit P1CPRE0 __attribute__((address(0x40A4)));


extern volatile __bit P1CPRE1 __attribute__((address(0x40A5)));


extern volatile __bit P1CSRC0 __attribute__((address(0x40A0)));


extern volatile __bit P1CSRC1 __attribute__((address(0x40A1)));


extern volatile __bit P1DBFE __attribute__((address(0x408D)));


extern volatile __bit P1DBRE __attribute__((address(0x408C)));


extern volatile __bit P1DCPOL __attribute__((address(0x409D)));


extern volatile __bit P1DCSC1 __attribute__((address(0x40D9)));


extern volatile __bit P1DCSC2 __attribute__((address(0x40DA)));


extern volatile __bit P1DCSC3 __attribute__((address(0x40DB)));


extern volatile __bit P1DCSC4 __attribute__((address(0x40DC)));


extern volatile __bit P1DCSIN __attribute__((address(0x40DF)));


extern volatile __bit P1DCST __attribute__((address(0x40D8)));


extern volatile __bit P1FEBM0 __attribute__((address(0x40BC)));


extern volatile __bit P1FEBM1 __attribute__((address(0x40BD)));


extern volatile __bit P1FEBSC1 __attribute__((address(0x40C9)));


extern volatile __bit P1FEBSC2 __attribute__((address(0x40CA)));


extern volatile __bit P1FEBSC3 __attribute__((address(0x40CB)));


extern volatile __bit P1FEBSC4 __attribute__((address(0x40CC)));


extern volatile __bit P1FEBSIN __attribute__((address(0x40CF)));


extern volatile __bit P1HSMEN __attribute__((address(0x4178)));


extern volatile __bit P1INPOL __attribute__((address(0x40B6)));


extern volatile __bit P1LSMEN __attribute__((address(0x4179)));


extern volatile __bit P1MDLBIT __attribute__((address(0x4095)));


extern volatile __bit P1MDLEN __attribute__((address(0x4097)));


extern volatile __bit P1MDLPOL __attribute__((address(0x4096)));


extern volatile __bit P1MODE0 __attribute__((address(0x4088)));


extern volatile __bit P1MODE1 __attribute__((address(0x4089)));


extern volatile __bit P1MODE2 __attribute__((address(0x408A)));


extern volatile __bit P1MODE3 __attribute__((address(0x408B)));


extern volatile __bit P1MSRC0 __attribute__((address(0x4090)));


extern volatile __bit P1MSRC1 __attribute__((address(0x4091)));


extern volatile __bit P1MSRC2 __attribute__((address(0x4092)));


extern volatile __bit P1MSRC3 __attribute__((address(0x4093)));


extern volatile __bit P1OEA __attribute__((address(0x40A8)));


extern volatile __bit P1OEB __attribute__((address(0x40A9)));


extern volatile __bit P1OEC __attribute__((address(0x40AA)));


extern volatile __bit P1OED __attribute__((address(0x40AB)));


extern volatile __bit P1OEE __attribute__((address(0x40AC)));


extern volatile __bit P1OEF __attribute__((address(0x40AD)));


extern volatile __bit P1PHSC1 __attribute__((address(0x40D1)));


extern volatile __bit P1PHSC2 __attribute__((address(0x40D2)));


extern volatile __bit P1PHSC3 __attribute__((address(0x40D3)));


extern volatile __bit P1PHSC4 __attribute__((address(0x40D4)));


extern volatile __bit P1PHSIN __attribute__((address(0x40D7)));


extern volatile __bit P1PHST __attribute__((address(0x40D0)));


extern volatile __bit P1POFST __attribute__((address(0x409F)));


extern volatile __bit P1POLA __attribute__((address(0x40B0)));


extern volatile __bit P1POLB __attribute__((address(0x40B1)));


extern volatile __bit P1POLC __attribute__((address(0x40B2)));


extern volatile __bit P1POLD __attribute__((address(0x40B3)));


extern volatile __bit P1POLE __attribute__((address(0x40B4)));


extern volatile __bit P1POLF __attribute__((address(0x40B5)));


extern volatile __bit P1PRPOL __attribute__((address(0x409E)));


extern volatile __bit P1PRSC1 __attribute__((address(0x40E1)));


extern volatile __bit P1PRSC2 __attribute__((address(0x40E2)));


extern volatile __bit P1PRSC3 __attribute__((address(0x40E3)));


extern volatile __bit P1PRSC4 __attribute__((address(0x40E4)));


extern volatile __bit P1PRSIN __attribute__((address(0x40E7)));


extern volatile __bit P1PRST __attribute__((address(0x40E0)));


extern volatile __bit P1REBM0 __attribute__((address(0x40B8)));


extern volatile __bit P1REBM1 __attribute__((address(0x40B9)));


extern volatile __bit P1REBSC1 __attribute__((address(0x40C1)));


extern volatile __bit P1REBSC2 __attribute__((address(0x40C2)));


extern volatile __bit P1REBSC3 __attribute__((address(0x40C3)));


extern volatile __bit P1REBSC4 __attribute__((address(0x40C4)));


extern volatile __bit P1REBSIN __attribute__((address(0x40C7)));


extern volatile __bit P1SSYNC __attribute__((address(0x417F)));


extern volatile __bit P1STRA __attribute__((address(0x4170)));


extern volatile __bit P1STRB __attribute__((address(0x4171)));


extern volatile __bit P1STRC __attribute__((address(0x4172)));


extern volatile __bit P1STRD __attribute__((address(0x4173)));


extern volatile __bit P1STRE __attribute__((address(0x4174)));


extern volatile __bit P1STRF __attribute__((address(0x4175)));


extern volatile __bit P1SYNC0 __attribute__((address(0x4098)));


extern volatile __bit P1SYNC1 __attribute__((address(0x4099)));


extern volatile __bit P1SYNC2 __attribute__((address(0x409A)));


extern volatile __bit P1TDCIE __attribute__((address(0x4105)));


extern volatile __bit P1TDCIF __attribute__((address(0x4101)));


extern volatile __bit P1TOVIE __attribute__((address(0x4107)));


extern volatile __bit P1TOVIF __attribute__((address(0x4103)));


extern volatile __bit P1TPHIE __attribute__((address(0x4106)));


extern volatile __bit P1TPHIF __attribute__((address(0x4102)));


extern volatile __bit P1TPRIE __attribute__((address(0x4104)));


extern volatile __bit P1TPRIF __attribute__((address(0x4100)));


extern volatile __bit P2ARSEN __attribute__((address(0x41ED)));


extern volatile __bit P2ASDEN __attribute__((address(0x41EE)));


extern volatile __bit P2ASDLA __attribute__((address(0x41F0)));


extern volatile __bit P2ASDLB __attribute__((address(0x41F1)));


extern volatile __bit P2ASDOV __attribute__((address(0x41E8)));


extern volatile __bit P2ASDSC1 __attribute__((address(0x41F9)));


extern volatile __bit P2ASDSC2 __attribute__((address(0x41FA)));


extern volatile __bit P2ASDSC3 __attribute__((address(0x41FB)));


extern volatile __bit P2ASDSC4 __attribute__((address(0x41FC)));


extern volatile __bit P2ASDSIN __attribute__((address(0x41FF)));


extern volatile __bit P2ASE __attribute__((address(0x41EF)));


extern volatile __bit P2CPRE0 __attribute__((address(0x41A4)));


extern volatile __bit P2CPRE1 __attribute__((address(0x41A5)));


extern volatile __bit P2CSRC0 __attribute__((address(0x41A0)));


extern volatile __bit P2CSRC1 __attribute__((address(0x41A1)));


extern volatile __bit P2DBFE __attribute__((address(0x418D)));


extern volatile __bit P2DBRE __attribute__((address(0x418C)));


extern volatile __bit P2DCPOL __attribute__((address(0x419D)));


extern volatile __bit P2DCSC1 __attribute__((address(0x41D9)));


extern volatile __bit P2DCSC2 __attribute__((address(0x41DA)));


extern volatile __bit P2DCSC3 __attribute__((address(0x41DB)));


extern volatile __bit P2DCSC4 __attribute__((address(0x41DC)));


extern volatile __bit P2DCSIN __attribute__((address(0x41DF)));


extern volatile __bit P2DCST __attribute__((address(0x41D8)));


extern volatile __bit P2FEBM0 __attribute__((address(0x41BC)));


extern volatile __bit P2FEBM1 __attribute__((address(0x41BD)));


extern volatile __bit P2FEBSC1 __attribute__((address(0x41C9)));


extern volatile __bit P2FEBSC2 __attribute__((address(0x41CA)));


extern volatile __bit P2FEBSC3 __attribute__((address(0x41CB)));


extern volatile __bit P2FEBSC4 __attribute__((address(0x41CC)));


extern volatile __bit P2FEBSIN __attribute__((address(0x41CF)));


extern volatile __bit P2HSMEN __attribute__((address(0x4278)));


extern volatile __bit P2INPOL __attribute__((address(0x41B6)));


extern volatile __bit P2LSMEN __attribute__((address(0x4279)));


extern volatile __bit P2MDLBIT __attribute__((address(0x4195)));


extern volatile __bit P2MDLEN __attribute__((address(0x4197)));


extern volatile __bit P2MDLPOL __attribute__((address(0x4196)));


extern volatile __bit P2MODE0 __attribute__((address(0x4188)));


extern volatile __bit P2MODE1 __attribute__((address(0x4189)));


extern volatile __bit P2MODE2 __attribute__((address(0x418A)));


extern volatile __bit P2MODE3 __attribute__((address(0x418B)));


extern volatile __bit P2MSRC0 __attribute__((address(0x4190)));


extern volatile __bit P2MSRC1 __attribute__((address(0x4191)));


extern volatile __bit P2MSRC2 __attribute__((address(0x4192)));


extern volatile __bit P2MSRC3 __attribute__((address(0x4193)));


extern volatile __bit P2OEA __attribute__((address(0x41A8)));


extern volatile __bit P2OEB __attribute__((address(0x41A9)));


extern volatile __bit P2PHSC1 __attribute__((address(0x41D1)));


extern volatile __bit P2PHSC2 __attribute__((address(0x41D2)));


extern volatile __bit P2PHSC3 __attribute__((address(0x41D3)));


extern volatile __bit P2PHSC4 __attribute__((address(0x41D4)));


extern volatile __bit P2PHSIN __attribute__((address(0x41D7)));


extern volatile __bit P2PHST __attribute__((address(0x41D0)));


extern volatile __bit P2POFST __attribute__((address(0x419F)));


extern volatile __bit P2POLA __attribute__((address(0x41B0)));


extern volatile __bit P2POLB __attribute__((address(0x41B1)));


extern volatile __bit P2PRPOL __attribute__((address(0x419E)));


extern volatile __bit P2PRSC1 __attribute__((address(0x41E1)));


extern volatile __bit P2PRSC2 __attribute__((address(0x41E2)));


extern volatile __bit P2PRSC3 __attribute__((address(0x41E3)));


extern volatile __bit P2PRSC4 __attribute__((address(0x41E4)));


extern volatile __bit P2PRSIN __attribute__((address(0x41E7)));


extern volatile __bit P2PRST __attribute__((address(0x41E0)));


extern volatile __bit P2REBM0 __attribute__((address(0x41B8)));


extern volatile __bit P2REBM1 __attribute__((address(0x41B9)));


extern volatile __bit P2REBSC1 __attribute__((address(0x41C1)));


extern volatile __bit P2REBSC2 __attribute__((address(0x41C2)));


extern volatile __bit P2REBSC3 __attribute__((address(0x41C3)));


extern volatile __bit P2REBSC4 __attribute__((address(0x41C4)));


extern volatile __bit P2REBSIN __attribute__((address(0x41C7)));


extern volatile __bit P2SSYNC __attribute__((address(0x427F)));


extern volatile __bit P2STRA __attribute__((address(0x4270)));


extern volatile __bit P2STRB __attribute__((address(0x4271)));


extern volatile __bit P2SYNC0 __attribute__((address(0x4198)));


extern volatile __bit P2SYNC1 __attribute__((address(0x4199)));


extern volatile __bit P2SYNC2 __attribute__((address(0x419A)));


extern volatile __bit P2TDCIE __attribute__((address(0x4205)));


extern volatile __bit P2TDCIF __attribute__((address(0x4201)));


extern volatile __bit P2TOVIE __attribute__((address(0x4207)));


extern volatile __bit P2TOVIF __attribute__((address(0x4203)));


extern volatile __bit P2TPHIE __attribute__((address(0x4206)));


extern volatile __bit P2TPHIF __attribute__((address(0x4202)));


extern volatile __bit P2TPRIE __attribute__((address(0x4204)));


extern volatile __bit P2TPRIF __attribute__((address(0x4200)));


extern volatile __bit P3ARSEN __attribute__((address(0x42ED)));


extern volatile __bit P3ASDEN __attribute__((address(0x42EE)));


extern volatile __bit P3ASDLA __attribute__((address(0x42F0)));


extern volatile __bit P3ASDLB __attribute__((address(0x42F1)));


extern volatile __bit P3ASDLC __attribute__((address(0x42F2)));


extern volatile __bit P3ASDLD __attribute__((address(0x42F3)));


extern volatile __bit P3ASDLE __attribute__((address(0x42F4)));


extern volatile __bit P3ASDLF __attribute__((address(0x42F5)));


extern volatile __bit P3ASDOV __attribute__((address(0x42E8)));


extern volatile __bit P3ASDSC1 __attribute__((address(0x42F9)));


extern volatile __bit P3ASDSC2 __attribute__((address(0x42FA)));


extern volatile __bit P3ASDSC3 __attribute__((address(0x42FB)));


extern volatile __bit P3ASDSC4 __attribute__((address(0x42FC)));


extern volatile __bit P3ASDSIN __attribute__((address(0x42FF)));


extern volatile __bit P3ASE __attribute__((address(0x42EF)));


extern volatile __bit P3CPRE0 __attribute__((address(0x42A4)));


extern volatile __bit P3CPRE1 __attribute__((address(0x42A5)));


extern volatile __bit P3CSRC0 __attribute__((address(0x42A0)));


extern volatile __bit P3CSRC1 __attribute__((address(0x42A1)));


extern volatile __bit P3DBFE __attribute__((address(0x428D)));


extern volatile __bit P3DBRE __attribute__((address(0x428C)));


extern volatile __bit P3DCPOL __attribute__((address(0x429D)));


extern volatile __bit P3DCSC1 __attribute__((address(0x42D9)));


extern volatile __bit P3DCSC2 __attribute__((address(0x42DA)));


extern volatile __bit P3DCSC3 __attribute__((address(0x42DB)));


extern volatile __bit P3DCSC4 __attribute__((address(0x42DC)));


extern volatile __bit P3DCSIN __attribute__((address(0x42DF)));


extern volatile __bit P3DCST __attribute__((address(0x42D8)));


extern volatile __bit P3FEBM0 __attribute__((address(0x42BC)));


extern volatile __bit P3FEBM1 __attribute__((address(0x42BD)));


extern volatile __bit P3FEBSC1 __attribute__((address(0x42C9)));


extern volatile __bit P3FEBSC2 __attribute__((address(0x42CA)));


extern volatile __bit P3FEBSC3 __attribute__((address(0x42CB)));


extern volatile __bit P3FEBSC4 __attribute__((address(0x42CC)));


extern volatile __bit P3FEBSIN __attribute__((address(0x42CF)));


extern volatile __bit P3HSMEN __attribute__((address(0x4378)));


extern volatile __bit P3INPOL __attribute__((address(0x42B6)));


extern volatile __bit P3LSMEN __attribute__((address(0x4379)));


extern volatile __bit P3MDLBIT __attribute__((address(0x4295)));


extern volatile __bit P3MDLEN __attribute__((address(0x4297)));


extern volatile __bit P3MDLPOL __attribute__((address(0x4296)));


extern volatile __bit P3MODE0 __attribute__((address(0x4288)));


extern volatile __bit P3MODE1 __attribute__((address(0x4289)));


extern volatile __bit P3MODE2 __attribute__((address(0x428A)));


extern volatile __bit P3MODE3 __attribute__((address(0x428B)));


extern volatile __bit P3MSRC0 __attribute__((address(0x4290)));


extern volatile __bit P3MSRC1 __attribute__((address(0x4291)));


extern volatile __bit P3MSRC2 __attribute__((address(0x4292)));


extern volatile __bit P3MSRC3 __attribute__((address(0x4293)));


extern volatile __bit P3OEA __attribute__((address(0x42A8)));


extern volatile __bit P3OEB __attribute__((address(0x42A9)));


extern volatile __bit P3PHSC1 __attribute__((address(0x42D1)));


extern volatile __bit P3PHSC2 __attribute__((address(0x42D2)));


extern volatile __bit P3PHSC3 __attribute__((address(0x42D3)));


extern volatile __bit P3PHSC4 __attribute__((address(0x42D4)));


extern volatile __bit P3PHSIN __attribute__((address(0x42D7)));


extern volatile __bit P3PHST __attribute__((address(0x42D0)));


extern volatile __bit P3POFST __attribute__((address(0x429F)));


extern volatile __bit P3POLA __attribute__((address(0x42B0)));


extern volatile __bit P3POLB __attribute__((address(0x42B1)));


extern volatile __bit P3PRPOL __attribute__((address(0x429E)));


extern volatile __bit P3PRSC1 __attribute__((address(0x42E1)));


extern volatile __bit P3PRSC2 __attribute__((address(0x42E2)));


extern volatile __bit P3PRSC3 __attribute__((address(0x42E3)));


extern volatile __bit P3PRSC4 __attribute__((address(0x42E4)));


extern volatile __bit P3PRSIN __attribute__((address(0x42E7)));


extern volatile __bit P3PRST __attribute__((address(0x42E0)));


extern volatile __bit P3REBM0 __attribute__((address(0x42B8)));


extern volatile __bit P3REBM1 __attribute__((address(0x42B9)));


extern volatile __bit P3REBSC1 __attribute__((address(0x42C1)));


extern volatile __bit P3REBSC2 __attribute__((address(0x42C2)));


extern volatile __bit P3REBSC3 __attribute__((address(0x42C3)));


extern volatile __bit P3REBSC4 __attribute__((address(0x42C4)));


extern volatile __bit P3REBSIN __attribute__((address(0x42C7)));


extern volatile __bit P3SSYNC __attribute__((address(0x437F)));


extern volatile __bit P3STRA __attribute__((address(0x4370)));


extern volatile __bit P3STRB __attribute__((address(0x4371)));


extern volatile __bit P3SYNC0 __attribute__((address(0x4298)));


extern volatile __bit P3SYNC1 __attribute__((address(0x4299)));


extern volatile __bit P3SYNC2 __attribute__((address(0x429A)));


extern volatile __bit P3TDCIE __attribute__((address(0x4305)));


extern volatile __bit P3TDCIF __attribute__((address(0x4301)));


extern volatile __bit P3TOVIE __attribute__((address(0x4307)));


extern volatile __bit P3TOVIF __attribute__((address(0x4303)));


extern volatile __bit P3TPHIE __attribute__((address(0x4306)));


extern volatile __bit P3TPHIF __attribute__((address(0x4302)));


extern volatile __bit P3TPRIE __attribute__((address(0x4304)));


extern volatile __bit P3TPRIF __attribute__((address(0x4300)));


extern volatile __bit PCIE __attribute__((address(0x10BE)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x10B2)));


extern volatile __bit PLLR __attribute__((address(0x4D6)));


extern volatile __bit PMSC3TIE __attribute__((address(0x4A6)));


extern volatile __bit PS0 __attribute__((address(0x4A8)));


extern volatile __bit PS1 __attribute__((address(0x4A9)));


extern volatile __bit PS2 __attribute__((address(0x4AA)));


extern volatile __bit PSA __attribute__((address(0x4AB)));


extern volatile __bit PSMC1BLKF0 __attribute__((address(0x4160)));


extern volatile __bit PSMC1BLKF1 __attribute__((address(0x4161)));


extern volatile __bit PSMC1BLKF2 __attribute__((address(0x4162)));


extern volatile __bit PSMC1BLKF3 __attribute__((address(0x4163)));


extern volatile __bit PSMC1BLKF4 __attribute__((address(0x4164)));


extern volatile __bit PSMC1BLKF5 __attribute__((address(0x4165)));


extern volatile __bit PSMC1BLKF6 __attribute__((address(0x4166)));


extern volatile __bit PSMC1BLKF7 __attribute__((address(0x4167)));


extern volatile __bit PSMC1BLKR0 __attribute__((address(0x4158)));


extern volatile __bit PSMC1BLKR1 __attribute__((address(0x4159)));


extern volatile __bit PSMC1BLKR2 __attribute__((address(0x415A)));


extern volatile __bit PSMC1BLKR3 __attribute__((address(0x415B)));


extern volatile __bit PSMC1BLKR4 __attribute__((address(0x415C)));


extern volatile __bit PSMC1BLKR5 __attribute__((address(0x415D)));


extern volatile __bit PSMC1BLKR6 __attribute__((address(0x415E)));


extern volatile __bit PSMC1BLKR7 __attribute__((address(0x415F)));


extern volatile __bit PSMC1DBF0 __attribute__((address(0x4150)));


extern volatile __bit PSMC1DBF1 __attribute__((address(0x4151)));


extern volatile __bit PSMC1DBF2 __attribute__((address(0x4152)));


extern volatile __bit PSMC1DBF3 __attribute__((address(0x4153)));


extern volatile __bit PSMC1DBF4 __attribute__((address(0x4154)));


extern volatile __bit PSMC1DBF5 __attribute__((address(0x4155)));


extern volatile __bit PSMC1DBF6 __attribute__((address(0x4156)));


extern volatile __bit PSMC1DBF7 __attribute__((address(0x4157)));


extern volatile __bit PSMC1DBR0 __attribute__((address(0x4148)));


extern volatile __bit PSMC1DBR1 __attribute__((address(0x4149)));


extern volatile __bit PSMC1DBR2 __attribute__((address(0x414A)));


extern volatile __bit PSMC1DBR3 __attribute__((address(0x414B)));


extern volatile __bit PSMC1DBR4 __attribute__((address(0x414C)));


extern volatile __bit PSMC1DBR5 __attribute__((address(0x414D)));


extern volatile __bit PSMC1DBR6 __attribute__((address(0x414E)));


extern volatile __bit PSMC1DBR7 __attribute__((address(0x414F)));


extern volatile __bit PSMC1DC0 __attribute__((address(0x4118)));


extern volatile __bit PSMC1DC1 __attribute__((address(0x4119)));


extern volatile __bit PSMC1DC10 __attribute__((address(0x4122)));


extern volatile __bit PSMC1DC11 __attribute__((address(0x4123)));


extern volatile __bit PSMC1DC12 __attribute__((address(0x4124)));


extern volatile __bit PSMC1DC13 __attribute__((address(0x4125)));


extern volatile __bit PSMC1DC14 __attribute__((address(0x4126)));


extern volatile __bit PSMC1DC15 __attribute__((address(0x4127)));


extern volatile __bit PSMC1DC2 __attribute__((address(0x411A)));


extern volatile __bit PSMC1DC3 __attribute__((address(0x411B)));


extern volatile __bit PSMC1DC4 __attribute__((address(0x411C)));


extern volatile __bit PSMC1DC5 __attribute__((address(0x411D)));


extern volatile __bit PSMC1DC6 __attribute__((address(0x411E)));


extern volatile __bit PSMC1DC7 __attribute__((address(0x411F)));


extern volatile __bit PSMC1DC8 __attribute__((address(0x4120)));


extern volatile __bit PSMC1DC9 __attribute__((address(0x4121)));


extern volatile __bit PSMC1EN __attribute__((address(0x408F)));


extern volatile __bit PSMC1FFA0 __attribute__((address(0x4168)));


extern volatile __bit PSMC1FFA1 __attribute__((address(0x4169)));


extern volatile __bit PSMC1FFA2 __attribute__((address(0x416A)));


extern volatile __bit PSMC1FFA3 __attribute__((address(0x416B)));


extern volatile __bit PSMC1LD __attribute__((address(0x408E)));


extern volatile __bit PSMC1PH0 __attribute__((address(0x4108)));


extern volatile __bit PSMC1PH1 __attribute__((address(0x4109)));


extern volatile __bit PSMC1PH10 __attribute__((address(0x4112)));


extern volatile __bit PSMC1PH11 __attribute__((address(0x4113)));


extern volatile __bit PSMC1PH12 __attribute__((address(0x4114)));


extern volatile __bit PSMC1PH13 __attribute__((address(0x4115)));


extern volatile __bit PSMC1PH14 __attribute__((address(0x4116)));


extern volatile __bit PSMC1PH15 __attribute__((address(0x4117)));


extern volatile __bit PSMC1PH2 __attribute__((address(0x410A)));


extern volatile __bit PSMC1PH3 __attribute__((address(0x410B)));


extern volatile __bit PSMC1PH4 __attribute__((address(0x410C)));


extern volatile __bit PSMC1PH5 __attribute__((address(0x410D)));


extern volatile __bit PSMC1PH6 __attribute__((address(0x410E)));


extern volatile __bit PSMC1PH7 __attribute__((address(0x410F)));


extern volatile __bit PSMC1PH8 __attribute__((address(0x4110)));


extern volatile __bit PSMC1PH9 __attribute__((address(0x4111)));


extern volatile __bit PSMC1PR0 __attribute__((address(0x4128)));


extern volatile __bit PSMC1PR1 __attribute__((address(0x4129)));


extern volatile __bit PSMC1PR10 __attribute__((address(0x4132)));


extern volatile __bit PSMC1PR11 __attribute__((address(0x4133)));


extern volatile __bit PSMC1PR12 __attribute__((address(0x4134)));


extern volatile __bit PSMC1PR13 __attribute__((address(0x4135)));


extern volatile __bit PSMC1PR14 __attribute__((address(0x4136)));


extern volatile __bit PSMC1PR15 __attribute__((address(0x4137)));


extern volatile __bit PSMC1PR2 __attribute__((address(0x412A)));


extern volatile __bit PSMC1PR3 __attribute__((address(0x412B)));


extern volatile __bit PSMC1PR4 __attribute__((address(0x412C)));


extern volatile __bit PSMC1PR5 __attribute__((address(0x412D)));


extern volatile __bit PSMC1PR6 __attribute__((address(0x412E)));


extern volatile __bit PSMC1PR7 __attribute__((address(0x412F)));


extern volatile __bit PSMC1PR8 __attribute__((address(0x4130)));


extern volatile __bit PSMC1PR9 __attribute__((address(0x4131)));


extern volatile __bit PSMC1SIE __attribute__((address(0x4A0)));


extern volatile __bit PSMC1SIF __attribute__((address(0xA0)));


extern volatile __bit PSMC1TIE __attribute__((address(0x4A4)));


extern volatile __bit PSMC1TIF __attribute__((address(0xA4)));


extern volatile __bit PSMC1TMR0 __attribute__((address(0x4138)));


extern volatile __bit PSMC1TMR1 __attribute__((address(0x4139)));


extern volatile __bit PSMC1TMR10 __attribute__((address(0x4142)));


extern volatile __bit PSMC1TMR11 __attribute__((address(0x4143)));


extern volatile __bit PSMC1TMR12 __attribute__((address(0x4144)));


extern volatile __bit PSMC1TMR13 __attribute__((address(0x4145)));


extern volatile __bit PSMC1TMR14 __attribute__((address(0x4146)));


extern volatile __bit PSMC1TMR15 __attribute__((address(0x4147)));


extern volatile __bit PSMC1TMR2 __attribute__((address(0x413A)));


extern volatile __bit PSMC1TMR3 __attribute__((address(0x413B)));


extern volatile __bit PSMC1TMR4 __attribute__((address(0x413C)));


extern volatile __bit PSMC1TMR5 __attribute__((address(0x413D)));


extern volatile __bit PSMC1TMR6 __attribute__((address(0x413E)));


extern volatile __bit PSMC1TMR7 __attribute__((address(0x413F)));


extern volatile __bit PSMC1TMR8 __attribute__((address(0x4140)));


extern volatile __bit PSMC1TMR9 __attribute__((address(0x4141)));


extern volatile __bit PSMC2BLKF0 __attribute__((address(0x4260)));


extern volatile __bit PSMC2BLKF1 __attribute__((address(0x4261)));


extern volatile __bit PSMC2BLKF2 __attribute__((address(0x4262)));


extern volatile __bit PSMC2BLKF3 __attribute__((address(0x4263)));


extern volatile __bit PSMC2BLKF4 __attribute__((address(0x4264)));


extern volatile __bit PSMC2BLKF5 __attribute__((address(0x4265)));


extern volatile __bit PSMC2BLKF6 __attribute__((address(0x4266)));


extern volatile __bit PSMC2BLKF7 __attribute__((address(0x4267)));


extern volatile __bit PSMC2BLKR0 __attribute__((address(0x4258)));


extern volatile __bit PSMC2BLKR1 __attribute__((address(0x4259)));


extern volatile __bit PSMC2BLKR2 __attribute__((address(0x425A)));


extern volatile __bit PSMC2BLKR3 __attribute__((address(0x425B)));


extern volatile __bit PSMC2BLKR4 __attribute__((address(0x425C)));


extern volatile __bit PSMC2BLKR5 __attribute__((address(0x425D)));


extern volatile __bit PSMC2BLKR6 __attribute__((address(0x425E)));


extern volatile __bit PSMC2BLKR7 __attribute__((address(0x425F)));


extern volatile __bit PSMC2DBF0 __attribute__((address(0x4250)));


extern volatile __bit PSMC2DBF1 __attribute__((address(0x4251)));


extern volatile __bit PSMC2DBF2 __attribute__((address(0x4252)));


extern volatile __bit PSMC2DBF3 __attribute__((address(0x4253)));


extern volatile __bit PSMC2DBF4 __attribute__((address(0x4254)));


extern volatile __bit PSMC2DBF5 __attribute__((address(0x4255)));


extern volatile __bit PSMC2DBF6 __attribute__((address(0x4256)));


extern volatile __bit PSMC2DBF7 __attribute__((address(0x4257)));


extern volatile __bit PSMC2DBR0 __attribute__((address(0x4248)));


extern volatile __bit PSMC2DBR1 __attribute__((address(0x4249)));


extern volatile __bit PSMC2DBR2 __attribute__((address(0x424A)));


extern volatile __bit PSMC2DBR3 __attribute__((address(0x424B)));


extern volatile __bit PSMC2DBR4 __attribute__((address(0x424C)));


extern volatile __bit PSMC2DBR5 __attribute__((address(0x424D)));


extern volatile __bit PSMC2DBR6 __attribute__((address(0x424E)));


extern volatile __bit PSMC2DBR7 __attribute__((address(0x424F)));


extern volatile __bit PSMC2DC0 __attribute__((address(0x4218)));


extern volatile __bit PSMC2DC1 __attribute__((address(0x4219)));


extern volatile __bit PSMC2DC10 __attribute__((address(0x4222)));


extern volatile __bit PSMC2DC11 __attribute__((address(0x4223)));


extern volatile __bit PSMC2DC12 __attribute__((address(0x4224)));


extern volatile __bit PSMC2DC13 __attribute__((address(0x4225)));


extern volatile __bit PSMC2DC14 __attribute__((address(0x4226)));


extern volatile __bit PSMC2DC15 __attribute__((address(0x4227)));


extern volatile __bit PSMC2DC2 __attribute__((address(0x421A)));


extern volatile __bit PSMC2DC3 __attribute__((address(0x421B)));


extern volatile __bit PSMC2DC4 __attribute__((address(0x421C)));


extern volatile __bit PSMC2DC5 __attribute__((address(0x421D)));


extern volatile __bit PSMC2DC6 __attribute__((address(0x421E)));


extern volatile __bit PSMC2DC7 __attribute__((address(0x421F)));


extern volatile __bit PSMC2DC8 __attribute__((address(0x4220)));


extern volatile __bit PSMC2DC9 __attribute__((address(0x4221)));


extern volatile __bit PSMC2EN __attribute__((address(0x418F)));


extern volatile __bit PSMC2FFA0 __attribute__((address(0x4268)));


extern volatile __bit PSMC2FFA1 __attribute__((address(0x4269)));


extern volatile __bit PSMC2FFA2 __attribute__((address(0x426A)));


extern volatile __bit PSMC2FFA3 __attribute__((address(0x426B)));


extern volatile __bit PSMC2LD __attribute__((address(0x418E)));


extern volatile __bit PSMC2PH0 __attribute__((address(0x4208)));


extern volatile __bit PSMC2PH1 __attribute__((address(0x4209)));


extern volatile __bit PSMC2PH10 __attribute__((address(0x4212)));


extern volatile __bit PSMC2PH11 __attribute__((address(0x4213)));


extern volatile __bit PSMC2PH12 __attribute__((address(0x4214)));


extern volatile __bit PSMC2PH13 __attribute__((address(0x4215)));


extern volatile __bit PSMC2PH14 __attribute__((address(0x4216)));


extern volatile __bit PSMC2PH15 __attribute__((address(0x4217)));


extern volatile __bit PSMC2PH2 __attribute__((address(0x420A)));


extern volatile __bit PSMC2PH3 __attribute__((address(0x420B)));


extern volatile __bit PSMC2PH4 __attribute__((address(0x420C)));


extern volatile __bit PSMC2PH5 __attribute__((address(0x420D)));


extern volatile __bit PSMC2PH6 __attribute__((address(0x420E)));


extern volatile __bit PSMC2PH7 __attribute__((address(0x420F)));


extern volatile __bit PSMC2PH8 __attribute__((address(0x4210)));


extern volatile __bit PSMC2PH9 __attribute__((address(0x4211)));


extern volatile __bit PSMC2PR0 __attribute__((address(0x4228)));


extern volatile __bit PSMC2PR1 __attribute__((address(0x4229)));


extern volatile __bit PSMC2PR10 __attribute__((address(0x4232)));


extern volatile __bit PSMC2PR11 __attribute__((address(0x4233)));


extern volatile __bit PSMC2PR12 __attribute__((address(0x4234)));


extern volatile __bit PSMC2PR13 __attribute__((address(0x4235)));


extern volatile __bit PSMC2PR14 __attribute__((address(0x4236)));


extern volatile __bit PSMC2PR15 __attribute__((address(0x4237)));


extern volatile __bit PSMC2PR2 __attribute__((address(0x422A)));


extern volatile __bit PSMC2PR3 __attribute__((address(0x422B)));


extern volatile __bit PSMC2PR4 __attribute__((address(0x422C)));


extern volatile __bit PSMC2PR5 __attribute__((address(0x422D)));


extern volatile __bit PSMC2PR6 __attribute__((address(0x422E)));


extern volatile __bit PSMC2PR7 __attribute__((address(0x422F)));


extern volatile __bit PSMC2PR8 __attribute__((address(0x4230)));


extern volatile __bit PSMC2PR9 __attribute__((address(0x4231)));


extern volatile __bit PSMC2SIE __attribute__((address(0x4A1)));


extern volatile __bit PSMC2SIF __attribute__((address(0xA1)));


extern volatile __bit PSMC2TIE __attribute__((address(0x4A5)));


extern volatile __bit PSMC2TIF __attribute__((address(0xA5)));


extern volatile __bit PSMC2TMR0 __attribute__((address(0x4238)));


extern volatile __bit PSMC2TMR1 __attribute__((address(0x4239)));


extern volatile __bit PSMC2TMR10 __attribute__((address(0x4242)));


extern volatile __bit PSMC2TMR11 __attribute__((address(0x4243)));


extern volatile __bit PSMC2TMR12 __attribute__((address(0x4244)));


extern volatile __bit PSMC2TMR13 __attribute__((address(0x4245)));


extern volatile __bit PSMC2TMR14 __attribute__((address(0x4246)));


extern volatile __bit PSMC2TMR15 __attribute__((address(0x4247)));


extern volatile __bit PSMC2TMR2 __attribute__((address(0x423A)));


extern volatile __bit PSMC2TMR3 __attribute__((address(0x423B)));


extern volatile __bit PSMC2TMR4 __attribute__((address(0x423C)));


extern volatile __bit PSMC2TMR5 __attribute__((address(0x423D)));


extern volatile __bit PSMC2TMR6 __attribute__((address(0x423E)));


extern volatile __bit PSMC2TMR7 __attribute__((address(0x423F)));


extern volatile __bit PSMC2TMR8 __attribute__((address(0x4240)));


extern volatile __bit PSMC2TMR9 __attribute__((address(0x4241)));


extern volatile __bit PSMC3BLKF0 __attribute__((address(0x4360)));


extern volatile __bit PSMC3BLKF1 __attribute__((address(0x4361)));


extern volatile __bit PSMC3BLKF2 __attribute__((address(0x4362)));


extern volatile __bit PSMC3BLKF3 __attribute__((address(0x4363)));


extern volatile __bit PSMC3BLKF4 __attribute__((address(0x4364)));


extern volatile __bit PSMC3BLKF5 __attribute__((address(0x4365)));


extern volatile __bit PSMC3BLKF6 __attribute__((address(0x4366)));


extern volatile __bit PSMC3BLKF7 __attribute__((address(0x4367)));


extern volatile __bit PSMC3BLKR0 __attribute__((address(0x4358)));


extern volatile __bit PSMC3BLKR1 __attribute__((address(0x4359)));


extern volatile __bit PSMC3BLKR2 __attribute__((address(0x435A)));


extern volatile __bit PSMC3BLKR3 __attribute__((address(0x435B)));


extern volatile __bit PSMC3BLKR4 __attribute__((address(0x435C)));


extern volatile __bit PSMC3BLKR5 __attribute__((address(0x435D)));


extern volatile __bit PSMC3BLKR6 __attribute__((address(0x435E)));


extern volatile __bit PSMC3BLKR7 __attribute__((address(0x435F)));


extern volatile __bit PSMC3DBF0 __attribute__((address(0x4350)));


extern volatile __bit PSMC3DBF1 __attribute__((address(0x4351)));


extern volatile __bit PSMC3DBF2 __attribute__((address(0x4352)));


extern volatile __bit PSMC3DBF3 __attribute__((address(0x4353)));


extern volatile __bit PSMC3DBF4 __attribute__((address(0x4354)));


extern volatile __bit PSMC3DBF5 __attribute__((address(0x4355)));


extern volatile __bit PSMC3DBF6 __attribute__((address(0x4356)));


extern volatile __bit PSMC3DBF7 __attribute__((address(0x4357)));


extern volatile __bit PSMC3DBR0 __attribute__((address(0x4348)));


extern volatile __bit PSMC3DBR1 __attribute__((address(0x4349)));


extern volatile __bit PSMC3DBR2 __attribute__((address(0x434A)));


extern volatile __bit PSMC3DBR3 __attribute__((address(0x434B)));


extern volatile __bit PSMC3DBR4 __attribute__((address(0x434C)));


extern volatile __bit PSMC3DBR5 __attribute__((address(0x434D)));


extern volatile __bit PSMC3DBR6 __attribute__((address(0x434E)));


extern volatile __bit PSMC3DBR7 __attribute__((address(0x434F)));


extern volatile __bit PSMC3DC0 __attribute__((address(0x4318)));


extern volatile __bit PSMC3DC1 __attribute__((address(0x4319)));


extern volatile __bit PSMC3DC10 __attribute__((address(0x4322)));


extern volatile __bit PSMC3DC11 __attribute__((address(0x4323)));


extern volatile __bit PSMC3DC12 __attribute__((address(0x4324)));


extern volatile __bit PSMC3DC13 __attribute__((address(0x4325)));


extern volatile __bit PSMC3DC14 __attribute__((address(0x4326)));


extern volatile __bit PSMC3DC15 __attribute__((address(0x4327)));


extern volatile __bit PSMC3DC2 __attribute__((address(0x431A)));


extern volatile __bit PSMC3DC3 __attribute__((address(0x431B)));


extern volatile __bit PSMC3DC4 __attribute__((address(0x431C)));


extern volatile __bit PSMC3DC5 __attribute__((address(0x431D)));


extern volatile __bit PSMC3DC6 __attribute__((address(0x431E)));


extern volatile __bit PSMC3DC7 __attribute__((address(0x431F)));


extern volatile __bit PSMC3DC8 __attribute__((address(0x4320)));


extern volatile __bit PSMC3DC9 __attribute__((address(0x4321)));


extern volatile __bit PSMC3EN __attribute__((address(0x428F)));


extern volatile __bit PSMC3FFA0 __attribute__((address(0x4368)));


extern volatile __bit PSMC3FFA1 __attribute__((address(0x4369)));


extern volatile __bit PSMC3FFA2 __attribute__((address(0x436A)));


extern volatile __bit PSMC3FFA3 __attribute__((address(0x436B)));


extern volatile __bit PSMC3LD __attribute__((address(0x428E)));


extern volatile __bit PSMC3PH0 __attribute__((address(0x4308)));


extern volatile __bit PSMC3PH1 __attribute__((address(0x4309)));


extern volatile __bit PSMC3PH10 __attribute__((address(0x4312)));


extern volatile __bit PSMC3PH11 __attribute__((address(0x4313)));


extern volatile __bit PSMC3PH12 __attribute__((address(0x4314)));


extern volatile __bit PSMC3PH13 __attribute__((address(0x4315)));


extern volatile __bit PSMC3PH14 __attribute__((address(0x4316)));


extern volatile __bit PSMC3PH15 __attribute__((address(0x4317)));


extern volatile __bit PSMC3PH2 __attribute__((address(0x430A)));


extern volatile __bit PSMC3PH3 __attribute__((address(0x430B)));


extern volatile __bit PSMC3PH4 __attribute__((address(0x430C)));


extern volatile __bit PSMC3PH5 __attribute__((address(0x430D)));


extern volatile __bit PSMC3PH6 __attribute__((address(0x430E)));


extern volatile __bit PSMC3PH7 __attribute__((address(0x430F)));


extern volatile __bit PSMC3PH8 __attribute__((address(0x4310)));


extern volatile __bit PSMC3PH9 __attribute__((address(0x4311)));


extern volatile __bit PSMC3PR0 __attribute__((address(0x4328)));


extern volatile __bit PSMC3PR1 __attribute__((address(0x4329)));


extern volatile __bit PSMC3PR10 __attribute__((address(0x4332)));


extern volatile __bit PSMC3PR11 __attribute__((address(0x4333)));


extern volatile __bit PSMC3PR12 __attribute__((address(0x4334)));


extern volatile __bit PSMC3PR13 __attribute__((address(0x4335)));


extern volatile __bit PSMC3PR14 __attribute__((address(0x4336)));


extern volatile __bit PSMC3PR15 __attribute__((address(0x4337)));


extern volatile __bit PSMC3PR2 __attribute__((address(0x432A)));


extern volatile __bit PSMC3PR3 __attribute__((address(0x432B)));


extern volatile __bit PSMC3PR4 __attribute__((address(0x432C)));


extern volatile __bit PSMC3PR5 __attribute__((address(0x432D)));


extern volatile __bit PSMC3PR6 __attribute__((address(0x432E)));


extern volatile __bit PSMC3PR7 __attribute__((address(0x432F)));


extern volatile __bit PSMC3PR8 __attribute__((address(0x4330)));


extern volatile __bit PSMC3PR9 __attribute__((address(0x4331)));


extern volatile __bit PSMC3SIE __attribute__((address(0x4A2)));


extern volatile __bit PSMC3SIF __attribute__((address(0xA2)));


extern volatile __bit PSMC3TIE __attribute__((address(0x4A6)));


extern volatile __bit PSMC3TIF __attribute__((address(0xA6)));


extern volatile __bit PSMC3TMR0 __attribute__((address(0x4338)));


extern volatile __bit PSMC3TMR1 __attribute__((address(0x4339)));


extern volatile __bit PSMC3TMR10 __attribute__((address(0x4342)));


extern volatile __bit PSMC3TMR11 __attribute__((address(0x4343)));


extern volatile __bit PSMC3TMR12 __attribute__((address(0x4344)));


extern volatile __bit PSMC3TMR13 __attribute__((address(0x4345)));


extern volatile __bit PSMC3TMR14 __attribute__((address(0x4346)));


extern volatile __bit PSMC3TMR15 __attribute__((address(0x4347)));


extern volatile __bit PSMC3TMR2 __attribute__((address(0x433A)));


extern volatile __bit PSMC3TMR3 __attribute__((address(0x433B)));


extern volatile __bit PSMC3TMR4 __attribute__((address(0x433C)));


extern volatile __bit PSMC3TMR5 __attribute__((address(0x433D)));


extern volatile __bit PSMC3TMR6 __attribute__((address(0x433E)));


extern volatile __bit PSMC3TMR7 __attribute__((address(0x433F)));


extern volatile __bit PSMC3TMR8 __attribute__((address(0x4340)));


extern volatile __bit PSMC3TMR9 __attribute__((address(0x4341)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RA6 __attribute__((address(0x66)));


extern volatile __bit RA7 __attribute__((address(0x67)));


extern volatile __bit RB0 __attribute__((address(0x68)));


extern volatile __bit RB1 __attribute__((address(0x69)));


extern volatile __bit RB2 __attribute__((address(0x6A)));


extern volatile __bit RB3 __attribute__((address(0x6B)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RCEN __attribute__((address(0x10B3)));


extern volatile __bit RCIDL __attribute__((address(0xCFE)));


extern volatile __bit RCIE __attribute__((address(0x48D)));


extern volatile __bit RCIF __attribute__((address(0x8D)));


extern volatile __bit RD __attribute__((address(0xCA8)));


extern volatile __bit RE3 __attribute__((address(0x83)));


extern volatile __bit RSEN __attribute__((address(0x10B1)));


extern volatile __bit RX9 __attribute__((address(0xCEE)));


extern volatile __bit RX9D __attribute__((address(0xCE8)));


extern volatile __bit RXSEL __attribute__((address(0x8E9)));


extern volatile __bit R_nW __attribute__((address(0x10A2)));


extern volatile __bit SBCDE __attribute__((address(0x10BA)));


extern volatile __bit SBOREN __attribute__((address(0x8B7)));


extern volatile __bit SCIE __attribute__((address(0x10BD)));


extern volatile __bit SCKP __attribute__((address(0xCFC)));


extern volatile __bit SCKSEL __attribute__((address(0x8EC)));


extern volatile __bit SCS0 __attribute__((address(0x4C8)));


extern volatile __bit SCS1 __attribute__((address(0x4C9)));


extern volatile __bit SDAHT __attribute__((address(0x10BB)));


extern volatile __bit SDISEL __attribute__((address(0x8EB)));


extern volatile __bit SDOSEL __attribute__((address(0x8ED)));


extern volatile __bit SEN __attribute__((address(0x10B0)));


extern volatile __bit SENDB __attribute__((address(0xCF3)));


extern volatile __bit SLRCONA0 __attribute__((address(0x1860)));


extern volatile __bit SLRCONA1 __attribute__((address(0x1861)));


extern volatile __bit SLRCONA2 __attribute__((address(0x1862)));


extern volatile __bit SLRCONA3 __attribute__((address(0x1863)));


extern volatile __bit SLRCONA4 __attribute__((address(0x1864)));


extern volatile __bit SLRCONA5 __attribute__((address(0x1865)));


extern volatile __bit SLRCONA6 __attribute__((address(0x1866)));


extern volatile __bit SLRCONA7 __attribute__((address(0x1867)));


extern volatile __bit SLRCONB0 __attribute__((address(0x1868)));


extern volatile __bit SLRCONB1 __attribute__((address(0x1869)));


extern volatile __bit SLRCONB2 __attribute__((address(0x186A)));


extern volatile __bit SLRCONB3 __attribute__((address(0x186B)));


extern volatile __bit SLRCONB4 __attribute__((address(0x186C)));


extern volatile __bit SLRCONB5 __attribute__((address(0x186D)));


extern volatile __bit SLRCONB6 __attribute__((address(0x186E)));


extern volatile __bit SLRCONB7 __attribute__((address(0x186F)));


extern volatile __bit SLRCONC0 __attribute__((address(0x1870)));


extern volatile __bit SLRCONC1 __attribute__((address(0x1871)));


extern volatile __bit SLRCONC2 __attribute__((address(0x1872)));


extern volatile __bit SLRCONC3 __attribute__((address(0x1873)));


extern volatile __bit SLRCONC4 __attribute__((address(0x1874)));


extern volatile __bit SLRCONC5 __attribute__((address(0x1875)));


extern volatile __bit SLRCONC6 __attribute__((address(0x1876)));


extern volatile __bit SLRCONC7 __attribute__((address(0x1877)));


extern volatile __bit SMP __attribute__((address(0x10A7)));


extern volatile __bit SPEN __attribute__((address(0xCEF)));


extern volatile __bit SPLLEN __attribute__((address(0x4CF)));


extern volatile __bit SREN __attribute__((address(0xCED)));


extern volatile __bit SSP1ADD0 __attribute__((address(0x1090)));


extern volatile __bit SSP1ADD1 __attribute__((address(0x1091)));


extern volatile __bit SSP1ADD2 __attribute__((address(0x1092)));


extern volatile __bit SSP1ADD3 __attribute__((address(0x1093)));


extern volatile __bit SSP1ADD4 __attribute__((address(0x1094)));


extern volatile __bit SSP1ADD5 __attribute__((address(0x1095)));


extern volatile __bit SSP1ADD6 __attribute__((address(0x1096)));


extern volatile __bit SSP1ADD7 __attribute__((address(0x1097)));


extern volatile __bit SSP1BUF0 __attribute__((address(0x1088)));


extern volatile __bit SSP1BUF1 __attribute__((address(0x1089)));


extern volatile __bit SSP1BUF2 __attribute__((address(0x108A)));


extern volatile __bit SSP1BUF3 __attribute__((address(0x108B)));


extern volatile __bit SSP1BUF4 __attribute__((address(0x108C)));


extern volatile __bit SSP1BUF5 __attribute__((address(0x108D)));


extern volatile __bit SSP1BUF6 __attribute__((address(0x108E)));


extern volatile __bit SSP1BUF7 __attribute__((address(0x108F)));


extern volatile __bit SSP1IE __attribute__((address(0x48B)));


extern volatile __bit SSP1IF __attribute__((address(0x8B)));


extern volatile __bit SSP1MSK0 __attribute__((address(0x1098)));


extern volatile __bit SSP1MSK1 __attribute__((address(0x1099)));


extern volatile __bit SSP1MSK2 __attribute__((address(0x109A)));


extern volatile __bit SSP1MSK3 __attribute__((address(0x109B)));


extern volatile __bit SSP1MSK4 __attribute__((address(0x109C)));


extern volatile __bit SSP1MSK5 __attribute__((address(0x109D)));


extern volatile __bit SSP1MSK6 __attribute__((address(0x109E)));


extern volatile __bit SSP1MSK7 __attribute__((address(0x109F)));


extern volatile __bit SSPEN __attribute__((address(0x10AD)));


extern volatile __bit SSPM0 __attribute__((address(0x10A8)));


extern volatile __bit SSPM1 __attribute__((address(0x10A9)));


extern volatile __bit SSPM2 __attribute__((address(0x10AA)));


extern volatile __bit SSPM3 __attribute__((address(0x10AB)));


extern volatile __bit SSPOV __attribute__((address(0x10AE)));


extern volatile __bit STKOVF __attribute__((address(0x4B7)));


extern volatile __bit STKUNF __attribute__((address(0x4B6)));


extern volatile __bit SWDTEN __attribute__((address(0x4B8)));


extern volatile __bit SYNC __attribute__((address(0xCF4)));


extern volatile __bit T0CS __attribute__((address(0x4AD)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x4AC)));


extern volatile __bit T1CKPS0 __attribute__((address(0xC4)));


extern volatile __bit T1CKPS1 __attribute__((address(0xC5)));


extern volatile __bit T1GGO __attribute__((address(0xCB)));


extern volatile __bit T1GPOL __attribute__((address(0xCE)));


extern volatile __bit T1GSPM __attribute__((address(0xCC)));


extern volatile __bit T1GSS0 __attribute__((address(0xC8)));


extern volatile __bit T1GSS1 __attribute__((address(0xC9)));


extern volatile __bit T1GTM __attribute__((address(0xCD)));


extern volatile __bit T1GVAL __attribute__((address(0xCA)));


extern volatile __bit T1OSCEN __attribute__((address(0xC3)));


extern volatile __bit T1OSCR __attribute__((address(0x4D7)));


extern volatile __bit T2CKPS0 __attribute__((address(0xE0)));


extern volatile __bit T2CKPS1 __attribute__((address(0xE1)));


extern volatile __bit T2OUTPS0 __attribute__((address(0xE3)));


extern volatile __bit T2OUTPS1 __attribute__((address(0xE4)));


extern volatile __bit T2OUTPS2 __attribute__((address(0xE5)));


extern volatile __bit T2OUTPS3 __attribute__((address(0xE6)));


extern volatile __bit TMR0CS __attribute__((address(0x4AD)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR0SE __attribute__((address(0x4AC)));


extern volatile __bit TMR1CS0 __attribute__((address(0xC6)));


extern volatile __bit TMR1CS1 __attribute__((address(0xC7)));


extern volatile __bit TMR1GE __attribute__((address(0xCF)));


extern volatile __bit TMR1GIE __attribute__((address(0x48F)));


extern volatile __bit TMR1GIF __attribute__((address(0x8F)));


extern volatile __bit TMR1IE __attribute__((address(0x488)));


extern volatile __bit TMR1IF __attribute__((address(0x88)));


extern volatile __bit TMR1ON __attribute__((address(0xC0)));


extern volatile __bit TMR2IE __attribute__((address(0x489)));


extern volatile __bit TMR2IF __attribute__((address(0x89)));


extern volatile __bit TMR2ON __attribute__((address(0xE2)));


extern volatile __bit TRIGSEL0 __attribute__((address(0x4FC)));


extern volatile __bit TRIGSEL1 __attribute__((address(0x4FD)));


extern volatile __bit TRIGSEL2 __attribute__((address(0x4FE)));


extern volatile __bit TRIGSEL3 __attribute__((address(0x4FF)));


extern volatile __bit TRISA0 __attribute__((address(0x460)));


extern volatile __bit TRISA1 __attribute__((address(0x461)));


extern volatile __bit TRISA2 __attribute__((address(0x462)));


extern volatile __bit TRISA3 __attribute__((address(0x463)));


extern volatile __bit TRISA4 __attribute__((address(0x464)));


extern volatile __bit TRISA5 __attribute__((address(0x465)));


extern volatile __bit TRISA6 __attribute__((address(0x466)));


extern volatile __bit TRISA7 __attribute__((address(0x467)));


extern volatile __bit TRISB0 __attribute__((address(0x468)));


extern volatile __bit TRISB1 __attribute__((address(0x469)));


extern volatile __bit TRISB2 __attribute__((address(0x46A)));


extern volatile __bit TRISB3 __attribute__((address(0x46B)));


extern volatile __bit TRISB4 __attribute__((address(0x46C)));


extern volatile __bit TRISB5 __attribute__((address(0x46D)));


extern volatile __bit TRISB6 __attribute__((address(0x46E)));


extern volatile __bit TRISB7 __attribute__((address(0x46F)));


extern volatile __bit TRISC0 __attribute__((address(0x470)));


extern volatile __bit TRISC1 __attribute__((address(0x471)));


extern volatile __bit TRISC2 __attribute__((address(0x472)));


extern volatile __bit TRISC3 __attribute__((address(0x473)));


extern volatile __bit TRISC4 __attribute__((address(0x474)));


extern volatile __bit TRISC5 __attribute__((address(0x475)));


extern volatile __bit TRISC6 __attribute__((address(0x476)));


extern volatile __bit TRISC7 __attribute__((address(0x477)));


extern volatile __bit TRISE3 __attribute__((address(0x483)));


extern volatile __bit TRMT __attribute__((address(0xCF1)));


extern volatile __bit TSEN __attribute__((address(0x8BD)));


extern volatile __bit TSRNG __attribute__((address(0x8BC)));


extern volatile __bit TUN0 __attribute__((address(0x4C0)));


extern volatile __bit TUN1 __attribute__((address(0x4C1)));


extern volatile __bit TUN2 __attribute__((address(0x4C2)));


extern volatile __bit TUN3 __attribute__((address(0x4C3)));


extern volatile __bit TUN4 __attribute__((address(0x4C4)));


extern volatile __bit TUN5 __attribute__((address(0x4C5)));


extern volatile __bit TX9 __attribute__((address(0xCF6)));


extern volatile __bit TX9D __attribute__((address(0xCF0)));


extern volatile __bit TXEN __attribute__((address(0xCF5)));


extern volatile __bit TXIE __attribute__((address(0x48C)));


extern volatile __bit TXIF __attribute__((address(0x8C)));


extern volatile __bit TXSEL __attribute__((address(0x8EA)));


extern volatile __bit UA __attribute__((address(0x10A1)));


extern volatile __bit VREGPM __attribute__((address(0xCB9)));


extern volatile __bit WCOL __attribute__((address(0x10AF)));


extern volatile __bit WDTPS0 __attribute__((address(0x4B9)));


extern volatile __bit WDTPS1 __attribute__((address(0x4BA)));


extern volatile __bit WDTPS2 __attribute__((address(0x4BB)));


extern volatile __bit WDTPS3 __attribute__((address(0x4BC)));


extern volatile __bit WDTPS4 __attribute__((address(0x4BD)));


extern volatile __bit WPUA0 __attribute__((address(0x1060)));


extern volatile __bit WPUA1 __attribute__((address(0x1061)));


extern volatile __bit WPUA2 __attribute__((address(0x1062)));


extern volatile __bit WPUA3 __attribute__((address(0x1063)));


extern volatile __bit WPUA4 __attribute__((address(0x1064)));


extern volatile __bit WPUA5 __attribute__((address(0x1065)));


extern volatile __bit WPUA6 __attribute__((address(0x1066)));


extern volatile __bit WPUA7 __attribute__((address(0x1067)));


extern volatile __bit WPUB0 __attribute__((address(0x1068)));


extern volatile __bit WPUB1 __attribute__((address(0x1069)));


extern volatile __bit WPUB2 __attribute__((address(0x106A)));


extern volatile __bit WPUB3 __attribute__((address(0x106B)));


extern volatile __bit WPUB4 __attribute__((address(0x106C)));


extern volatile __bit WPUB5 __attribute__((address(0x106D)));


extern volatile __bit WPUB6 __attribute__((address(0x106E)));


extern volatile __bit WPUB7 __attribute__((address(0x106F)));


extern volatile __bit WPUC0 __attribute__((address(0x1070)));


extern volatile __bit WPUC1 __attribute__((address(0x1071)));


extern volatile __bit WPUC2 __attribute__((address(0x1072)));


extern volatile __bit WPUC3 __attribute__((address(0x1073)));


extern volatile __bit WPUC4 __attribute__((address(0x1074)));


extern volatile __bit WPUC5 __attribute__((address(0x1075)));


extern volatile __bit WPUC6 __attribute__((address(0x1076)));


extern volatile __bit WPUC7 __attribute__((address(0x1077)));


extern volatile __bit WPUE3 __attribute__((address(0x1083)));


extern volatile __bit WR __attribute__((address(0xCA9)));


extern volatile __bit WREN __attribute__((address(0xCAA)));


extern volatile __bit WRERR __attribute__((address(0xCAB)));


extern volatile __bit WUE __attribute__((address(0xCF9)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit Z_SHAD __attribute__((address(0x7F22)));


extern volatile __bit nBOR __attribute__((address(0x4B0)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4B1)));


extern volatile __bit nRI __attribute__((address(0x4B2)));


extern volatile __bit nRMCLR __attribute__((address(0x4B3)));


extern volatile __bit nRWDT __attribute__((address(0x4B4)));


extern volatile __bit nT1SYNC __attribute__((address(0xC2)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWPUEN __attribute__((address(0x4AF)));
# 1754 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 2 3
# 13 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 2 3
# 30 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\eeprom_routines.h" 1 3
# 114 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 85 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 2 3






#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(unsigned char);
# 137 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 27 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\xc.h" 2 3
# 9 "main.c" 2

# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdio.h" 1 3
# 24 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdio.h" 3
# 1 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 10 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 145 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
# 244 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long off_t;
# 397 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 24 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdio.h" 2 3
# 52 "F:\\other_software\\MPLAB_X_IDE\\xc8\\v2.00\\pic\\include\\c99\\stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);


#pragma printf_check(printf) const
#pragma printf_check(vprintf) const
#pragma printf_check(sprintf) const
#pragma printf_check(snprintf) const
#pragma printf_check(vsprintf) const
#pragma printf_check(vsnprintf) const


int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 10 "main.c" 2

# 1 "./function.h" 1
# 59 "./function.h"
int g_time_h;
int g_time_m;
int g_time_s;
int g_time_u;


int g_start_read_switch;
int g_start_read_data;
int g_find_recv_start;


int g_high_level_times;
int g_all_level_times;
int g_recv_count;

int g_recv_buf[20];





void receive_decode(void);




void update_time(void);





void update_display(void);
# 11 "main.c" 2



#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config CPD = OFF
#pragma config BOREN = ON
#pragma config CLKOUTEN = OFF
#pragma config IESO = ON
#pragma config FCMEN = ON


#pragma config WRT = OFF
#pragma config VCAPEN = OFF
#pragma config PLLEN = ON
#pragma config STVREN = ON
#pragma config BORV = LO
#pragma config LPBOR = OFF
#pragma config LVP = ON




void init_env();




void interrupt ISR(void){

    if(IOCCFbits.IOCCF1 == 1 && g_start_read_data == 0 && g_start_read_switch == 1){
        g_start_read_data = 1;
        g_start_read_switch = 0;
        PORTCbits.RC2 = 1;
        INTCONbits.IOCIF = 0;
        IOCCFbits.IOCCF1 == 0;
        return;
    }else if(INTCONbits.IOCIF || IOCCFbits.IOCCF1){
        INTCONbits.IOCIF = 0;
        IOCCFbits.IOCCF1 == 0;
    }


    if(g_start_read_data == 1 && INTCONbits.TMR0IF){
        update_time();
        receive_decode();
        INTCONbits.TMR0IF = 0;
        TMR0 = (217 + 14);
        return;
    }


    if(INTCONbits.TMR0IF){
        update_time();
        INTCONbits.TMR0IF = 0;
        TMR0 = (217 + 14);

        if(PORTCbits.RC5 == 1){
            g_start_read_switch = 1;
        }
        return;
    }
    return;
}

void main(void) {

    init_env();


    while(1);

    return;
}



void init_env(){




    INTCONbits.GIE = 0b1;

    INTCONbits.IOCIE = 0b1;



    INTCONbits.TMR0IE = 0b1;




    OSCCONbits.SCS = 0b10;
    OSCCONbits.IRCF = 0b1010;







    OPTION_REGbits.PSA = 0;
    OPTION_REGbits.TMR0CS = 0;
    OPTION_REGbits.PS = 4;
    TMR0 = (217 + 14);







    OPTION_REGbits.nWPUEN = 0;

    TRISA = 0;
    LATA = 0;
    WPUA = 0;
    IOCAP = 0;
    IOCAN = 0;

    TRISB = 0;
    LATB = 0;
    WPUB = 0;
    IOCBP = 0;
    IOCBN = 0;

    TRISC = 0;
    LATC = 0;
    WPUC = 0;
    IOCCP = 0;
    IOCCN = 0;




    TRISCbits.TRISC5 = 1;
    WPUCbits.WPUC5 = 1;

    TRISCbits.TRISC1 = 1;
    WPUCbits.WPUC1 = 1;
    IOCCPbits.IOCCP1 = 1;




    g_time_h = 0;
    g_time_m = 0;
    g_time_s = 0;
    g_time_u = 0;


    g_start_read_switch = 0;
    g_start_read_data = 0;
    g_find_recv_start = 0;


    g_high_level_times = 0;
    g_all_level_times = 0;
    g_recv_count = 0;
    for(int i = 0;i < 20; i++){
        g_recv_buf[i] = 5;
    }




    PORTBbits.RB3 = 1;


    PORTCbits.RC2 = 0;


    TRISCbits.TRISC0 = 1;
    WPUCbits.WPUC0 = 1;
# 207 "main.c"
}
