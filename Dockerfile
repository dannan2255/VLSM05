FROM tomcat:9.0-jre11

# Instala Ant
RUN apt-get update && apt-get install -y ant

WORKDIR /app
COPY . .

# Ejecuta Ant para construir el proyecto
RUN ant

# Copia el archivo WAR generado a Tomcat
COPY C:\Users\danna\OneDrive\Documentos\NetBeansProjects\VLSM05\dist\VLSM05.war C:\xampp\tomcat\webapps\ROOT

EXPOSE 8080