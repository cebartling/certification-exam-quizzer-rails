# == Schema Information
#
# Table name: exam_topics
#
#  id                    :uuid             not null, primary key
#  name                  :string(255)      not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  certification_exam_id :uuid             not null
#
# Indexes
#
#  exam_topics_name_unique_idx  (name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (certification_exam_id => certification_exams.id)
#
class ExamTopic < ApplicationRecord
  belongs_to :certification_exam
  has_and_belongs_to_many :exam_questions
end
