## Dockerfile
FROM eclipse/zenoh:0.6.0-beta.1

COPY libzbackend_s3.so .
COPY zenoh.json5 .