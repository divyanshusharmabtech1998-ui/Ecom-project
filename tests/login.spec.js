const { test, expect } = require('@playwright/test');
const LoginPage = require('../pages/loginpage');

test('Login Test', async ({ page }) => {

const login = new LoginPage(page);

await login.goToLoginPage();

await login.login("standard_user","secret_sauce");

await expect(page).toHaveURL(/inventory/);

});