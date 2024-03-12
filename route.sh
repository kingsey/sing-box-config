nft add table inet nat
nft -- add chain inet nat prerouting { type nat hook prerouting priority -104 \; }
nft add rule inet nat prerouting ip daddr 192.168.1.1 udp dport 53 return comment "pass_dns"
nft add rule inet nat prerouting meta nfproto '{ ipv4, ipv6 }' udp dport 53 counter redirect to 5353 comment "AdG_HIJACK"
route add -net 149.154.160.0/20 gw 192.168.0.3
route add -net 185.76.151.0/24 gw 192.168.0.3
route add -net 91.105.192.0/23 gw 192.168.0.3
route add -net 91.108.12.0/22 gw 192.168.0.3
route add -net 91.108.16.0/22 gw 192.168.0.3
route add -net 91.108.20.0/22 gw 192.168.0.3
route add -net 91.108.4.0/22 gw 192.168.0.3
route add -net 91.108.56.0/22 gw 192.168.0.3
route add -net 91.108.8.0/22 gw 192.168.0.3
route add -net 198.18.0.0/15 gw 192.168.0.3