class AddingCollumnsAssessment < ActiveRecord::Migration
  def change
    add_column :assessments, :natural_features, :text
    add_column :assessments, :public_health_financing, :text
  end
end
