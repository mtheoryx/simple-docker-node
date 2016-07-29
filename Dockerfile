FROM node:4.4.7

# Add our user and group first to make sure their IDs get assigned consistently
RUN useradd --user-group --create-home --shell /bin/false app &&\
	npm install --global npm@3.7.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/simple
