FROM openjdk:8
COPY libretto /usr/src/libretto
WORKDIR /usr/src/libretto
RUN java -Xss5m -Xmx800m -classpath libretto-run.jar org.librettolang.run.Update
CMD java -Xss5m -Xmx800m -classpath libretto-run.jar org.librettolang.run.Libretto -e 123 + 321
