module Mutations
  class UpdateExamQuestionMutation < BaseMutation
    null true
    argument :id, ID, 'The exam question identifier.', required: true
    argument :question_text, String, 'The question textual content.', required: true
    argument :single_answer, Boolean, 'Is this question have a single answer?', required: true
    argument :difficulty, Integer, 'Degree of question difficulty.', required: true
    argument :certification_exam_id, ID, 'Certification exam identifier for association.', required: true
    field :exam_question, Types::ExamQuestionType, null: true
    field :errors, [String], null: false

    def resolve(id:, question_text:, single_answer:, difficulty:, certification_exam_id:)
      context = UpdateExamQuestion.call(
        id: id,
        certification_exam_id: certification_exam_id,
        difficulty: difficulty,
        question_text: question_text,
        single_answer: single_answer
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
