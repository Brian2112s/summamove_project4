FROM nginx:alpine

# Verwijder default content
RUN rm -rf /usr/share/nginx/html/*

# Kopieer je websitebestanden
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
