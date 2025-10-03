const { $ } = require('@wdio/globals')


class LoginPage {
    get notifications(){
        return $('id:com.android.permissioncontroller:id/permission_deny_button')
    }
    get apkLogin(){
        return $('id:com.woocommerce.android:id/button_login_store')
    }
    
    get storeUrl(){
        return $('id:com.woocommerce.android:id/input')
    }
    get btnContinue(){
        return $('id:com.woocommerce.android:id/bottom_button')
    }
    get storeCredentials(){
        return $('id:com.woocommerce.android:id/login_site_creds')
    }
    get userName(){
        return $(`android=new UiSelector().text("Username")`)
    }
    get senha(){
        return  $(`android=new UiSelector().text("Password")`)
    }
    get btnLogin(){
        return $('id:com.woocommerce.android:id/bottom_button')
    }
    get paineldaConta(){
        return $('id:com.woocommerce.android:id/text_username')
    }
    async login(){
        await this.notifications.click()
        await this.apkLogin.click()
        await this.storeUrl.setValue('http://lojaebac.ebaconline.art.br/#')
        await this.btnContinue.click()
        await this.storeCredentials.click()
        await this.userName.setValue('cliente@ebac.art.br')
        await this.senha.setValue('GD*peToHNJ1#c$sgk08EaYJQ')
        await this.btnLogin.click()
    }
}
module.exports = new LoginPage();
