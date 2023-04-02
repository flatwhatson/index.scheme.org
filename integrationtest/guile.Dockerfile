FROM integrationtest-base

FROM docker.io/schemers/guile
COPY --from=0 /app/integrationtest/guile-tests /app/guile-tests
COPY integrationtest/tester-r7rs.sld /app/
COPY integrationtest/tester-impl.scm /app/
WORKDIR /app
CMD for filename in guile-tests/*; do echo "Running test $filename"; guile --r7rs --no-auto-compile -L . $filename; done
