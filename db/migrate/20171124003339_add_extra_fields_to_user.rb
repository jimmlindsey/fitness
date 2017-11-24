class AddExtraFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :description, :text
    add_column :users, :certification, :string
    add_column :users, :certification_number, :string
    add_column :users, :insurance, :string
  end
end
