class CreateClientMails < ActiveRecord::Migration[5.0]
  def change
    create_table :client_mails do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
