defmodule ZipkinRandom do
  @moduledoc """
  Documentation for `ZipkinRandom`.
  """

  require OpenTelemetry.Tracer

  @doc """
  Hello world.

  ## Examples

      iex> ZipkinRandom.hello()
      :world

  """
  def hello do
    # Here we are starting out new span
    OpenTelemetry.Tracer.start_span("span_name_1")

    # Mimic that some work is happening
    Process.sleep(100)
    # finish the span just before returning tthe response
    OpenTelemetry.Tracer.end_span()

    :world
  end
end
