class SavedJob < ApplicationRecord
  belongs_to :job
  belongs_to :job_seeker
end
