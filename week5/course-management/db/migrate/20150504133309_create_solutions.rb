class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
    	t.string :name
    	t.text :description
    	t.belongs_to :task, index: true
    	t.timestamps
    end
  end
end
