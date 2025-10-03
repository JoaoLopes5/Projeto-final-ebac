class meusPedidos {
    PedidosExistentes() {
        cy.get('.woocommerce-MyAccount-navigation-link--orders > a').click()
        cy.get('.woocommerce-MyAccount-content').should('exist')
    }
    PedidosNaoExistentes(){
         cy.get('.woocommerce-MyAccount-navigation-link--orders > a').click()
        cy.get('.woocommerce-message').should('contain','Nenhum pedido foi feito ainda.')
    }
}

export default new meusPedidos();