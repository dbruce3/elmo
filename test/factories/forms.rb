FactoryGirl.define do
  factory :form do
    ignore do
      question_types []
    end
    
    name 'some form'
    
    questionings do
      question_types.each_with_index.map do |qt, idx|
        FactoryGirl.build(:questioning, :question => FactoryGirl.build(:question, :code => "q#{idx}", :qtype_name => qt))
      end
    end
  end
end