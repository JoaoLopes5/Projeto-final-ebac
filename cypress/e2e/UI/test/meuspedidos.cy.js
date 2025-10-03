/// <reference types="cypress"/>

import loginPage from "../pages/loginPage";
import meuspedidosPage from "../pages/meuspedidosPage";
describe('Página de meus pedidos', () => {
    it('Deve acessar a página dos meus pedidos', () => {
        loginPage.login()
        meuspedidosPage.PedidosExistentes()
    });
    it('Nenhum pedido na aba meus pedidos', () => {
        loginPage.login()
// Caso não tenha nenhum pedido:
//      meuspedidosPage.PedidosNaoExistentes()
        
    });
});