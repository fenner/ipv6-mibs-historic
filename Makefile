all:	no-more-v6-mibs.txt

MIBFILES=IPV6-ICMP-MIB-historic.txt IPV6-MIB-historic.txt IPV6-TC-historic.txt IPV6-TCP-MIB-historic.txt IPV6-UDP-MIB-historic.txt

no-more-v6-mibs.xml:	README.md $(MIBFILES)
	kramdown-rfc2629 $< > $@

no-more-v6-mibs.txt:	no-more-v6-mibs.xml
	xml2rfc $<
	mkdir -p new
	PATH=.:${PATH} smistrip -d new $@
	-cd new; for i in *; do diff --ignore-matching-lines='^$$' -u ../$$i-historic.txt $$i; done

copy:	no-more-v6-mibs.txt
	draftname=`awk '/docname:/ {print $$2}' README.md`; \
	cp no-more-v6-mibs.xml $$draftname.xml; \
	cp no-more-v6-mibs.txt $$draftname.txt; \
	cp no-more-v6-mibs.* $$draftname.* ../ipv6-mibs-historic-html
