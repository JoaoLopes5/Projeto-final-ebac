const { expect } = require('@wdio/globals')
const loginPage = require('../pageobjects/login.page')

describe('Painel da conta', () => {
    it('Deve acessar o painel da conta com sucesso', async () => {
      await loginPage.login()
      const paineldaConta = await $('id:com.woocommerce.android:id/text_username')
      await expect(paineldaConta).toHaveText("Signed in as @cliente@ebac.art.br\nWrong account? Log out");
    })
})

