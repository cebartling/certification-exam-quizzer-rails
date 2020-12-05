class DeleteExamQuestion
  include Interactor

  def call
    exam_question = ExamQuestion.find(context.id)
    context.exam_question = exam_question

    unless exam_question.delete
      context.fail!(message: "exam_question.delete.failure")
    end
  end
end
