        !COMPILER-GENERATED INTERFACE MODULE: Sat Oct 03 08:45:16 2020
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE TEST5__genmod
          INTERFACE 
            SUBROUTINE TEST5(N,T,H,E,AW,S,DCN,DLN,DUN,DEMN,DZ0)
              INTEGER(KIND=4) :: N
              REAL(KIND=8) :: T
              REAL(KIND=8) :: H
              REAL(KIND=8) :: E
              REAL(KIND=8) :: AW
              EXTERNAL AW
              REAL(KIND=8) :: S
              EXTERNAL S
              REAL(KIND=8) :: DCN
              REAL(KIND=8) :: DLN
              REAL(KIND=8) :: DUN
              REAL(KIND=8) :: DEMN
              REAL(KIND=8) :: DZ0
            END SUBROUTINE TEST5
          END INTERFACE 
        END MODULE TEST5__genmod
