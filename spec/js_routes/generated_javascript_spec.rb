require 'spec_helper'
require "fileutils"


describe JsRoutes do
  describe "generated js" do
    subject do
      JsRoutes.generate(
        include: /book|inboxes|inbox_message/,
      )
    end

    it "should include a comment in the header" do
      app_class = "App"

      is_expected.to include("File generated by js-routes #{JsRoutes::VERSION}")
      is_expected.to include("Based on Rails #{ActionPack.version} routes of #{app_class}")
    end

    it "should call route function for each route" do
      is_expected.to include("inboxes_path: Utils.route(")
    end
    it "should have correct function without arguments signature" do
      is_expected.to include("inboxes_path: Utils.route([[\"format\"]]")
    end
    it "should have correct function with arguments signature" do
      is_expected.to include('inbox_message_path: Utils.route([["inbox_id",true],["id",true],["format"]]')
    end
    it "should have correct function signature with unordered hash" do
      is_expected.to include('inbox_message_attachment_path: Utils.route([["inbox_id",true],["message_id",true],["id",true],["format"]]')
    end

    it "should have correct function comment with options argument" do
      is_expected.to include("// function(options)\n  inboxes_path: Utils.route")
    end
    it "should have correct function comment with arguments" do
      is_expected.to include("// function(inbox_id, message_id, options)\n  new_inbox_message_attachment_path: Utils.route")
    end

    it "routes should be sorted in alphabetical order" do
      expect(subject.index("book_path")).to be <= subject.index("inboxes_path")
    end
  end

  describe ".generate!" do

    let(:name) { Rails.root.join('app', 'assets', 'javascripts', 'routes.js') }

    before(:each) do
      FileUtils.rm_f(name)
      JsRoutes.generate!({:file => name})
    end

    after(:each) do
      FileUtils.rm_f(name)
    end

    after(:all) do
      FileUtils.rm_f("#{File.dirname(__FILE__)}/../routes.js") # let(:name) is not available here
    end

    it "should not generate file before initialization" do
      expect(File.exists?(name)).to be_falsey
    end

  end

  describe "compiled javascript asset" do
    subject { ERB.new(File.read("app/assets/javascripts/js-routes.js.erb")).result(binding) }
    it "should have js routes code" do
      is_expected.to include("inbox_message_path: Utils.route([[\"inbox_id\",true],[\"id\",true],[\"format\"]]")
    end
  end
end
