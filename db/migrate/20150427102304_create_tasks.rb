class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete, default: false, null: false
      t.belongs_to :project

      t.timestamps null: false
    end
    add_index :tasks, :project_id
  end
end
