FROM jekyll/jekyll:3.5

ENV JEKYLL_ENV production
ENV VIRTUAL_PORT 4000

ADD jekyll /srv/jekyll

EXPOSE 4000
EXPOSE 35729

RUN bundle check || bundle install

ENTRYPOINT  ["jekyll", "serve --watch --drafts --force_polling --verbose"]
