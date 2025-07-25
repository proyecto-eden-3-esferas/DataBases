ARRAY_PREFIX = ""
ARRAY_SUFFIX = "_a"
DROPBOX_SUBDIR = /home/francisco/Dropbox/JSON_files/

%.array.js: %.array.json
	echo "\nconst $(ARRAY_PREFIX)$*$(ARRAY_SUFFIX) = " > $@
	cat            $<       >> $@
	echo ";\n"              >> $@
%.js: %.array.js %.array.json
	echo "done!"

save_to_dropbox:
	cp --update *.json *.js Makefile *.md *.txt $(DROPBOX_SUBDIR)
