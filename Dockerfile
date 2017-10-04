FROM rootproject/root-ubuntu16
COPY . /usr/local/bin
WORKDIR /root
USER root
RUN apt-get update && apt-get install -y curl zip && \
    curl -s https://bootstrap.pypa.io/get-pip.py |python && \
    pip install hftools
ENV LD_LIBRARY_PATH=/usr/local/lib/root DYLD_LIBRARY_PATH=/usr/local/lib/root \
    SHLIB_PATH=/usr/local/lib/root PYTHONPATH=/usr/local/lib/root \
    MANPATH=/usr/local/share/man CMAKE_PREFIX_PATH=/usr/local/ \
    JUPYTER_PATH=/usr/local/etc/notebook
#USER builder
