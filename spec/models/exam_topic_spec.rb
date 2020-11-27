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
require 'rails_helper'

RSpec.describe ExamTopic, type: :model do
  it { should belong_to(:certification_exam) }
  it { should have_and_belong_to_many(:exam_questions) }
end
