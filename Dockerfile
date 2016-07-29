FROM node:4.4.7

# Add our user and group first to make sure their IDs get assigned consistently
RUN useradd --user-group --create-home --shell /bin/false app &&\
	npm install --global npm@3.7.5

ENV HOME=/home/app

# Install dependencies in container
COPY package.json npm-shrinkwrap.json $HOME/simple/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/simple
RUN npm install
