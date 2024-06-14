// @ts-check

const { test,expect } = require('@playwright/test');
import {ip} from '../javascript_ip.js';
let InputUser="admin";
const InputPassword="11111111";

test('bbu-login-sdr',async ({ page }) => {
    await page.goto('https://'+ip+'/#login');
    await page.getByPlaceholder('Username').fill(InputUser);
    //await page.getByPlaceholder('Username').fill('admin');
    await page.getByPlaceholder('Password', { exact: true }).fill('11111111');
    await page.getByRole('button', { name: 'Sign me in' }).click();
    const response = await expect(page).toHaveURL('https://'+ip+'/#dashboard');

  await page.goto('https://'+ip+'/#sensors');
  await page.waitForTimeout(5000);
  await page.screenshot({path:'screenshot/bbu.png',fullPage:true});
})
