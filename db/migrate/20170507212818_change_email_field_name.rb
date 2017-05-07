class ChangeEmailFieldName < ActiveRecord::Migration[5.1]
  def change
    rename_column(:comments, "post", "message")
  end
end
