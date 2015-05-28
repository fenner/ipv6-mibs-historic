---
coding: utf-8

title: Republishing the IPV6-MIBs as obsolete
abbrev: ipv6-mibs-obsolete
docname: draft-fenner-ipv6-mibs-obsolete-00
category: historic

stand_alone: yes
pi: [toc, sortrefs, symrefs, comments]

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
TCP-MIB and IP-FORWARD-MIB,
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
This document contains versions of the obsoleted
IPV6-MIB, IPV6-TC, IPV6-ICMP-MIB, IPV6-TCP-MIB
and IPV6-UDP-MIB, for the purpose of updating
MIB repositories.

--- middle

# Motivation

In 2005, the IPv6 MIB update group published
updated versions of the IP-MIB {{?RFC4293}}, UDP-MIB {{?RFC4113}},
TCP-MIB {{?RFC4022}} and IP-FORWARD-MIB {{?RFC4292}},
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
These documents were marked in the RFC Index as
obsoleting the corresponding IPV6-MIBs, but the
extracted content of these MIBs never changed in
MIB repositories, and the original RFCs (as is normal
IETF policy) never changed from being Proposed Standard.

This causes an unclear situation when simply looking at
MIB repositories, so we are simply republishing these
documents with the SMI syntax changed to obsolete.

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
and
{{?RFC2465}}
to Historic.
