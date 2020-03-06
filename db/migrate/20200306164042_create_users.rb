class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :slack_workspace_id
      t.string :slack_channel_id
      t.string :slack_user_id
      t.string :slack_user_name
      t.string :github_user_name

      t.timestamps
    end
  end
end
