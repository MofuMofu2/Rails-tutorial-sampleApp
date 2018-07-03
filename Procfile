web: bundle exec puma -C config/puma.rb

最後に、HerokuにpushしてDBを起動させれば良い

```cmd
  Rails-tutorial-sampleApp git:(master) heroku run rails db:migrate
Running rails db:migrate on ⬢ mysterious-lake-51229... up, run.9868
(Free)
D, [2018-07-03T06:59:01.587173 #4] DEBUG -- :    (1.0ms)  SELECT pg_try_advisory_lock(7881834231583107075)
D, [2018-07-03T06:59:01.623772 #4] DEBUG -- :    (5.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
D, [2018-07-03T06:59:01.636308 #4] DEBUG -- :   ActiveRecord::InternalMetadata Load (3.0ms)  SELECT  "ar_internal_metadata".* FROM "ar_internal_metadata" WHERE "ar_internal_metadata"."key" = $1 LIMIT $2[["key", "environment"], ["LIMIT", 1]]
D, [2018-07-03T06:59:01.649109 #4] DEBUG -- :    (0.9ms)  BEGIN
D, [2018-07-03T06:59:01.651959 #4] DEBUG -- :    (0.7ms)  COMMIT
D, [2018-07-03T06:59:01.653235 #4] DEBUG -- :    (0.8ms)  SELECT pg_advisory_unlock(7881834231583107075)
➜  Rails-tutorial-sampleApp git:(master)
```

URLがHTTPSに変化していることがわかる

https://mysterious-lake-51229.herokuapp.com/

ちゃんと動作もする。やった〜