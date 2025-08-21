
{% do run_query("COPY INTO landing.clientes FROM @stage/clientes.csv") %}