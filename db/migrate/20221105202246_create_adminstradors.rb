class CreateAdminstradors < ActiveRecord::Migration[7.0]
  def change
    create_table :adminstradors do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
