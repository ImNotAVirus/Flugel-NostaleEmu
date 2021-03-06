defmodule WorldServer.Packets.UserInterface.Actions do
  @moduledoc """
  TODO: Documentation for WorldServer.Packets.UserInterface.Actions
  """

  alias ElvenGard.Structures.Client
  alias WorldServer.Structures.Character
  alias WorldServer.Packets.Entity.Views, as: EntityViews
  alias WorldServer.Packets.UserInterface.Views, as: UserInterfaceViews

  @emoji_offset 4099

  @spec show_emoji(Client.t(), String.t(), map) :: {:cont, Client.t()}
  def show_emoji(client, _, params) do
    %{
      entity_id: entity_id,
      value: value
    } = params

    # TODO: Get target from EntityService
    data = %{
      target: %Character{id: entity_id},
      value: @emoji_offset + value
    }

    if value >= 973 and value <= 999 do
      # TODO: Broadcast to all players on the same map (check option "emoticons_blocked")
      Client.send(client, EntityViews.render(:eff, data))
    else
      data = %{message: "UNAUTHORIZED_EMOTICON"}
      Client.send(client, UserInterfaceViews.render(:info, data))
    end

    {:cont, client}
  end

  @spec show_scene(Client.t(), String.t(), map) :: {:cont, Client.t()}
  def show_scene(client, _, params) do
    Client.send(client, UserInterfaceViews.render(:scene, params))
    {:cont, client}
  end
end
