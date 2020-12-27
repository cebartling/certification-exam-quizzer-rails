module Mutations
  class DeleteExamQuestionResponseMutation < BaseMutation
    null true
    argument :id, ID, 'The exam question response identifier.', required: true
    field :exam_question_response, Types::ExamQuestionResponseType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      context = DeleteExamQuestionResponse.call(id: id)

      result = {
        exam_question: context.exam_question,
        errors: []
      }

      if context.failure?
        result.errors = context.exam_question.errors.full_messages
      end

      result
    end

  end
end
