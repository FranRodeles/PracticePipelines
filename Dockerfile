# Descarga la imagen de Ubuntu 16.04
FROM ubuntu:18.04

# Actualiza la imagen base de Ubuntu 16.04
RUN apt update 

# Ejecuta el commando apt-get install y elimina determinados archivos y temporales
RUN apt-get install -y apache2 \
    apt install –y apache2-utils \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Indica los puertos TCP/IP los cuales se pueden accede a los servicios del contenedor
EXPOSE 80

# Establece el commando del proceso de inicio del contenedor
CMD [“apache2ctl”, “-D”, “FOREGROUND”]


