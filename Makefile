all:	no-more-v6-mibs.txt

no-more-v6-mibs.xml:	README.md
	kramdown-rfc2629 $< > $@

no-more-v6-mibs.txt:	no-more-v6-mibs.xml
	xml2rfc $<
