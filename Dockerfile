# Dockerfile

FROM httpd:2.4

# Copiamos el archivo index.html al directorio del servidor Apache
COPY web/* /usr/local/apache2/htdocs/

# Exponemos el puerto 80 para el tráfico HTTP
EXPOSE 80
