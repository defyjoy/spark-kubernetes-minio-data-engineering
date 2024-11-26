docker network create \
  --ipv6 \
  --subnet 2001:db8::/64 \
  --driver=bridge \
  --subnet=172.18.0.0/16 \
  --gateway=172.18.0.1 \
  -o "com.docker.network.bridge.enable_ip_masquerade"="true" \
  -o "com.docker.network.driver.mtu"="65535" \
  kind_network
  # --ip-range=172.18.5.0/24 \