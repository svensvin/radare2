ifeq ($(USE_CAPSTONE),1)
CS_CFLAGS=${CAPSTONE_CFLAGS}
CS_LDFLAGS=${CAPSTONE_LDFLAGS}
else
CS_CFLAGS=-I$(SHLR)/capstone/include
CS_LDFLAGS=$(SHLR)/capstone/libcapstone.a
SHARED_OBJ+=${CS_LDFLAGS}
endif

CFLAGS+=$(CS_CFLAGS)