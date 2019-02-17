ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

all:

install:
	install -d $(DESTDIR)$(PREFIX)/sbin
	install -p -m 755 kexec-load-grub $(DESTDIR)$(PREFIX)/sbin/ 

clean:
