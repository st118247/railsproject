FactoryGirl.define do
  factory :officer_role_admin, class: OfficerRole do
    role 'Admin'
    id 2
  end

  factory :admin, class: User do
    email 'admin1@ait.asia'
    password 'password'
    password_confirmation 'password'
    officer_role_id 2
    status 'active'
  end

  factory :officer_no_role, class: OfficerRole do
    role 'NoRole'
  end

  factory :staff, class: User do
    email 'staff@ait.asia'
    password 'password'
    password_confirmation 'password'
    officer_role_id '2'
  end

  factory :cat2, class: Housingdetail do
    category '2'
    size '22'
    rent '2000'
    details 'No Ac in Cat 2'
  end

end