FROM onething1/wxedge
ARG PORT
ARG CREDENTIAL
EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug
CMD ["/bin/cat", "/xyapp/tarapp/plugin_tunnel/logs/plugin_tunnel.log"]

