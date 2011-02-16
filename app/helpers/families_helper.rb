module FamiliesHelper

  def humanize_income_brackets
    humanize_collection Family::INCOME_BRACKETS
  end

  def humanize_mothers_age_groups
    humanize_collection Family::MOTHERS_AGE_GROUPS
  end

  def humanize_family_types
    humanize_collection Family::FAMILY_TYPES
  end

  def humanize_martial_statuses
    humanize_collection Family::MARTIAL_STATUSES
  end

  private
  def humanize_collection(collection)
    humanized_collection = []
    collection.each do |item|
      humanized_collection << [item,I18n.t(item)]
    end
    return humanized_collection
  end
end
