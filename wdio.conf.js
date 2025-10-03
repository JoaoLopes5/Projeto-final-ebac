const { join } = require('path');
exports.config = {
   
    runner: 'local',
    port: 4723,
    specs: [
        './mobile/specs/**/*.js'
    ],
    exclude: [
    ],
    maxInstances: 1,
    capabilities: [{
        "platformName": "Android",
        "appium:platformVersion": "16",
        "appium:deviceName": "Ebac",
        "appium:automationName": "UiAutomator2",
        "appium:appPackage": "com.woocommerce.android",
      "appium:appActivity": "com.woocommerce.android.ui.main.MainActivity",
       
    }],

    logLevel: 'info',
    
    bail: 0,
   
    waitforTimeout: 10000,
    
    connectionRetryTimeout: 120000,
    
    connectionRetryCount: 3,
    
    framework: 'mocha',
    
   
    
    reporters: ['spec', ['allure', {
        outputDir: 'allure-results',
        disableWebdriverStepsReporting: true,
        disableWebdriverScreenshotsReporting: true,
    }]],

   
    mochaOpts: {
        ui: 'bdd',
        timeout: 60000
    },

  
   
}
