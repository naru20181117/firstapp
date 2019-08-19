class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    # この行を編集する
    add_column :users, :name, :string, null: false, default: ""
  end
end
