        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 26 21:07:04 2020
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE ZQUAD__genmod
          INTERFACE 
            FUNCTION ZQUAD(ZA,KA,ZB,KB,N,Z,BETAM,NPTSQ,QWORK)
              INTEGER(KIND=4) :: N
              COMPLEX(KIND=8) :: ZA
              INTEGER(KIND=4) :: KA
              COMPLEX(KIND=8) :: ZB
              INTEGER(KIND=4) :: KB
              COMPLEX(KIND=8) :: Z(N)
              REAL(KIND=8) :: BETAM(N)
              INTEGER(KIND=4) :: NPTSQ
              REAL(KIND=8) :: QWORK(1)
              COMPLEX(KIND=8) :: ZQUAD
            END FUNCTION ZQUAD
          END INTERFACE 
        END MODULE ZQUAD__genmod
