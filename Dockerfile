## Dockerfile
FROM eclipse/zenoh:0.6.0-beta.1

COPY libzbackend_s3.so .
COPY zenoh.json5 .
COPY s3-entrypoint.sh .

RUN chmod +x /s3_entrypoint.sh
ENTRYPOINT ["/s3_entrypoint.sh"]