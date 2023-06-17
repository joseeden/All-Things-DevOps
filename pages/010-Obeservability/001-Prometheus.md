

# Prometheus 


- [What is Prometheus](#what-is-prometheus)
- [Exporters](#exporters)
- [Counters and Gauges](#counters-and-gauges)
- [Resources](#resources)


## What is Prometheus 

Prometheus is a server component and you'll typically run one instance of Prometheus in each environment.

- Cross-platform, works with Linux and Windows
- Pulls the metrics exposed in your systems
- Provides metrics on CPU, memory, disk use, etc.
- Stores all metrics in a time-series database running in the same server

Time-series data means that all metrics recorded have a timestamp to make it easier to see trends and spikes over a period of time. Prometheus adds the timestamps when it fetches the data and then makes them easy to query using time ranges.

Prometheus also has its own query language called PromQL because time-series data doesn't work well with standard SQL. These queries can be ran using the HTTP API running in the server.

Server configurations can also be viewed through the web UI running in the server. This can be used for administrative tasks, such as checking if the Prometheus server can reach the systems that it's configured to monitor. Note that the web UI isn't a fully featured dashboard so it cannot display the overall health of the system. For this case we can use a separate tool such as Grafana which can then connect to the Prometheus API to gather the data to visualize.

In addition to this, Prometheus also has an alerting system that allows us to register rules. which when triggered, can send emails or create tickets.

## Exporters 

To monitor systems, we need to run an exporter on the system. This exporter will provide all the metrics in an HTTP endpoint. The Prometheus server grabs the metrics from the endpoint on a schedule and stores them.

- Prometheus does not care about what the system or the metrics means
- Its only job is to provide the metrics in a standard Prometheus format
- Common systems that it can monitor include:
    - Websites that run on Windows 
    - Batch processes running on Linux
    - Windows and Linux servers

As an example, to monitor a Linux server, we'll need to run a **node exporter** on the server that provides the HTTP endpoint which returns all the current metric values in a Prometheus format.

```bash
<metric name>{<label name>=<label value>, ...} 
```

For example, a time series with the metric name api_http_requests_total and the labels method="POST" and handler="/messages" could be written like this:

```bash
api_http_requests_total{method="POST", handler="/messages"}  
```

The whole monitoring stack is built into a single server which lightweight to run. In addition to this, there are a number of available exporters maintained by the community or the Prometheus project. Some of these exporters cover:

- databases
- message queues
- cloud services
- hardwares, etc.

For monitoring of application metrics, Pormetheus also supports a number of client libraries:

- Python 
- NodeJS
- Go 
- Java
- Microsoft .Net

## Counters and Gauges 
## Resources 

- 