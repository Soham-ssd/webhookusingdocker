# Use the official Apache HTTP server image as the base
FROM httpd:2.4

# Write the HTML content using echo and redirect it to the web server's root directory
RUN echo "<html><head><title>V1 using dokcerfile</title></head><body><h1>Hello, World!</h1></body></html>" > index.html
RUN copy index.html > /usr/local/apache2/htdocs/index.html

# Expose port 80 for HTTP requests
EXPOSE 80
