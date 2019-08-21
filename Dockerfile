FROM openjdk
WORKDIR /usr/src/app
RUN curl -so /usr/bin/libretto-run.jar http://libretto-lang.org/ide/libretto-run.jar && \
    mkdir -p ~/Libretto/web/app/src && \
    echo  /usr/src/app > ~/Libretto/web/app/source.txt
	java -Xss10m -Xmx16G -classpath "/usr/bin/libretto-run.jar" org.librettolang.run.Update
CMD ["java", "-Xss5m", "-Xmx16G", "-classpath", "/usr/bin/libretto-run.jar", "org.librettolang.run.Libretto", "-e", "server/runByDirs:\".\", \".\", 8080"]
EXPOSE 8080