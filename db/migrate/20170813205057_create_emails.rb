# frozen_string_literal: true

class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :name,  null: false
      t.string :email, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
