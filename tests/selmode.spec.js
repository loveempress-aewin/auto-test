// @ts-check
const { test, expect } = require('@playwright/test');
import {ip} from '../javascript_ip.js';

test.use({
  ignoreHTTPSErrors: true,
});

test('change sel mode', async ({ page }) => {
  console.log("the ip is :"+ip);
  // await page.goto('https://'+ip+'/login'); // == WTF
  await page.goto('https://'+ip+'/#login');
  await page.getByPlaceholder('Username').fill('admin');
  await page.waitForTimeout(2000);
  await page.getByPlaceholder('Password',{exact:true}).fill('11111111');
  // await page.waitForTimeout(4000);
  await page.getByRole('button', { name: 'Sign me in' }).click();

  // await page.goto('https://'+ip+'/#settings/log/SEL_log_settings_policy');
  await page.getByRole('link', { name: ' Settings' }).click();


  await page.getByRole('link', { name: ' Log Settings' }).click();
  await page.getByRole('link', { name: ' SEL Log Settings Policy' }).click();
  await page.locator('label').filter({ hasText: 'Circular Storage Policy' }).getByRole('insertion').click();
  //await page.locator('label').filter({ hasText: 'Linear Storage Policy' }).getByRole('insertion').click();
  // await page.getByText('SEL Log Settings Policy has');

  // Expect a title "to contain" a substring.
  // await expect(page).toHaveTitle(/Playwright/);
  // await page.locator('label').filter({ hasText: 'Linear Storage Policy' }).getByRole('insertion').click();
  await page.locator('label').filter({ hasText: 'Circular Storage Policy' }).getByRole('insertion').click();
  await page.getByRole('button', { name: '   Save' }).click();
  // await page.waitForTimeout(4000);


});

test('setting_png', async({page}) => {
  console.log("the ip is :"+ip);
  // await page.goto('https://'+ip+'/login'); // == WTF
  await page.goto('https://'+ip+'/#login');
  await page.getByPlaceholder('Username').fill('admin');
  await page.waitForTimeout(1000);
  await page.getByPlaceholder('Password',{exact:true}).fill('11111111');
  await page.waitForTimeout(1000);
  await page.getByRole('button', { name: 'Sign me in' }).click();
  await page.waitForTimeout(1000);
  await page.goto('https://'+ip+'/#settings');
  console.log('setting');
  await page.waitForTimeout(1000);
  await page.screenshot({path:'screenshot/settings.png',fullPage:true});
})

// test('get started link', async ({ page }) => {
//   await page.goto('https://playwright.dev/');

//   // Click the get started link.
//   await page.getByRole('link', { name: 'Get started' }).click();

//   // Expects page to have a heading with the name of Installation.
//   await expect(page.getByRole('heading', { name: 'Installation' })).toBeVisible();
// });
