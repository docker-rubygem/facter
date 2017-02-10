FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.4.6-x64-mingw32

RUN gem install facter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["facter"]
CMD ["--help"]
