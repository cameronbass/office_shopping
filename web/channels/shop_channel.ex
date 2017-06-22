defmodule ShopTime.ShopChannel do
  use ShopTime.Web, :channel
  alias ShopTime.Presence
  require IEx

  def join("shop:lobby", _, socket) do
    send self(), :after_join
    {:ok, socket}
  end

  def handle_info(:after_join, socket) do
    push(socket, "presence_state", Presence.list(socket))
    {:noreply, socket}
  end
end
