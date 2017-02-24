---
coding: utf-8

title: The IPv6-Specific MIB Modules Are Obsolete
abbrev: IPv6 MIB Modules Obsolete
docname: draft-ietf-6man-ipv6-mibs-obsolete-02
category: info
obsoletes: 2452, 2454, 2465, 2466
area: Internet
workgroup: IPv6 Maintenance
date: 2017-02

stand_alone: yes
pi:
  toc: yes
  sortrefs: yes
  symrefs: yes
  comments: yes
  compact: yes
  subcompact: no
ipr: pre5378Trust200902
submissionType: IETF
consensus: yes
number: 8096

author:
  -
    ins: B. Fenner
    name: Bill Fenner
    org: Arista Networks, Inc.
    street: 5453 Great America Parkway
    city: Santa Clara
    region: CA
    code: 95054
    country: United States of America
    phone: +1-408-547-5572
    email: fenner@fenron.com

--- abstract

In 2005-2006, the IPv6 MIB update group published
updated versions of the IP-MIB, UDP-MIB,
TCP-MIB, and IP-FORWARD-MIB modules,
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
This document contains versions of the obsoleted
IPV6-MIB, IPV6-TC, IPV6-ICMP-MIB, IPV6-TCP-MIB,
and IPV6-UDP-MIB modules, for the purpose of updating
MIB module repositories.
This document obsoletes RFCs 2452, 2454, 2465, and 2466 (i.e., the
RFCs containing these MIBs) and reclassifies them as Historic.

--- middle

# Motivation

In 2005-2006, the IPv6 MIB update group published
updated versions of the IP-MIB {{?RFC4293}}, UDP-MIB {{?RFC4113}},
TCP-MIB {{?RFC4022}}, and IP-FORWARD-MIB {{?RFC4292}} modules,
which use the InetAddressType/InetAddress
construct to handle IPv4 and IPv6 in the same table.
The RFC Editor marked these documents as obsoleting
the corresponding IPV6-MIBs, but the
extracted content of these MIBs never changed in
MIB repositories, and the original RFCs (as is normal
IETF policy) never changed from being Proposed Standard.

Note that the timeline of these MIB modules is as
shown below (and it is the added support for IPv6 in the later
revision of the original modules that people often overlook).

                           IPv6-MIB--------X
                                            \
                  IP-MIB-------------------IP-MIB--->

This causes an unclear situation when simply looking at
MIB repositories, so we are simply republishing these
MIB modules with the Structure of Management Information (SMI)
syntax changed to obsolete.
This is an unusual step, and it is not the intended path with
every obsolete MIB module; the special history of these
modules led to this special step.

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

IANA has updated the SMI Numbers registry at
[smi-numbers](http://www.iana.org/assignments/smi-numbers/) as
described below.

IANA has updated the "SMI Network Management MGMT Codes Internet-standard MIB"
section as follows:

* Removed RFC1213 from the references for mib-2.5 ("icmp").

* Updated the reference for mib-2.6 ("tcp") to point to RFC4022.

* Removed RFC1213 from the references for mib-2.7 ("udp").

* Removed RFC2012 from the references for mib-2.49 ("tcpMIB").

* Added the "(Historic)" annotation for the entries for mib-2.55 ("ipv6MIB") and
    mib-2.56 ("ipv6IcmpMIB") and updated the reference of each to point to this document.

IANA has updated the following changes to the "SMI Experimental Codes" section as follows:

* Added the "(Historic)" annotation for experimental.74 ("IPV6 MIB")

* Changed the "(Historical)" annotation for experimental.87 ("ipv6UdpMIB") to "(Historic)"

* Updated the reference for experimental.86 ("ipv6TcpMIB") and
    experimental.87 ("ipv6UdpMIB") to point to this document.

