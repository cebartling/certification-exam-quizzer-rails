class UpdateExamQuestionResponse
  include Interactor

  def call
    exam_question = ExamQuestion.find(context.exam_question_id)
    exam_question_response = ExamQuestionResponse.find(context.id)

    exam_question_response.exam_question = exam_question
    exam_question_response.correct = context.correct
    exam_question_response.response_text = context.response_text
    exam_question_response.explanation_text = context.explanation_text

    context.exam_question_response = exam_question_response

    unless exam_question_response.save
      context.fail!(message: "exam_question_response.update.failure")
    end
  end

end
