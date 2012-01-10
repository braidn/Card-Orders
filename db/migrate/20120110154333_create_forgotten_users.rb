class CreateForgottenUsers < ActiveRecord::Migration
  def change
    create_table :forgotten_users do |t|
      t.string :username
      t.string :hash

      t.timestamps
    end
  end
end
