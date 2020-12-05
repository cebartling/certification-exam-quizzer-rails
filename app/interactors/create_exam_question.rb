class CreateExamQuestion
  include Interactor

  def call
    certification_exam = CertificationExam.find(context.certification_exam_id)
    exam_question = ExamQuestion.new do |eq|
      eq.certification_exam = certification_exam
      eq.difficulty = context.difficulty.to_i
      eq.question_text = context.question_text
      eq.single_answer = context.single_answer
    end
    context.exam_question = exam_question

    unless exam_question.save
      context.fail!(message: "exam_question.create.failure")
    end
  end

end
