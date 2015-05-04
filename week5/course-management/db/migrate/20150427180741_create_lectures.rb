class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
    	t.string :name
    end
  end
end
