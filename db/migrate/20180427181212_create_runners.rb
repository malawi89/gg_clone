class CreateRunners < ActiveRecord::Migration[5.1]
  def change
    create_table :runners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :status
      t.boolean :group_run
      t.boolean :mission
      t.boolean :coach_run
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
