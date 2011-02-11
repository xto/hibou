module FamiliesHelper

  def text_income_brackets
    income_brackets = []
    Family::INCOME_BRACKETS.each do |bracket|
      income_brackets << [bracket,I18n.t(bracket)]
    end
    return income_brackets
  end
end
