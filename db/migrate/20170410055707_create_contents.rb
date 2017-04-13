class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :heading
      t.string :welcome_text
      t.integer :contact_number
      t.string :owner_email
      t.string :site_name
      t.text :text_content_main

      t.timestamps
    end
  end
end
