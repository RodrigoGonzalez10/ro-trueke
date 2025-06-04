FROM eclipse-temurin:17-jdk

# Instala GlassFish
ENV GLASSFISH_VERSION 6.2.5
RUN apt-get update && apt-get install -y unzip curl && \
    curl -L -o glassfish.zip https://download.eclipse.org/ee4j/glassfish/glassfish-${GLASSFISH_VERSION}.zip && \
    unzip glassfish.zip && mv glassfish*/ /opt/glassfish && \
    rm glassfish.zip

# Copia el WAR al dominio por defecto
COPY TruequesTFG.war /opt/glassfish/glassfish/domains/domain1/autodeploy/

# Exponer el puerto estándar de GlassFish
EXPOSE 8080

# Ejecuta GlassFish al arrancar
CMD ["/opt/glassfish/glassfish/bin/asadmin", "start-domain", "-v"]
