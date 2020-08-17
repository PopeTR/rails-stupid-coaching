require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "#p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "ask", with: "Hello"
    click_on "SUBMIT"

    assert_text "I don't care, get dressed and go to work!"
  end

    test "saying Hello? yields a silly question response from the coach" do
      visit ask_url
      fill_in "ask", with: "?"
      click_on "SUBMIT"

      assert_text "Silly question, get dressed and go to work!"
    end

    test "saying 'going to work now' yields a great response from the coach" do
      visit ask_url
      fill_in "ask", with: "I am going to work"
      click_on "SUBMIT"

      assert_text "Great!"
       take_screenshot
    end

    test "saying nothing yields a grumpy response from the coach" do
      visit ask_url
      fill_in "ask", with: ""
      click_on "SUBMIT"

      assert_text "I don't care, get dressed and go to work!"
    end
end