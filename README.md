# Monitor PostgreSQL With Prometheus and Grafana

[If you need a complete guide please head to this medium story!
](https://rezakhademix.medium.com/a-complete-guide-to-monitor-postgresql-with-prometheus-and-grafana-5611af229882)

## Requirements
* Install Docker

## Not Essential 
* Install GNU Make (Not essential)

## Use the following command to run
* Run `docker compose up` (If you installed makefile you can use `make up`)


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
  
*  [Here is a sample image of grafana dashboard!
](https://rezakhademix.medium.com/a-complete-guide-to-monitor-postgresql-with-prometheus-and-grafana-5611af229882)


## Ports
The containers and their exposed ports are:

-   **postgresql** - `:5432`
-   **prometheus** - `:9090`
-   **grafana** - `:3000`
-   **postgresql-exporter** - `:9187`


