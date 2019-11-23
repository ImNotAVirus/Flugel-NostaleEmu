defmodule WorldServer.Packets.Entity.Views do
  @moduledoc """
  TODO: Documentation for WorldServer.Packets.Entity.Views
  """

  use ElvenGard.View

  alias WorldServer.Structures.Character

  @spec render(atom, term) :: String.t()
  def render(:stat, %Character{} = character) do
    %{
      id: _id
    } = character

    # TODO: Load it from CharacterManagement Service
    hp = 25000
    hp_max = 25000
    mp = 10000
    mp_max = 10000

    "stat #{hp} #{hp_max} #{mp} #{mp_max} 0 0"
  end
end