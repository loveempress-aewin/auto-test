// @ts-check
// const { test,expect } = require('@playwright/test');
//let {ip} = require('../javascript_ip.js')
import {ip} from '../javascript_ip.js';

let InputUser="admin";
const InputPassword="11111111";
// codegen to autogenerate

test.use({
    ignoreHTTPSErrors: true,
  });

import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  // await page.getByRole('link', { name: ' Settings' }).click();
  // await page.getByRole('link', { name: ' Date & Time' }).click();
  //================
    console.log(" IP =====> " +ip );
    await page.goto('https://'+ip+'/#login');
    await page.getByPlaceholder('Username').fill(InputUser);
    await page.waitForTimeout(50);
    await page.getByPlaceholder('Password', { exact: true }).fill(InputPassword);
    await page.waitForTimeout(50);
    await page.getByRole('button', { name: 'Sign me in' }).click();
    //const response = await page.waitForRequest(url => url.url().includes('dashboard'));
    const response = await expect(page).toHaveURL('https://'+ip+'/#dashboard');
  //================================================================
  await page.goto('https://'+ip+'/#settings/date_time');
  await page.locator('#idrwauto_date_ntp').getByRole('insertion').click();
  page.once('dialog', dialog => {
    console.log(`Dialog message: ${dialog.message()}`);
    dialog.dismiss().catch(() => {});
  });
  await page.getByRole('button', { name: ' Save' }).click();
});
