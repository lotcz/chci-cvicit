PROJ_DIR = /var/www/chci-cvicit/
APACHE_CONF_DIR = /etc/apache2/sites-available/

install:	
	cp $(PROJ_DIR)chci-cvicit-prezentace.conf $(APACHE_CONF_DIR)
	a2ensite chci-cvicit-prezentace
	service apache2 restart
	
update:
	cd $(PROJ_DIR)
	git pull