FROM eclipse/zenoh:master

COPY libzbackend_s3.so .
COPY zenoh.json5 .

RUN echo '#!/bin/ash' > /entrypoint.sh
RUN echo 'echo " * Starting: /zenohd with S3 storage $*"' >> /entrypoint.sh
RUN echo 'exec /zenohd -c zenoh.json5 $*' >> /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x libzbackend_s3.so