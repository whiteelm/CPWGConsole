    program CPWG
    implicit complex*16(c,w,z), real*8(a-b,d-h,o-v,x-y)
    dimension w(82),betam(82),qwork(2004)
    dimension aw(1), s(2)
    dimension z1(82),z2(82),z3(82), x2(82),x3(82), aC(361),bC(100),dC(100)
    dimension xs(22),dL(100),em(10)
    data aw/1 /	 
    data s /1, 1./  
    n=1; 
    t=.035;	    
    h=1; 
    e=10;       
    pi =  3.141593d0
    zero =(0.d0,0.d0)  
    zi = (0.d0,1.d0)	  
    nn = 15             
    w2 = aw(1)/2        
    z1(1) =  0
    z1(2) = -w2
    z1(3) = -w2+zi*t
    z1(4) =  w2+zi*t
    z1(5) =  w2
    z1(6) =  0
    z1(7) = -zi*h
    z1(8) =  100000
    z1(9) =  w2+s(2)
    z1(10)=  w2+s(2)+zi*t
    z1(11)=  100000
    z1(12)= -w2-s(1)+zi*t
    z1(13)= -w2-s(1)
    z1(14)= -100000
    z1(15)= -zi*h
    betam(1) = -0.5
    betam(2) =  0.5
    betam(3) =  0.5
    betam(4) =  0.5
    betam(5) =  0.5
    betam(6) = -0.5
    betam(7) = -0.5
    betam(8) =  -1
    betam(9) =  0.5
    betam(10) = 0.5
    betam(11) = -2
    betam(12) = 0.5
    betam(13) = 0.5
    betam(14) = -1
    betam(15) =-0.5
    z10 = dcmplx(0, h)
    nptsq =12								   
    call qinit(nn,betam,nptsq,qwork)
    
    iprint = -1
    iguess = 1
    do 1 k = 1,nn
        z2(k) = exp(dcmplx(0.d0, k-4.d0))
1   continue
    tol = 1.d-8
    call scsolv(iprint,iguess,tol,errest,nn,c,z2,z10,z1,betam,nptsq,qwork)
    
    z30 = zi;				  
    z301=-zi;
    do 2 k = 1, nn-1
        z3(k) = (z2(k) * z301 - z30)/(z2(k) - 1.)
        x3(k)=dreal(z3(k));			    
2   continue
    print*
    a=x3(6)-x3(1)
    b=x3(7)-x3(6)
    ak=dsqrt(b/(a+b))
    bbC=1./aKK1(ak)
    x12=dexp(pi*s(1)/h)
    x13=dexp(pi*(s(1)+aw(1))/h)
    x14=dexp(pi*(s(1)+aw(1)+s(2))/h)
    a=x13-x12
    b1=x12-1.
    b2=x14-x13
    ak=dsqrt(b1*b2/((a+b1)*(a+b2)))
    ddC=1./aKK1(ak)
    ddC = 8.854*(bbC + (e-1.)*ddC)
    print*,'Capacitance C (pF/m)'
    print*,'  C =',ddC
    ddL=0.4*pi/bbC
    print*,'Inductance L (uH/m)'
    print*,'  L =',ddL
    dZ0=dsqrt(1.d6*ddL/ddC)
    print*,'Impedance Zo (Ohm)'
    print*,'  Zo =', dZ0
    eem = (ddC/8.854)/bbC
    print*,'Diel_const'
    print*,'  Em =', eem
    pause
    end

