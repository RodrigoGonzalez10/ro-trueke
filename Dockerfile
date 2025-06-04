# Imagen base: Tomcat 10
FROM tomcat:10.1-jdk21

# Eliminar apps por defecto (opcional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR a la carpeta webapps de Tomcat
COPY Truekes.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto
EXPOSE 8080

# Comando de arranque
CMD ["catalina.sh", "run"]

