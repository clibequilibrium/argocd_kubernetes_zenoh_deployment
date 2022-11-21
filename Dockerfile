## Dockerfile
FROM eclipse/zenoh:0.6.0-beta.1

COPY libzbackend_s3.so /root/.zenoh/lib/
COPY zenoh.json5 .

RUN echo '#!/bin/ash' > /entrypoint.sh
RUN echo 'echo " * Starting: /zenohd with S3 storage $*"' >> /entrypoint.sh
RUN echo 'exec /zenohd -c zenoh.json5 $*' >> /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /root/.zenoh/lib/libzbackend_s3.so