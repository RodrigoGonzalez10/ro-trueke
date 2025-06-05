# Imagen base: Tomcat 10
FROM tomcat:10.1-jdk21

# Eliminar aplicaciones por defecto (opcional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar WAR
COPY Trueques.war /usr/local/tomcat/webapps/ROOT.war

# Hacer que los logs de Tomcat salgan en consola (Railway puede verlos)
RUN ln -sf /dev/stdout /usr/local/tomcat/logs/catalina.out

# Exponer puerto
EXPOSE 8080

# Arrancar Tomcat
CMD ["catalina.sh", "run"]