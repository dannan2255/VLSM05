FROM tomcat:9.0-jre11

# Instala Ant y herramientas necesarias
RUN apt-get update && apt-get install -y ant

WORKDIR /app
COPY . .

# Ejecuta Ant para construir el proyecto
RUN ant

# Copia el archivo WAR desde dist/ a Tomcat (como en tu entorno local)
COPY dist/VLSM05.war /usr/local/tomcat/webapps/ROOT.war


EXPOSE 8080