require 'csv'

module CandidatesHelper

  def import_candidates(file)
    CSV.foreach(file.path, headers: true) do |row|
      if candidate = Candidate.where(email: row[1]).first
        candidate.jobs.build(title: row[3], applied_at: row[4])
        candidate.save
      else
        candidate = Candidate.new(name: row[0], email: row[1], phone: row[2])
        candidate.jobs.build(title: row[3], applied_at: row[4])
        candidate.save
      end
    end
  end

end
