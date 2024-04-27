/// <reference types="cypress" />
import HomePage from "../../../e2e/page-objects/HomePage";
import LoginPage from "../../../e2e/page-objects/LoginPage";
import { Given, When, Then, And } from "@badeball/cypress-cucumber-preprocessor";

Given('I am on the Login Page', () => {
    LoginPage.open();
    LoginPage.signInBtn.click();
})

When('I enter {string} Email', (email) => {
    if (email != "") {
        LoginPage.emailField.type(email);
    }
})

When('I enter {string} Password', (password) => {
    if (password != "") {
        LoginPage.passwordField.type(password);
    }
})

When('I click Login button', () => {
    LoginPage.loginButton.click();
})

Then('I expect to be on Garage Page', () => {
    cy.url().should('eq', 'https://qauto.forstudy.space/panel/garage');
})

Then('I expect to see disabled login button', () => {
    LoginPage.loginButton.should('be.disabled');
})

Then('I expect to see an error message with text {string}', (errorMessage) => {
    cy.contains(errorMessage);
})
