
class EndUserSegmentField < UserSegment::FieldHandler

  def self.user_segment_fields_handler_info
    {
      :name => 'End User Segment Fields',
      :domain_model_class => EndUser,
      :end_user_field => :id
    }
  end

  register_field :email, UserSegment::CoreType::StringType, :name => 'User: Email'
  register_field :gender, UserSegment::CoreType::StringType, :name => 'User: Gender'
  register_field :created, UserSegment::CoreType::DateTimeType, :field => :created_at, :name => 'User: Created'
  register_field :registered, UserSegment::CoreType::BooleanType, :name => 'User: Registered'
  register_field :activated, UserSegment::CoreType::BooleanType, :name => 'User: Activated'
  register_field :user_level, UserSegment::CoreType::NumberType, :name => 'User: User Level'

end
