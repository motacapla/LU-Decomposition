# ----------------------------------------------------------------
# environment
CC		= 
FC		= mpifrtpx

# ----------------------------------------------------------------
# options

CFLAGS		= 
FFLAGS		= -Kfast -Koptmsg=2

# ----------------------------------------------------------------
# sources and objects

C_SRC		=
F_SRC		= lu.f

C_OBJ		= $(C_SRC:.c=)
F_OBJ		= $(F_SRC:.f=)

# ----------------------------------------------------------------
# executables

EXEC		= $(F_OBJ) 

all:		$(EXEC)

$(F_OBJ):	$(F_SRC)
	$(FC) -o $@ $(FFLAGS) $(F_SRC)


# ----------------------------------------------------------------
# rules

.c.:
	$(CC) -o $* $(CFLAGS) -c $<

.f.:
	$(FC) -o $* $(FFLAGS) -c $<

# ----------------------------------------------------------------
# clean up

clean:
	/bin/rm -f $(EXEC) $(F_SRC:.f=.o)

# ----------------------------------------------------------------
# End of Makefile
