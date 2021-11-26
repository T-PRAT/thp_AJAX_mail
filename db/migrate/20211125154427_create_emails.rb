class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :object
      t.text :content
      t.string :author
      t.string :receiver

      t.timestamps
    end
  end
end
