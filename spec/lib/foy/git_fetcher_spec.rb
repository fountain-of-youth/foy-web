require 'spec_helper'
require 'foy/git_fetcher'

describe Foy::GitFetcher do
  describe "#get" do
    let(:url) { "git://github.com/fountain-of-youth/foy-web.git" }
    let(:fetcher) { Foy::GitFetcher.new(url) }

    it "uses a tmp dir" do
      Dir.should_receive(:mktmpdir).and_call_original
      fetcher.get("Gemfile.lock")
    end

  end
end
