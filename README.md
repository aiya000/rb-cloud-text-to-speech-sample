Make `./key.json` with your credential json of your GCP project's service account.

```shell-session
$ bundle install
$ export GOOGLE_APPLICATION_CREDENTIALS=key.json
$ bundle exec ruby main.rb
```
