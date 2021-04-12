class AddStudiostoActors < ActiveRecord::Migration[5.2]
  def change
    add_reference :actors, :studio, foreign_key: true
  end
end
