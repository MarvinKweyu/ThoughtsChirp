defmodule ThoughtsChirpWeb.PostLive.PostComponent do
  use ThoughtsChirpWeb, :live_component

  @impl true
  def handle_event("like", _, socket) do
    ThoughtsChirp.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end

  @impl true
  def handle_event("repost", _, socket) do
    ThoughtsChirp.Timeline.inc_repost(socket.assigns.post)
    {:noreply, socket}
  end
end
