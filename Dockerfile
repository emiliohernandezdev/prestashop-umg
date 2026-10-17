FROM prestashop/prestashop:8.1.5-apache

# Cambiar puerto de Apache a 10000 para Render
RUN sed -i 's/80/10000/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 10000

ENTRYPOINT ["/usr/local/bin/docker-php-entrypoint"]
CMD ["apache2-foreground"]