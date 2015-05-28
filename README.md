---
coding: utf-8

title: Moving the IPV6-MIBs to historic
abbrev: ipv6-mibs-historic
docname: draft-fenner-ipv6-mibs-historic-00
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
    code: 95xxx
    country: USA
    phone: +1-408-547-5572
    email: fenner@fenron.com

--- abstract

insert abstract here

--- middle

# ipv6-mibs-historic
Moving the IPV6-MIBs to historic

## Why?

In 2005, the IPv6 MIB update group published
updated versions of the IP-MIB {{?RFC4293}}, UDP-MIB, TCP-MIB and
IP-FORWARDING-MIB that use the InetAddressType/InetAddress
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
{::include IPV6-TC.txt}
~~~~

# Historic IPV6-MIB

~~~~
{::include IPV6-MIB.txt}
~~~~

# Historic IPV6-ICMP-MIB

~~~~
{::include IPV6-ICMP-MIB.txt}
~~~~

# Historic IPV6-UDP-MIB

~~~~
{::include IPV6-UDP-MIB.txt}
~~~~

# Historic IPV6-TCP-MIB

~~~~
{::include IPV6-TCP-MIB.txt}
~~~~
