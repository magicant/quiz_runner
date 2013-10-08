
begin
  title = 'BEST ONES'
  qs = [
    {
      q: 'Which is the oldest language ?',
      a: %w(Ada Pascal Lisp BASIC FORTRAN C)
    }, {
      q: 'Which is the largest country ?',
      a: %w(Brazil Australia India China Russia Canada)
    }, {
      q: 'Which is the hardest gem ?',
      a: %w(Ruby Pearl Emerald Sapphire Diamond Amber)
    }
  ]
  q = Quiz.where(title: title).first_or_create!
  q.questions = qs.to_json
  q.save!
end


