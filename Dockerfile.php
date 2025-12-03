FROM php:8.2-apache
# Instalamos extensiones si fueran necesarias (para este caso simple no, pero es buena práctica saberlo)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiamos el index.php a la carpeta pública de Apache
COPY fronted/index.php /var/www/html/index.php