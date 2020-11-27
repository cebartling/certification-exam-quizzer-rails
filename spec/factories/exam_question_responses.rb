# == Schema Information
#
# Table name: exam_question_responses
#
#  id               :uuid             not null, primary key
#  correct          :boolean          default(FALSE), not null
#  explanation_text :text
#  response_text    :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  exam_question_id :uuid             not null
#
# Foreign Keys
#
#  fk_rails_...  (exam_question_id => exam_questions.id)
#
FactoryBot.define do
  factory :exam_question_response do
    
  end
end
