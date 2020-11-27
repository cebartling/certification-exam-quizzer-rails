module Types
  class QueryType < Types::BaseObject

    field :certification_exams, [Types::CertificationExamType],
          null: false, description: "Retrieve certification exams"

    def certification_exams
      CertificationExam.all
    end


    field :certification_exam, Types::CertificationExamType,
          null: true, description: "Retrieve a specific certification exam" do
      argument :id, ID, required: true
    end

    def certification_exam(id:)
      CertificationExam.find(id)
    end

    field :user, Types::UserType,
          null: true, description: "Retrieve a specific user by ID" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :user_by_username, Types::UserType,
          null: true, description: "Retrieve a specific user by username" do
      argument :username, String, required: true
    end

    def user_by_username(username:)
      User.find_by(username: username)
    end

  end
end
