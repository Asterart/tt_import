require 'csv'

module NotesHelper

  def import_notes(file)
    CSV.foreach(file.path, headers: true) do |row|
      candidate = Candidate.where(email: row[0]).first
      candidate.notes.build(content: row[1])
      candidate.save
    end
  end

end
