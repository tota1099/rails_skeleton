FROM ruby:3.3.4

RUN apt-get update -qq && \
    apt-get install -y build-essential

WORKDIR /var/app
COPY . .

RUN bundle install -j4 --retry 3

ENTRYPOINT [ "./entrypoint.sh" ]