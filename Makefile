NAME=pragpub-mailer
VERSION=1.0.2
PACKAGE=$(NAME).deb
FILES=etc/cron.d/pragpub-mailer etc/pragpub-mailer.conf \
      usr/bin/pragpub-mailer var/lib/pragpub-mailer/

.PHONY: all clean

all: $(PACKAGE)

clean:
	$(RM) $(PACKAGE)

$(PACKAGE): $(FILES)
	fpm -s dir -t deb --name $(NAME) --version $(VERSION) --package $@ \
	    --force --architecture all --deb-user root --deb-group root \
	    --depends curl --depends heirloom-mailx \
	    --config-files etc/cron.d/pragpub-mailer \
	    --config-files etc/pragpub-mailer.conf \
	    --directories var/lib/pragpub-mailer $^
