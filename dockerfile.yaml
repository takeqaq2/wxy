version: "3"
services:
  wxedge:
    image: onething1/wxedge
    container_name: wxedge
    restart: always
    privileged: true
    network_mode: host
    tmpfs:
      - /run
      - /tmp
    volumes:
      - /data:/storage:rw
    environment:
      - port=443
