# Monitor PostgreSQL With Prometheus and Grafana

[If you need a complete guide please head to this medium story!
](https://rezakhademix.medium.com/a-complete-guide-to-monitor-postgresql-with-prometheus-and-grafana-5611af229882)

## Requirements
* Install Docker

## Not Essential 
* Install GNU Make (Not essential)

## Use the following command to run
* Run `docker compose up -d` (If you installed makefile you can use `make up`)

## Import the Grafana dashboard

1. Open Grafana at `http://localhost:${GRAFANA_PORT:-3000}` and sign in with the `admin` user and the value of `GRAFANA_PASSWORD`.
2. Add a Prometheus data source whose URL is `http://prometheus:9090` when Grafana is running in this Compose stack.
3. Import `grafana-dashboard-to-import.json` and select that Prometheus data source when prompted.

The dashboard variables are filters over Prometheus labels:

- **Job** selects the Prometheus scrape job. The default `postgresql` job scrapes `postgresql-exporter:9187`.
- **Instance** selects the exporter endpoint within the selected job. The default is `postgresql-exporter:9187`.
- **Interval** controls the range vector used by rate calculations. Auto is normally appropriate; choose a longer value when viewing a long time range or a shorter value for more responsive detail.
- **Database** filters panels by PostgreSQL database name. `All` includes every database.
- **Lock table** filters lock panels by PostgreSQL lock mode.

Older versions of this dashboard used **Namespace** and **Release**, which are Kubernetes/Helm labels. This repository runs with Docker Compose, so it does not create `kubernetes_namespace` or `release` labels; the dashboard now uses **Job** instead. If a previously imported copy still shows those variables, re-import the current JSON or update its Prometheus queries accordingly.

The Prometheus scrape interval is configured separately in `docker/prometheus/prometheus.yml` and defaults to 15 seconds. The dashboard's `Interval` variable changes query lookback windows; it does not change how often Prometheus scrapes PostgreSQL.


## You'll be able to monitor  
* CRUD operations on database
* Locks & Dead Locks
* Connections
* CPU Usage
* Load Average
* Memory Usage
* Shared Buffers
* Current Fetched Data
* Database Cache
* Parallel Workers
* Transactions
* Sessions
* and so much more...
  

## Ports
The containers and their exposed ports are:

-   **postgresql** - `:5432`
-   **prometheus** - `:9090`
-   **grafana** - `:3000`
-   **postgresql-exporter** - `:9187`


