class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :name, :string, default: "", null: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
