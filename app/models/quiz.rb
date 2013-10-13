class Quiz < ActiveRecord::Base

  # :: [{ q: String, a: [String] }]
  def data_json
    @_data ||= JSON.parse(questions)
  end
end
