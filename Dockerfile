FROM tomcat:9.0-jre11

# Instala Ant
RUN apt-get update && apt-get install -y ant

WORKDIR /app
COPY . .

# Ejecuta Ant para construir el proyecto
RUN ant

# Copia el archivo WAR generado a Tomcat
COPY build/VLSM05.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080