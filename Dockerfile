FROM hypriot/rpi-alpine-scratch
COPY . /proxy
WORKDIR /proxy
RUN mkdir keys
RUN chmod +x run.sh
RUN apk update && \
apk upgrade && \
apk add bash && \
apk add openssh-client && \
rm -rf /var/cache/apk/*
CMD ./run.sh