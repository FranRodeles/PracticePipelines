# Descarga la imagen de Ubuntu 18.04
FROM ubuntu:18.04

# Actualiza la imagen base de Ubuntu 18.04
RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Indica los puertos TCP/IP a los cuales se puede acceder a los servicios del contenedor
EXPOSE 80

# Establece el comando del proceso de inicio del contenedor
CMD ["apache2ctl", "-D", "FOREGROUND"]
