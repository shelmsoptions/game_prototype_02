class AddColumnToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :class_type, foreign_key: true
  end
end
