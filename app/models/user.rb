class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_commit :enrich

  def enrich
    # serialized_user = self.to_global_id.to_s
    # UserJob.perform_later(serialized_user)
    FakeJob.perform_later

    UserJob.perform_later(self)
  end
end
