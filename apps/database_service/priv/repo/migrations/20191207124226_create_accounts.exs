defmodule DatabaseService.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  alias DatabaseService.Enums.LanguageKey

  def change do
    LanguageKey.create_type()

    create table(:accounts) do
      add :username, :string, null: false
      add :password, :string, null: false, size: 128
      add :authority, :integer, default: 0, null: false
      add :language, LanguageKey.type(), default: "en", null: false

      timestamps()
    end

    create unique_index(:accounts, [:username])
  end
end