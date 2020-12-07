require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Email", with: @client.email
    fill_in "Lead source", with: @client.lead_source
    fill_in "Lead status", with: @client.lead_status
    fill_in "Payment method", with: @client.payment_method
    fill_in "Phone number", with: @client.phone_number
    fill_in "Project address", with: @client.project_address
    fill_in "Type of project", with: @client.type_of_project
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Email", with: @client.email
    fill_in "Lead source", with: @client.lead_source
    fill_in "Lead status", with: @client.lead_status
    fill_in "Payment method", with: @client.payment_method
    fill_in "Phone number", with: @client.phone_number
    fill_in "Project address", with: @client.project_address
    fill_in "Type of project", with: @client.type_of_project
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
