module Types
  class MutationType < Types::BaseObject
    # field :create_user, mutation: Mutations::CreateUser
    # field :delete_user, mutation: Mutations::DeleteUser
    # field :update_user, mutation: Mutations::UpdateUser

    # field :create_exam_topic, mutation: Mutations::CreateExamTopic
    # field :delete_exam_topic, mutation: Mutations::DeleteExamTopic
    # field :update_exam_topic, mutation: Mutations::UpdateExamTopic

    field :create_exam_question_response, mutation: Mutations::CreateExamQuestionResponseMutation
    field :delete_exam_question_response, mutation: Mutations::DeleteExamQuestionResponseMutation
    field :update_exam_question_response, mutation: Mutations::UpdateExamQuestionResponseMutation

    field :create_exam_question, mutation: Mutations::CreateExamQuestionMutation
    field :delete_exam_question, mutation: Mutations::DeleteExamQuestionMutation
    field :update_exam_question, mutation: Mutations::UpdateExamQuestionMutation

    # field :create_certification_exam, mutation: Mutations::CreateCertificationExam
    # field :delete_certification_exam, mutation: Mutations::DeleteCertificationExam
    # field :update_certification_exam, mutation: Mutations::UpdateCertificationExam
  end
end
