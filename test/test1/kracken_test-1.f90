program krackentest2
use M_kracken95
character(255) filename
integer ier, iflen, ival
logical lval

! define command and default argument values and read
! command line arguments
  call kracken('cmd', ' -i 10 -r 10e3 -l "#N#" -f input')

! get desired argument values
! STRING EXAMPLE
  call retrev('cmd_f',filename,iflen,ier)
! LOGICAL EXAMPLE
  lval = lget('cmd_l')
! REAL EXAMPLE
  rval = rget('cmd_r')
! INTEGER EXAMPLE
  ival = iget('cmd_i')

! SHOW WHAT YOU GOT
  write(*,*)'filename=',filename(:iflen)
  write(*,*)'i=',ival
  write(*,*)'r=',rval
  write(*,*)'l=',lval

end program krackentest2
