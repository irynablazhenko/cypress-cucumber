/// <reference types="cypress" />
import BasePage from "./BasePage";

class HomePage extends BasePage {

    get facebookIcon() {
        return cy.get('a.socials_link').first();
    }

    get telegramIcon() {
        return cy.get('a.socials_link').eq(1);
    }

    get youtubeIcon() {
        return cy.get('a.socials_link').eq(2);
    }

    get instagramIcon() {
        return cy.get('a.socials_link').eq(3);
    }

    get linkedinIcon() {
        return cy.get('a.socials_link').last();
    }

    signBtn(type) {
        return cy.contains(type);
    }

    get formName() {
        return cy.get('.modal-title');
    }

    open() {
        super.open('');
    }

}

export default new HomePage();