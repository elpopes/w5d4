# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :enrollment_id,
        class_name: :Enrollment

    # has_many :enrolled_courses,
    #     primary_key: :id,
    #     foreign_key: :enrolled_course_id

    has_many :enrolled_courses,
		through: :enrollements,
		source: :chirp
end

has_many :liked_chirps,
through: :likes,                 # refers to has_many: likes
source: :chirp