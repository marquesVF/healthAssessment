class AddNameToAssessments < ActiveRecord::Migration
  def change
    add_column :assessments, :name, :string
  end
end
