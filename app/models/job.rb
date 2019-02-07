class Job < ApplicationRecord
  belongs_to :candidate

  default_scope { order('applied_at ASC') }
end
