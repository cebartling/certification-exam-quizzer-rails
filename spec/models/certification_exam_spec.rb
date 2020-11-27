# == Schema Information
#
# Table name: certification_exams
#
#  id         :uuid             not null, primary key
#  exam_code  :string(50)       not null
#  name       :string(1024)     not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  certification_exams_name_unique_idx  (name) UNIQUE
#
require 'rails_helper'

RSpec.describe CertificationExam, type: :model do
  it { should have_many(:exam_topics) }
  it { should have_many(:exam_questions) }
end
