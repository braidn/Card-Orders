# Read about fixtures at http://api.rubyonrails.org/classes/Fixtures.html

FactoryGirl.define do
  factory :binderySpec do
    cardsperunit 1
    comment 'MyText'
    numberofpersons 1
    quantityperhour 1
    unitmaterialcost 1
    jobnumber 'MyString'
    newboxrequired 'MyString'
    packageamoritizequantity '1'
    packagecomment 'MyText'
    packageinnerboxid 'MyString'
    packageouterboxid 'MyString'
  end
end
