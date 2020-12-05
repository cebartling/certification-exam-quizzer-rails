class UpdateExamQuestion
  include Interactor

  def call
    certification_exam = CertificationExam.find(context.certification_exam_id)
    exam_question = ExamQuestion.find(context.id)

    exam_question.certification_exam = certification_exam
    exam_question.difficulty = context.difficulty.to_i
    exam_question.question_text = context.question_text
    exam_question.single_answer = context.single_answer

    context.exam_question = exam_question

    unless exam_question.save
      context.fail!(message: "exam_question.update.failure")
    end
  end
end
