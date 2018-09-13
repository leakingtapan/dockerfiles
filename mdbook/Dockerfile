FROM alpine:3.8 as builder
RUN wget https://github.com/rust-lang-nursery/mdBook/releases/download/v0.2.1/mdbook-v0.2.1-x86_64-unknown-linux-gnu.tar.gz
RUN tar xzf mdbook-v0.2.1-x86_64-unknown-linux-gnu.tar.gz

FROM busybox:glibc  
RUN mkdir -p /lib/x86_64-linux-gnu/
COPY libdl.so.2 /lib/x86_64-linux-gnu/
COPY libdl-2.24.so /lib/x86_64-linux-gnu/
COPY librt.so.1 /lib/x86_64-linux-gnu/
COPY librt-2.24.so /lib/x86_64-linux-gnu/
COPY libgcc_s.so.1 /lib/x86_64-linux-gnu/
COPY --from=builder mdbook /usr/bin/
WORKDIR /data
CMD ["mdbook"] 
