# == Schema Information
#
# Table name: exam_questions
#
#  id                    :uuid             not null, primary key
#  difficulty            :integer          default(1), not null
#  question_text         :text             not null
#  single_answer         :boolean          default(TRUE), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  certification_exam_id :uuid             not null
#
# Foreign Keys
#
#  fk_rails_...  (certification_exam_id => certification_exams.id)
#
class ExamQuestion < ApplicationRecord
  belongs_to :certification_exam
  has_and_belongs_to_many :exam_topics
  has_many :exam_question_responses
end
