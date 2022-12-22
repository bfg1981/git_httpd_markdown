FROM therealbfg/git_httpd AS git_httpd_markdown

#This is adaptation to our special needs
RUN apk --no-cache add apache-mod-fcgid perl-date-format perl-yaml-xs
COPY conf/*.conf /etc/apache2/conf.d/
COPY cgi-bin/* /var/www/localhost/cgi-bin/
