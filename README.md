---
coding: utf-8

title: Republishing the IPV6-MIB modules as obsolete
abbrev: ipv6-mibs-obsolete
docname: draft-fenner-ipv6-mibs-obsolete-00
category: info

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

(This section may be removed by the RFC Editor.)

It is expected that the publication of this document
will be accompanied by a note from the IESG reclassifying
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
IANA is asked to add the same annotation to the entries in the "SMI Network Management MGMT Codes"
section for RFC2465 and RFC2466.[^1]

[^1]: Other objects have "(DEPRECATED)" annotations; should we try to unify this?
{:source="fenner"}

--- back

# Change history

## Changes since -00

* Realized that IPV6-ICMP-MIB was {{?RFC2466}}, so modified the added
    REVISION clause and the Reclassification section.

* Added Security Considerations

* Added IANA Considerations

* Added the 6.c.iii Legend to the copyright statement, since the original
    RFCs were published before pre-5378.

* Used "MIB module" instead of "MIB" when referring to a module, and
    changed REVISION DESCRIPTION to "Obsoleting", not "Deprecating".

