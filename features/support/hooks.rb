# frozen_string_literal: true

Before do
  @test_site = TestSite.new
end

Before('@slow-test') do
  @previous_wait_time = Capybara.default_max_wait_time
  Capybara.default_max_wait_time = 0.1
end

After('@slow-test') do
  Capybara.default_max_wait_time = @previous_wait_time
end
