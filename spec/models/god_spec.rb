require 'spec_helper'

describe God do
  [
    'sevides', 'quiris', 'liris', 'ganis', 'blator', 'crisagom', 'crezir',
    'maira_mon', 'maira_vet', 'maira_nil', 'selimon', 'lena', 'plandis',
    'cambu', 'cruine', 'palier', 'parom'
  ].each do |god|
    describe ".#{god}" do
      it "returns the #{god} god" do
        God.send(god).should eq(God.find_by(slug: god))
      end
    end
  end
end
