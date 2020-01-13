module ApplicationHelper
  def login
    Capybara.server_host = "localhost"
    Capybara.default_driver = :selenium

    visit root_path
    click_link 'OAuth2'
    using_wait_time 10 do
      unless has_css?("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]")
        find("input[id$='username']").fill_in with: ENV['HUBSPOT_EMAIL']
        find("input[id$='password']").fill_in with: ENV['HUBSPOT_PASSWORD']
        find("button[id$='loginBtn']").click
      end

      find("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]").first('span').click
    end
  end

  def remove_test_contact(id)
    Services::Hubspot::Contacts::Destroy.new(id).call
  end
end