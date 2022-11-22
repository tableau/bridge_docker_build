FROM $SOURCE_REPO:$IMAGE_TAG
ARG TABLEAU_BRIDGE_RPM
USER root
RUN --mount='type=bind,source=build,target=/build' /build/build.sh
COPY start-bridgeclient.sh .
RUN chmod 755 start-bridgeclient.sh
CMD ["./start-bridgeclient.sh"]