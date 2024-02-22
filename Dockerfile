FROM onething1/wxedge


EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug


CMD ["/bin/bash", "-c", "/bin/ttyd -p $PORT -c $USERNAME:$PASSWORD /bin/bash"]
