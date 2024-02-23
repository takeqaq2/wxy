FROM  onething1/wxedge
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get -y install wget
RUN wget -qO /bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && \
    chmod +x /bin/ttyd
EXPOSE $PORT
ARG PORT
ARG CREDENTIAL
EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

RUN ["/bin/sh", "-c", "/bin/ttyd -p $PORT -c $USERNAME:$PASSWORD /bin/bash"]

