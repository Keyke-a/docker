FROM cypress/included:latest
WORKDIR /APP
COPY . /APP
RUN npm install
RUN npx cypress verify
RUN ["npx", "cypress", "run"]
