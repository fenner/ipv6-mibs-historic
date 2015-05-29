all:	no-more-v6-mibs.txt

no-more-v6-mibs.xml:	README.md
	kramdown-rfc2629 $< > $@

no-more-v6-mibs.txt:	no-more-v6-mibs.xml
	xml2rfc $<
	mkdir -p new
	PATH=.:${PATH} smistrip -d new $@
	-cd new; for i in *; do diff --ignore-matching-lines='^$$' -u ../$$i-historic.txt $$i; done
