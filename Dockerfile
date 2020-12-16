FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "BiocManager::install('hpar')"
RUN Rscript -e "BiocManager::install('rpremraj/mailR')"