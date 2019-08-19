class AddKanaFamilyNameToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :kana_family_name, :string
  end
end
