class AddPhotoToRunners < ActiveRecord::Migration[5.1]
  def change
    add_column :runners, :photo, :string
  end
end
