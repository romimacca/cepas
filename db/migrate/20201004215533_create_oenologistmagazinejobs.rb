class CreateOenologistmagazinejobs < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologistmagazinejobs do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true
      t.references :job_title, foreign_key: true

      t.timestamps
    end
  end
end
