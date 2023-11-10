FROM node:18-alpine

WORKDIR /app

COPY . .

RUN apk update && apk add nodejs npm xdg-utils git

RUN npm install && npm install -g @angular/cli && npm run build

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
