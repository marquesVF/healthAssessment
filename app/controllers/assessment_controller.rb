class AssessmentController < ApplicationController
  def new
    @email = params[:session][:email]
    @assessment_name = params[:session][:name]
    @user = User.find_by(email: @email)
    if @user and @assessment_name
      @assessment = Assessment.new(user_id: @user.id)
      @assessment.name = @assessment_name
      if @assessment.save
        flash.now[:success] = 'Assessment assigned sucefully!'
        render 'admin/menu'
      end
    else
      flash.now[:danger] = 'Invalid email or assessment name. Try again!'
      @users = User.admin(false)
      render 'admin/assessments'
    end
  end

  def edit
  end

  def apply
    current_user
    calculateCompleteness
    # @assessment = Assessment.find_by(user_id: @current_user.id)
    @assessment = Assessment.byUser(@current_user.id)
  end

  def application
    @apply = true
    @assessment = Assessment.find_by(id: params[:id])
    @@currentAssessment = params[:id]
  end

  def download
    send_data Assessment.to_csv(params[:id])
  end

  def calculateCompleteness
    total = Assessment.column_names.length
    complete = Assessment.column_names.compact.length

    @completeness = complete.to_f*100/total.to_f
  end

  def save
    @assessment = Assessment.find_by(id: @@currentAssessment)
    @assessment.community_square_miles = params[:session][:community_square_miles]
    @assessment.urban_rural = params[:session][:urban_rural]
    @assessment.town_village = params[:session][:town_village]
    @assessment.distance_other_community = params[:session][:distance_other_community]
    @assessment.distance_capital = params[:session][:distance_capital]
    @assessment.local_news_source = params[:session][:local_news_source]
    @assessment.other_regional_position_features = params[:session][:other_regional_position_features]
    @assessment.natural_features = params[:session][:natural_features]
    @assessment.climate_conditions = params[:session][:climate_conditions]
    @assessment.human_made_features = params[:session][:human_made_features]
    @assessment.other_geophysical_features = params[:session][:other_geophysical_features]
    @assessment.land_use_designated = params[:session][:land_use_designated]
    @assessment.land_use_patterns = params[:session][:land_use_patterns]
    @assessment.other_land_use_features = params[:session][:other_land_use_features]
    @assessment.housing = params[:session][:housing]
    @assessment.transportation = params[:session][:transportation]
    @assessment.communication = params[:session][:communication]
    @assessment.mental_maps = params[:session][:mental_maps]
    @assessment.young_population = params[:session][:young_population]
    @assessment.adult_population = params[:session][:adult_population]
    @assessment.elder_population = params[:session][:elder_population]
    @assessment.male_population = params[:session][:male_population]
    @assessment.female_population = params[:session][:female_population]
    @assessment.ethnical_racial_groups = params[:session][:ethnical_racial_groups]
    @assessment.income_average = params[:session][:income_average]
    @assessment.education_levels = params[:session][:education_levels]
    @assessment.residential_household_characteristics = params[:session][:residential_household_characteristics]
    @assessment.economic_institutions = params[:session][:economic_institutions]
    @assessment.government_institutions = params[:session][:government_institutions]
    @assessment.domestic_institutions = params[:session][:domestic_institutions]
    @assessment.religion_institutions = params[:session][:religion_institutions]
    @assessment.recreation_institutions = params[:session][:recreation_institutions]
    @assessment.voluntary_institutions = params[:session][:voluntary_institutions]
    @assessment.outdoor_air_quality = params[:session][:outdoor_air_quality]
    @assessment.surface_ground_water_quality = params[:session][:surface_ground_water_quality]
    @assessment.food_contamination = params[:session][:food_contamination]
    @assessment.noise_pollution = params[:session][:noise_pollution]
    @assessment.disease_vectors = params[:session][:disease_vectors]
    @assessment.disaster_preparedness = params[:session][:disaster_preparedness]
    @assessment.crime = params[:session][:crime]
    @assessment.accidents = params[:session][:accidents]
    @assessment.homes_communities = params[:session][:homes_communities]
    @assessment.community_buildings = params[:session][:community_buildings]
    @assessment.energy_management = params[:session][:energy_management]
    @assessment.global_health = params[:session][:global_health]
    @assessment.solid_waste_management = params[:session][:solid_waste_management]
    @assessment.sewage_management = params[:session][:sewage_management]
    @assessment.radioactive_waste_management = params[:session][:radioactive_waste_management]
    @assessment.chemical_pesticides_management = params[:session][:chemical_pesticides_management]
    @assessment.infectious_diseases = params[:session][:infectious_diseases]
    @assessment.chronic_diseases = params[:session][:chronic_diseases]
    @assessment.chronic_disability = params[:session][:chronic_disability]
    @assessment.behavioral_mental_health = params[:session][:behavioral_mental_health]
    @assessment.maternal_infant_health = params[:session][:maternal_infant_health]
    @assessment.childhood_health = params[:session][:childhood_health]
    @assessment.adolescent_health = params[:session][:adolescent_health]
    @assessment.older_adult_health = params[:session][:older_adult_health]
    @assessment.lgbt_health = params[:session][:lgbt_health]
    @assessment.occupational_safety_health = params[:session][:occupational_safety_health]
    @assessment.population_health_behaviors = params[:session][:population_health_behaviors]
    @assessment.public_health_financing = params[:session][:public_health_financing]
    @assessment.indigenous_alternative_health_systems = params[:session][:indigenous_alternative_health_systems]
    @assessment.nursing = params[:session][:nursing]
    @assessment.medical = params[:session][:medical]
    @assessment.dental = params[:session][:dental]
    @assessment.social_work = params[:session][:social_work]
    @assessment.mental_health = params[:session][:mental_health]
    @assessment.nutrition = params[:session][:nutrition]
    @assessment.optical_audiology_health = params[:session][:optical_audiology_health]
    @assessment.therapies = params[:session][:therapies]
    @assessment.health_departments = params[:session][:health_departments]
    @assessment.personal_healthcare_hospitals = params[:session][:personal_healthcare_hospitals]
    @assessment.personal_healthcare_assisted_living = params[:session][:personal_healthcare_assisted_living]
    @assessment.personal_healthcare_home_health = params[:session][:personal_healthcare_home_health]
    @assessment.personal_healthcare_ambulatory = params[:session][:personal_healthcare_ambulatory]
    @assessment.health_planning_agencies = params[:session][:health_planning_agencies]
    @assessment.third_payers_commercial = params[:session][:third_payers_commercial]
    @assessment.third_payers_government = params[:session][:third_payers_government]
    @assessment.self_pay_financing = params[:session][:self_pay_financing]
    @assessment.charity_financing = params[:session][:charity_financing]
    @assessment.public_assistance_financing = params[:session][:public_assistance_financing]
    @assessment.customs_health_values = params[:session][:customs_health_values]
    @assessment.traditions_health_values = params[:session][:traditions_health_values]
    @assessment.values_health_values = params[:session][:values_health_values]

    @assessment.save
    redirect_to assessment_apply_path
  end

  def list
    @apply = false
  end

  def menu

  end
end
