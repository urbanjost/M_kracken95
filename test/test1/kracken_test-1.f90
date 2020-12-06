program krackentest2
use M_kracken95
implicit none
character(len=255) :: filename
integer            :: ier, iflen, ival
real               :: rval
logical            :: lval

   ! define command and default argument values and read
   ! command line arguments
   call kracken('cmd', ' -i 10 -r 10e3 -l "#N#" -f input')
 
   ! get desired argument values
   call retrev('cmd_f',filename,iflen,ier) ! STRING EXAMPLE
   lval = lget('cmd_l')                    ! LOGICAL EXAMPLE
   rval = rget('cmd_r')                    ! REAL EXAMPLE
   ival = iget('cmd_i')                    ! INTEGER EXAMPLE
 
   ! SHOW WHAT YOU GOT
   write(*,*)'filename=',filename(:iflen)
   write(*,*)'i=',ival
   write(*,*)'r=',rval
   write(*,*)'l=',lval

end program krackentest2
