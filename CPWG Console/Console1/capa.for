      subroutine capa(bC,dC,e,n)
! �������������� ������� �������� (��/�)
      real*8 bC(1), dC(1), e
	do 1 i=1,n
	do 1 j=1,n
1	dC((j-1)*n+i) = 8.854 * ( 2*bC((j-1)*n+i) + (e-1.) * dC((j-1)*n+i) )
      return
	end