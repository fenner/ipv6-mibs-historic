---
coding: utf-8

title: Republishing the IPV6-specific MIB modules as obsolete
abbrev: ipv6-mibs-obsolete
docname: draft-ietf-6man-ipv6-mibs-obsolete-01
category: info
obsoletes: 2452, 2454, 2465, 2466
area: Internet
workgroup: IPv6 Maintenance

stand_alone: yes
pi: [toc, sortrefs, symrefs, comments]
ipr: pre5378Trust200902

author:
  -
    ins: B. Fenner
    name: Bill Fenner
    org: Arista Networks, Inc.
    street: 5453 Great America Parkway
    city: Santa Clara
    code: 95054
    country: USA
    phone: +1-408-547-5572
    email: fenner@fenron.com

--- abstract

In 2005, the IPv6 MIB update group published
updated versions of the IP-MIB, UDP-MIB,
TCP-MIB and IP-FORWARD-MIB modules,
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
This document contains versions of the obsoleted
IPV6-MIB, IPV6-TC, IPV6-ICMP-MIB, IPV6-TCP-MIB
and IPV6-UDP-MIB modules, for the purpose of updating
MIB module repositories.

--- middle

# Motivation

In 2005, the IPv6 MIB update group published
updated versions of the IP-MIB {{?RFC4293}}, UDP-MIB {{?RFC4113}},
TCP-MIB {{?RFC4022}} and IP-FORWARD-MIB {{?RFC4292}} modules,
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
These documents were marked in the RFC Index as
obsoleting the corresponding IPV6-MIBs, but the
extracted content of these MIBs never changed in
MIB repositories, and the original RFCs (as is normal
IETF policy) never changed from being Proposed Standard.

This causes an unclear situation when simply looking at
MIB repositories, so we are simply republishing these
MIB modules with the SMI syntax changed to obsolete.

# Historic IPV6-TC

~~~~
{::include IPV6-TC-historic.txt}
~~~~

# Historic IPV6-MIB

~~~~
{::include IPV6-MIB-historic.txt}
~~~~

# Historic IPV6-ICMP-MIB

~~~~
{::include IPV6-ICMP-MIB-historic.txt}
~~~~

# Historic IPV6-UDP-MIB

~~~~
{::include IPV6-UDP-MIB-historic.txt}
~~~~

# Historic IPV6-TCP-MIB

~~~~
{::include IPV6-TCP-MIB-historic.txt}
~~~~

# Reclassification

This document reclassifies
{{?RFC2452}},
{{?RFC2454}},
{{?RFC2465}},
and
{{?RFC2466}}
to Historic.

# Security Considerations

This document contains only obsolete objects, which {{!RFC2578}}
says "should not be implemented and/or can be removed if previously
implemented".  Since the contents of this document should not be
implemented, it has no security implications.  If there
were any security implications based on these objects in an
implementation, removing these objects as {{RFC2578}} suggests
would improve the security of that implementation.

# IANA Considerations

In
[smi-numbers](http://www.iana.org/assignments/smi-numbers/smi-numbers.xhtml),
the entries for RFC2452 and RFC2454, in the "SMI Experimental Codes" section,
have an annotation "(Historic)" or "(Historical)".

IANA is asked to make the following changes to the "SMI Network Management MGMT Codes Internet-standard MIB"
section:

* Remove RFC1213 from the references for mib-2.5 "icmp".

* Update the reference for mib-2.6 "tcp" to point to RFC4022.

* Remove RFC1213 from the references for mib-2.7 "udp".

* Remove RFC2012 from the references for mib-2.49 "tcpMIB".

* Add the "(Historic)" annotation for the entries for mib-2.55 "ipv6MIB" and for
    mib-2.56 "ipv6IcmpMIB", and update the reference to point to this document.

IANA is asked to make the following changes to the "SMI Experimental Codes" section:

* Add the "(Historic)" annotation for experimental.74 "IPV6 MIB"

* Change the "(Historical)" annotation for experimental.87 "ipv6UdpMIB" to "(Historic)"

* Update the reference for experimental.86 "ipv6TcpMIB" and
    experimental.87 "ipv6UdpMIB" to point to this document.

--- back

# Change history

## Changes since draft-ietf-6man-ipv6-mibs-obsolete-01

Thanks to an excellent review by Mike Heard.

* Correct the REVISION clause for the original IPV6-MIB

* Remove the illegal sub-typing from SEQUENCE definitions in
    IPV6-MIB, IPV6-UDP-MIB and IPV6-TCP-MIB.

## Changes since draft-fenner-ipv6-mibs-obsolete-00

* Realized that IPV6-ICMP-MIB was {{?RFC2466}}, so modified the added
    REVISION clause and the Reclassification section.

* Added Security Considerations

* Added IANA Considerations

* Added the 6.c.iii Legend to the copyright statement, since the original
    RFCs were published before pre-5378.

* Used "MIB module" instead of "MIB" when referring to a module, and
    changed REVISION DESCRIPTION to "Obsoleting", not "Deprecating".

* Added "Obsoletes:" header to document

* Switched to pre-5378 IPR statement, since the original RFCs were
    pre-5378.

## Changes since draft-fenner-ipv6-mibs-obsolete-01

* Updated the DESCRIPTION of MODULE-IDENTITY to improve the "MIB index"
    problem.

* Updated IANA considerations.

## Changes since draft-fenner-ipv6-mibs-obsolete-02

* Fixed "IPV6-MIB" in title

* Fixed some extra blank lines in the source MIBs, introduced by the
    process of extraction from RFCs.
