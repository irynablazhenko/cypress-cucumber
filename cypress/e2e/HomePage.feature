# HomePage.feature містить в собі 3 тести:

# 5-ть іконок соціалних мереж присутні
# Після нажаття Sign Up відкривається форма реєстрації
# Після нажаття Sign In відкривається форма логіну

Feature: HomePage Feature

    Feature Description : HomePage tests

    Scenario: 5 social icons exists
        Given I am on the Home Page
        Then I expect to see facebook icon
        Then I expect to see telegram icon
        Then I expect to see youtube icon
        Then I expect to see instagram icon
        Then I expect to see linkedin icon

    Scenario: Click on Sign Up opens a Registration form
        Given I am on the Home Page
        When I click on "Sign up" button
        Then I expect to see a "Registration" form

    Scenario: Click on Sign In opens a Login form
        Given I am on the Home Page
        When I click on "Sign In" button
        Then I expect to see a "Log in" form

# Scenario: Click on Sign Up opens a Registration form
#     Given I am on the Login Page
#     When I enter "username" username
#     When I enter "SuperSecretPassword!" password
#     When I click Login button
#     Then I expect to see error message with text " Your username is invalid!"

# Scenario: Click on Sign In opens a Login form
#     Given I am on the Login Page
#     When I enter "username" username
#     When I enter "password" password
#     When I click Login button
#     Then I expect to see error message with text " Your username is invalid!"
#         | The Devil in the White City          | Erik Larson |
#         | The Lion, the Witch and the Wardrobe | C.S. Lewis  |
#         | In the Garden of Beasts              | Erik Larson |

