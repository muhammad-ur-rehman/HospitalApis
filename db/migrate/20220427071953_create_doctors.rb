class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.references :hospital, null: false, foreign_key: true
      t.string :name
      t.string :degree
      t.string :speciality
      t.bigint :experiance

      t.timestamps
    end
  end
end
