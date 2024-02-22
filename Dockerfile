FROM onething1/wxedge


EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

