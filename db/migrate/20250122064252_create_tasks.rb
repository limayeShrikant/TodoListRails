class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :todo
      t.string :description
      t.boolean :complete
      t.belongs_to :user

      t.timestamps
    end
  end
end
