
( find ./ -name '*.yml' -print0 | xargs -0 cat ) | wc -l
( find ./ -name '*.sh' -print0 | xargs -0 cat ) | wc -l
( find ./ -name '*.sql' -print0 | xargs -0 cat ) | wc -l