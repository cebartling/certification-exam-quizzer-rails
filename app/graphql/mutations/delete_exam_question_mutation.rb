module Mutations
  class DeleteExamQuestionMutation < BaseMutation
    null true
    argument :id, ID, 'The exam question identifier.', required: true
    field :exam_question, Types::ExamQuestionType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      context = DeleteExamQuestion.call(
        id: id,
      )
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
