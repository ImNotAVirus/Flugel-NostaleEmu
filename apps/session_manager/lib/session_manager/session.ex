defmodule SessionManager.Session do
  @moduledoc false

  @keys [:id, :username, :password, :state]
  @enforce_keys @keys
  defstruct @keys

  @type t :: %__MODULE__{username: String.t(), password: String.t(), state: atom}

  @doc """
  Create a new structure
  """
  @spec new(non_neg_integer, String.t(), String.t(), atom) :: __MODULE__.t()
  def new(id, username, password, state \\ :logged)
  def new(id, username, password, state) when is_nil(state), do: new(id, username, password)

  def new(id, username, password, state) when not is_nil(username) do
    %__MODULE__{
      id: id,
      username: username,
      password: password,
      state: state
    }
  end
end