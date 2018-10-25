FROM openjdk:8
COPY libretto /usr/src/libretto
WORKDIR /usr/src/libretto
RUN java  -Xss5m -Xmx800m -classpath libretto-run.jar org.librettolang.run.Update && \
    mkdir -p ~/Libretto/web/app/src && \
    echo  ~/Libretto/web/app/src > ~/Libretto/web/app/source.txt
CMD java -Xss5m -Xmx800m -classpath libretto-run.jar org.librettolang.run.Server app 8080
EXPOSE 8080
