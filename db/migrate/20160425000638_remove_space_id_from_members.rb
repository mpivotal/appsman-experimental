class RemoveSpaceIdFromMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :members, :space_id
  end
end
