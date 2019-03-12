FROM bitwalker/alpine-erlang:21.0

ENV ELIXIR_VERSION 1.6.6

RUN apk --no-cache upgrade
RUN apk --no-cache add git make
RUN apk --no-cache add openssl
RUN apk --no-cache add inotify-tools

RUN apk --no-cache add --virtual build-dependencies wget ca-certificates && \
    wget --no-check-certificate https://github.com/elixir-lang/elixir/releases/download/v${ELIXIR_VERSION}/Precompiled.zip && \
    mkdir -p /opt/elixir-${ELIXIR_VERSION}/ && \
    unzip Precompiled.zip -d /opt/elixir-${ELIXIR_VERSION}/ && \
    rm Precompiled.zip && \
    apk --no-cache del build-dependencies 

RUN apk --no-cache add nodejs-npm

ENV PATH $PATH:/opt/elixir-${ELIXIR_VERSION}/bin

RUN mix local.hex --force
RUN mix local.rebar --force
RUN git clone https://github.com/JohnB/docker_test2.git
RUN cd /opt/app/docker_test2 && mix deps.get
RUN cd /opt/app/docker_test2 && mix compile
RUN cd /opt/app/docker_test2/assets && npm install

CMD ["/opt/app/docker_test2/lib/docker_run_script.sh"]
