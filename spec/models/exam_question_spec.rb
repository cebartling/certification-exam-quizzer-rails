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
require 'rails_helper'

RSpec.describe ExamQuestion, type: :model do
  it { should belong_to(:certification_exam) }
  it { should have_and_belong_to_many(:exam_topics) }
end
