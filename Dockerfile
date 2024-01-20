FROM ghcr.io/rasilab/samtools:1.16.1

# install hisat2-3n
RUN apt update && apt install -y build-essential
RUN git clone https://github.com/DaehwanKimLab/hisat2.git hisat-3n
RUN cd hisat-3n && git checkout -b hisat-3n origin/hisat-3n && make

# put hisat2-3n in path
ENV PATH "$PATH:/hisat-3n"
