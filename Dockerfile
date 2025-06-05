# Usa la imagen oficial de Payara Full
FROM payara/server-full:latest

# Crea una carpeta temporal para copiar el WAR
WORKDIR /opt/payara/deployments

# Copia tu archivo WAR al directorio de despliegue de Payara
COPY TruequesTFG.war ./trueques.war
