BEGIN_PROVIDER [integer, atoms]
    BEGIN_DOC
    ! reading atoms
    END_DOC
    implicit none
    logical :: is_open
    inquire(unit=11,opened=is_open)
    if(.not.is_open)then
        open(unit=11,status='old',file='geo.inp',form='formatted')
    endif

    read(11,*)atoms
END_PROVIDER
