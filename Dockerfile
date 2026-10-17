FROM prestashop/prestashop:8.1.5-apache

# Modificar el puerto de Apache a 10000 para que coincida con el requerido por Render
RUN sed -i 's/80/10000/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 10000

# Forzar el entrypoint original de la imagen para evitar que Render inyecte scripts en /tmp
ENTRYPOINT ["/usr/local/bin/docker-php-entrypoint"]
CMD ["apache2-foreground"]