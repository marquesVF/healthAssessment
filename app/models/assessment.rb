require 'csv'

class Assessment < ActiveRecord::Base
  belongs_to :user

  scope :byUser , -> (userid) {where user_id: userid}

  def self.to_csv(assessment_id)
    CSV.generate do |csv|
      csv << Assessment.attribute_names
      # all.each do |assessment|
      assessment = Assessment.find_by(assessment_id)
      csv << assessment.attributes.values_at(*column_names)
      # end
    end
  end
end
