

# Prometheus 


- [What is Prometheus](#what-is-prometheus)
- [Exporters](#exporters)
- [Counters and Gauges](#counters-and-gauges)
- [Resources](#resources)


## What is Prometheus 

Prometheus is a server-based monitoring system where typically, you run one instance per environment.

- Cross-platform, works with Linux and Windows
- Gather metrics exposed in your systems
- Provides metrics on CPU, memory, disk use, etc.
- Stores this data in a time-series database on the same server.

**Time-series data** 

- This means that all metrics recorded have a timestamp.
- This makes it easier to see trends and spikes over a period of time. 
- Timestamps are added when the data is fetched.
- This makes them easy to query using time ranges.

**PromQL**

- Prometheus also has its own query language called PromQL. 
- This is because time-series data doesn't work well with standard SQL.
- Queries can be ran using the HTTP API running in the server.

**Server Configurations**

- Server configurations can be viewed through the web UI on the server.
- The Web UI can be used for administrative tasks, like verifying reachability of the monitored systems.
- The web UI is limited and not a comprehensive dashboard.
- For a complete system health view, connect Grafana to Prometheus to visualize data.
- In-built alerting system to set rules for sending emails or creating tickets when triggered.

## Exporters 

To monitor systems with Prometheus, you need to run an exporter on each system. 

- The exporter creates an HTTP endpoint that provides metrics.
- Metrics are then collected and stored by the Prometheus server a regular schedule.
- Prometheus doesn't interpret what the system or metrics represent.
- It simply collects them in a standardized format.
- It can monitor various systems, including:
  - Websites running on Windows
  - Batch processes on Linux
  - Servers on both Windows and Linux
  
For example, to monitor a Linux server, you would run a **node exporter** on it. This exporter provides an HTTP endpoint that returns all current metric values in the Prometheus format.

```bash
<metric name>{<label name>=<label value>, ...} 
```

An example of a time series could be an entry with the metric name `api_http_requests_total` and the labels `method="POST"` and `handler="/messages"`.

```bash
api_http_requests_total{method="POST", handler="/messages"}  
```

The entire monitoring stack runs on a single, lightweight server. Additionally, many exporters, developed by the community or the Prometheus project, are available for various use cases, including:

- Databases
- Message queues
- Cloud services
- Hardware, etc.

For application-level metrics, Prometheus also supports several client libraries, including:

- Python
- Node.js
- Go
- Java
- Microsoft .NET

## Counters and Gauges 


## Resources 

- 