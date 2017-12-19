#
# Build the "standalone" Elm application in a nodejs container
#
FROM node
COPY . /app
WORKDIR /app
RUN npm install create-elm-app
RUN cd standalone && yes | /app/node_modules/.bin/elm-package install
RUN cd standalone && /app/node_modules/.bin/elm-app build
RUN cd integrated && yes | /app/node_modules/.bin/elm-package install
RUN cd integrated && /app/node_modules/.bin/elm-app build

#
# Copy the finished bundle into a simple Nginx container
#
FROM nginx
COPY --from=0 /app/standalone/build /usr/share/nginx/html/standalone
COPY --from=0 /app/integrated/build /usr/share/nginx/html/integrated
