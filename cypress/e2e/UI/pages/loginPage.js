class autenticar {
    login() {
        cy.visit('http://lojaebac.ebaconline.art.br/#')
        cy.get('.icon-user-unfollow').click()
        cy.get('[name="username"]').type('joao.teste@teste.com.br')
        cy.get('.woocommerce-form > :nth-child(2) > [name="password"]').type('teste@123')
        cy.get('[name="login"]').click()
    }
}

export default new autenticar();