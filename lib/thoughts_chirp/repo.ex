defmodule ThoughtsChirp.Repo do
  use Ecto.Repo,
    otp_app: :thoughts_chirp,
    adapter: Ecto.Adapters.Postgres
end
