class AddKanaFirstNameToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :kana_first_name, :string
  end
end
