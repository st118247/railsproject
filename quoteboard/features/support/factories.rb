FactoryGirl.define do
  factory :admin2, class: User do
    email 'admin2@ait.asia'
    password 'secret123'
    banstatus 'Active'
    role {Role.find_or_create_by(name: 'Admin')}
  end

  factory :cat2, class: Studenthousinginfo do
    version 1
    category '2'
    roomsize 22
    rent 2000
    detail 'No Ac in Cat 2'
    status 'Approved'
  end

  factory :cat3, class: Studenthousinginfo do
    category '3'
    roomsize 33
    rent 3000
    detail 'No Ac in Cat 3'
  end

end

