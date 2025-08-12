ARRAY_PREFIX = ""
ARRAY_SUFFIX = "Array"
DROPBOX_SUBDIR = /home/francisco/Dropbox/JSON_files/

HTML_TO_SAVE = js.assorted.find.html js.assorted.html js.test-*.html

%.array.js: %.array.json
	echo "\nconst $(ARRAY_PREFIX)$*$(ARRAY_SUFFIX) = " > $@
	cat            $<       >> $@
	echo ";\n"              >> $@
%.js: %.array.js %.array.json
	echo "done!"

save_to_dropbox:
	cp --update $(HTML_TO_SAVE) *.json *.js Makefile *.md *.txt $(DROPBOX_SUBDIR)
