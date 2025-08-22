ARRAY_PREFIX = ""
ARRAY_SUFFIX = "Array"
DROPBOX_SUBDIR = /home/francisco/Dropbox/JSON_files/

GITHUB_PAGES   = /home/francisco/former/home/francisco/Documents/mis_escritos/precious/psimple/github_pages/
GITHUB_NODE_JS       = $(GITHUB_PAGES)nodejs.writeFile.promises.js
GITHUB_JS_WRITE_BLOB = $(GITHUB_PAGES)template.js.write.blob.html

HTML_TO_SAVE = js.assorted.find.html js.assorted.html js.test-*.html

%.array.js: %.array.json
	echo "\nconst $(ARRAY_PREFIX)$*$(ARRAY_SUFFIX) = " > $@
	cat            $<       >> $@
	echo ";\n"              >> $@
%.js: %.array.js %.array.json
	echo "done!"

bring_stylesheets_from_github_pages:
	cp --update $(GITHUB_PAGES)stylesheet*css ./
bring_github_js_write_blob:
	cp --update $(GITHUB_JS_WRITE_BLOB) ./js.write.blob.html

save_to_dropbox:
	cp --update $(HTML_TO_SAVE) *.json *.js Makefile *.md *.txt style*.css $(DROPBOX_SUBDIR)
