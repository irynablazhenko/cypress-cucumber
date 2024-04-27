# Login.feature містить в собі 3 тести:

# Логін з коректними ємейлом та паролем - перевірити, що відбувся логін
# Логін з пустими полями - перевірити помилку
# Логін з неіснуючими логіном та паролем - перевірити помилку
# Додаткове завдання, необов'язкове - імплементувати DDT у Cucumber з використанням Data Tables для Login.feature

Feature: Login Feature

    Feature Description : Login tests

    Scenario: Success Login
        Given I am on the Login Page
        When I enter "iryna.blazhenko@gmail.com" Email
        When I enter "j5d48Y.NfPcrdY" Password
        When I click Login button
        Then I expect to be on Garage Page

    Scenario: Login with empty Email and Password
        Given I am on the Login Page
        When I enter "" Email
        When I enter "" Password
        Then I expect to see disabled login button

    Scenario: Login with invalid Email and Password
        Given I am on the Login Page
        When I enter "sdbs@gmail.com" Email
        When I enter "bsfb" Password
        When I click Login button
        Then I expect to see an error message with text "Wrong email or password"

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

