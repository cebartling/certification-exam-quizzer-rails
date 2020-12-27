module Mutations
  class CreateExamQuestionResponseMutation < BaseMutation
    null true
    argument :response_text, String, 'The question textual content.', required: true
    argument :explanation_text, String, 'Explanation for this response', required: false
    argument :correct, Boolean, 'Flags whether this response is correct', required: true
    argument :exam_question_id, ID, 'Exam question identifier for association.', required: true
    field :exam_question_response, Types::ExamQuestionResponseType, null: true
    field :errors, [String], null: false

    def resolve(response_text:, explanation_text:, correct:, exam_question_id:)
      context = CreateExamQuestionResponse.call(exam_question_id: exam_question_id,
                                                correct: correct,
                                                response_text: response_text,
                                                explanation_text: explanation_text)
      result = {
        exam_question_response: context.exam_question_response,
        errors: []
      }

      if context.failure?
        result.errors = context.exam_question_response.errors.full_messages
      end

      result
    end
  end
end
