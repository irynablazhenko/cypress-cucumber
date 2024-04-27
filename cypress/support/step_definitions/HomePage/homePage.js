/// <reference types="cypress" />
import HomePage from "../../../e2e/page-objects/HomePage";
import { Given, When, Then, And } from "@badeball/cypress-cucumber-preprocessor";

Given('I am on the Home Page', () => {
    HomePage.open();
})

Then('I expect to see facebook icon', () => {
    HomePage.facebookIcon.should('be.visible');
})
Then('I expect to see telegram icon', () => {
    HomePage.telegramIcon.should('be.visible');
})
Then('I expect to see youtube icon', () => {
    HomePage.youtubeIcon.should('be.visible');
})
Then('I expect to see instagram icon', () => {
    HomePage.instagramIcon.should('be.visible');
})
Then('I expect to see linkedin icon', () => {
    HomePage.linkedinIcon.should('be.visible');
})

When('I click on {string} button', (type) => {
    HomePage.signBtn(type).click();
})

Then('I expect to see a {string} form', (form) => {
    HomePage.formName.should('have.text', form);
})