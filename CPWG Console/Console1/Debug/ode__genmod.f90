        !COMPILER-GENERATED INTERFACE MODULE: Wed Oct 21 06:05:43 2020
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE ODE__genmod
          INTERFACE 
            SUBROUTINE ODE(F,NEQN,Y,T,TOUT,RELERR,ABSERR,IFLAG,WORK,    &
     &IWORK)
              INTEGER(KIND=4) :: NEQN
              EXTERNAL F
              REAL(KIND=8) :: Y(NEQN)
              REAL(KIND=8) :: T
              REAL(KIND=8) :: TOUT
              REAL(KIND=8) :: RELERR
              REAL(KIND=8) :: ABSERR
              INTEGER(KIND=4) :: IFLAG
              REAL(KIND=8) :: WORK(1)
              INTEGER(KIND=4) :: IWORK(25)
            END SUBROUTINE ODE
          END INTERFACE 
        END MODULE ODE__genmod
