# frozen_string_literal: true

describe SitePrism do
  describe 'VERSION' do
    subject { SitePrism::VERSION }

    it { is_expected.to be_truthy }
  end
end
