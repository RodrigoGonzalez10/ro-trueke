FROM payara/server-full:latest

# Copiar el archivo .war a la carpeta de despliegue automático
COPY TruequesTFG.war $DEPLOY_DIR

# Exponer el puerto por defecto de Payara
EXPOSE 8080
