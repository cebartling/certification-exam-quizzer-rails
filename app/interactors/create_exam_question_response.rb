class CreateExamQuestionResponse
  include Interactor

  def call
    exam_question = ExamQuestion.find(context.exam_question_id)
    exam_question_response = ExamQuestionResponse.new do |eq|
      eq.exam_question = exam_question
      eq.correct = context.correct
      eq.response_text = context.response_text
      eq.explanation_text = context.explanation_text
    end

    context.exam_question_response = exam_question_response

    unless exam_question_response.save
      context.fail!(message: "exam_question_response.create.failure")
    end
  end

end
