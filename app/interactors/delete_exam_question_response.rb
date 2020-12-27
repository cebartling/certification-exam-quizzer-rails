class DeleteExamQuestionResponse
  include Interactor

  def call
    exam_question_response = ExamQuestionResponse.find(context.id)

    context.exam_question_response = exam_question_response

    unless exam_question_response.delete
      context.fail!(message: "exam_question_response.delete.failure")
    end
  end
end
