import Config

config  :opentelemetry,
        :processors,
        ot_batch_processor: %{
          exporter:
          {:openelemetry_ziplin,
            %{address: 'http://localhost:9411/api/v2/spans',
              local_endpoint: %{service_name: "zipkin_random"}
            }
          }
        }
