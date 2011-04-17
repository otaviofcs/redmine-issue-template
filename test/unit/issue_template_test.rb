require File.dirname(__FILE__) + '/../test_helper'

class IssueTemplateTest < ActiveSupport::TestCase
    fixtures :issue_templates

    def test_fixture
        assert_equal 2, IssueTemplate.count
        assert_equal 1, IssueTemplate.find(:all, :conditions => "subject <> ''").count
    end

    def test_creation_with_all_necessary_conditions
        assert_difference 'IssueTemplate.count' do
            IssueTemplate.create( :title => 'Test', :description => 'Test description')
        end
    end

    def test_creation_with_all_possible_conditions
        assert_difference 'IssueTemplate.count' do
            IssueTemplate.create( :title => 'Test', :description => 'Test description', :subject => 'test subject')
        end
    end

    def test_not_creation_with_missing_parts
        assert_no_difference 'IssueTemplate.count' do
            IssueTemplate.create( :title => 'Test', :subject => 'Test description' )
            IssueTemplate.create( :description => 'Test', :subject => 'Test description' )
        end
    end

end
