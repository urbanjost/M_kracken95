program krackentest2

use M_kracken95, only : kracken, lget, rget, iget, dget, sget, retrev
implicit none
character(len=255)          :: filename
integer,allocatable         :: ival
logical,allocatable         :: lval
real,allocatable            :: rval
doubleprecision,allocatable :: dval

integer :: iflen
integer :: ier
!----------------------------------------------------------------------------------------
!  define the command options and default values and apply arguments from user command line
   call kracken("cmd", " -i 10 -r 10e3 -l ""#N#"" -f input -h .F. --help .F. & 
   & -v .F. --version .F. -d 123456789.01234567")
!  handle help requests allowing most common variants
   if(lget('cmd_h').or.lget('cmd_help'))then
      write(*,'(a)')[ character(len=80) :: 'cmd', &
      ' [-i ANY_INTEGER_VALUE] ', &
      ' [-r ANY_REAL_VALUE]    ', &
      ' [-l LOGICAL_VALUE]     ', &
      ' [-f FILENAME]          ', &
      ' [-h|-help|--help]|     ', &
      ' [-v|-version|--version]', &
      '']
      stop
   endif
!  handle version requests allowing most common variants
   if(lget('cmd_v').or.lget('cmd_version'))then
      write(*,'(a)')'version 1.0.0'
      stop
   endif
!----------------------------------------------------------------------------------------
!  get the values specified on the command line
   filename=sget('cmd_f')          ! get -f FILENAME
   lval = lget("cmd_l")            ! get -l present?
   rval = rget("cmd_r")            ! get -r RVAL
   ival = iget("cmd_i")            ! get -i INTEGER
   dval = dget("cmd_d")            ! get -d DOUBLEPRECISION
!----------------------------------------------------------------------------------------
!  use the values
   print *, "filename=",trim(filename)
   print *, "i=",ival
   print *, "r=",rval
   print *, "l=",lval
   print *, "d=",dval
!----------------------------------------------------------------------------------------
!  retrev(3f) gives you length and an error code unlike sget(3f)
   call retrev("cmd_oo",filename,iflen,ier) 
   print *, "cmd_oo=",filename(:iflen)
end program krackentest2
