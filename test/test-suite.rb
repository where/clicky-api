$LOAD_PATH << File.expand_path( File.dirname(__FILE__) + '/../lib' )
require 'test/unit'

class TestClickyAPI < Test::Unit::TestCase
  def setup
    require 'clicky-api'
    assert ClickyAPI.set_params!(:foo => 'bar', :baz => 'quux')
  end
  
  def test_get_params
    assert params = ClickyAPI.get_params
    assert params.instance_of?(Hash)
    assert params.include?('foo') ## ensure that param keys are stringified
  end
  
  def test_request
    assert response = ClickyAPI.stats
    assert response.has_key?('status')
  end
end