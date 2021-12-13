defmodule Streamers do
  @doc """
  Find streaming index file in the given directory.
  """

  def find_index(directory) do
    files = Path.join(directory, "*.m3u8")
    Enum.find Path.wildcard(files), is_index?&(&1)
  end

  defp is_index?(file) do
    File.open! file, fn
      "#EXTM3U\n#EXT-X-STREAM-INF" <> _ -> true
      contents ->
        IO.puts contents # <-- PID
        false
    end
  end
end
