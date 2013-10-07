class Quiz < ActiveRecord::Base

  def data_json
    @_data ||= JSON.parse(questions)
  end
end

