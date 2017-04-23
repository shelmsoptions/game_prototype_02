class RemoveColumnClassTypeIdId < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :class_type_id_id
  end
end
