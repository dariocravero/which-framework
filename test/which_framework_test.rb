require 'minitest/autorun'
require File.join(File.dirname(__FILE__), '..', 'which_framework.rb')

describe "framework recognition" do
  before do
    base = File.join(File.dirname(__FILE__), 'fixtures')
    @padrino_root = File.join(base, 'padrino')
    @rails_root = File.join(base, 'rails')
    @sinatra_root = File.join(base, 'sinatra')
  end

  it "should recognise Padrino" do
    assert_equal WhichFramework.is_padrino?(@padrino_root), true
  end

  it "should recognise Rails" do
    assert_equal WhichFramework.is_rails?(@rails_root), true
  end

  it "should recognise Sinatra" do
    assert_equal WhichFramework.is_sinatra?(@sinatra_root), true
  end

  it "should tell which framework exists on a given path" do
    assert_equal WhichFramework.which_is_it?(@padrino_root), :padrino
    refute_equal WhichFramework.which_is_it?(@padrino_root), :sinatra
  end
end
