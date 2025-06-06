# Usa la imagen oficial de Tomcat 10 con JDK 21
FROM tomcat:10.1-jdk21

# Elimina las aplicaciones por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia tu archivo WAR al contenedor y renómbralo como ROOT.war para que sea accesible directamente en /
COPY TruequesTFG.war /usr/local/tomcat/webapps/ROOT.war

# Expón el puerto por el que Tomcat sirve las aplicaciones
EXPOSE 8080

# Comando para arrancar Tomcat
CMD ["catalina.sh", "run"]