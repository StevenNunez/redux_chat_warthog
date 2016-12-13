defmodule ReduxChatWarthog.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :content, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :channel_id, references(:channels, on_delete: :nothing)

      timestamps()
    end
    create index(:messages, [:user_id])
    create index(:messages, [:channel_id])

  end
end
