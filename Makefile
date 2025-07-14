ARRAY_PREFIX = ""
ARRAY_SUFFIX = "_a"

%.array.js: %.array.json
	echo "\nlet $(ARRAY_PREFIX)$*$(ARRAY_SUFFIX) = " > $@
	cat            $<       >> $@
	echo ";\n"              >> $@
%.js: %.array.js %.array.json
	echo "done!"
