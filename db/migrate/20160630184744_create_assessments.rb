class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.float :community_square_miles
      t.string :urban_rural
      t.string :town_village
      t.float :distance_other_community
      t.float :distance_capital
      t.text :local_news_source
      t.text :other_regional_position_features
      t.text :climate_conditions
      t.text :human_made_features
      t.text :other_geophysical_features
      t.text :land_use_designated
      t.text :land_use_patterns
      t.text :other_land_use_features
      t.text :housing
      t.text :transportation
      t.text :communication
      t.text :mental_maps
      t.integer :young_population
      t.integer :adult_population
      t.integer :elder_population
      t.integer :male_population
      t.integer :female_population
      t.text :ethnical_racial_groups
      t.text :occupation
      t.float :income_average
      t.text :education_levels
      t.text :residential_household_characteristics
      t.text :economic_institutions
      t.text :government_institutions
      t.text :domestic_institutions
      t.text :religion_institutions
      t.text :recreation_institutions
      t.text :voluntary_institutions
      t.text :outdoor_air_quality
      t.text :surface_ground_water_quality
      t.text :food_contamination
      t.text :solid_waste_management
      t.text :sewage_management
      t.text :radioactive_waste_management
      t.text :radioactive_waste_management
      t.text :chemical_pesticides_management
      t.text :noise_pollution
      t.text :disease_vectors
      t.text :disaster_preparedness
      t.text :crime
      t.text :accidents
      t.text :homes_communities
      t.text :community_buildings
      t.text :energy_management
      t.text :global_health
      t.text :infectious_diseases
      t.text :chronic_diseases
      t.text :chronic_disability
      t.text :behavioral_mental_health
      t.text :maternal_infant_health
      t.text :childhood_health
      t.text :adolescent_health
      t.text :older_adult_health
      t.text :lgbt_health
      t.text :occupational_safety_health
      t.text :population_health_behaviors
      t.text :nursing
      t.text :medical
      t.text :dental
      t.text :social_work
      t.text :mental_health
      t.text :nutrition
      t.text :optical_audiology_health
      t.text :therapies
      t.text :health_departments
      t.text :personal_healthcare_hospitals
      t.text :personal_healthcare_assisted_living
      t.text :personal_healthcare_home_health
      t.text :personal_healthcare_ambulatory
      t.text :health_planning_agencies
      t.text :third_payers_commercial
      t.text :third_payers_government
      t.text :self_pay_financing
      t.text :charity_financing
      t.text :public_assistance_financing
      t.text :customs_health_values
      t.text :traditions_health_values
      t.text :values_health_values
      t.text :indigenous_alternative_health_systems
      t.references :user, foreign_key: true
      t.boolean :finished

      t.timestamps null: false
    end
    add_index :assessments, [:user_id, :created_at]
  end
end
