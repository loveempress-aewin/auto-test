// @ts-check
// [ref reuse single page between tests](https://playwright.dev/docs/test-retries#reuse-single-page-between-tests)
const { test,expect } = require('@playwright/test');
const { request } = require('@playwright/test');
//const {newTest} = require('fixture.js');  ==> error didint catvh
import {ip} from '../javascript_ip.js';
const InputUser="admin";
const InputPassword="11111111";

test('download_log_button',async ({page,request})=>{
    let loginFlag;
    loginFlag = await page.getByText('Login Failed').isVisible();
  await page.goto('https://'+ip+'/#login');
  await page.getByPlaceholder('Username').fill(InputUser);
  ////await page.getByPlaceholder('Username').press('Tab');
  await page.waitForTimeout(50);
  await page.getByPlaceholder('Password', { exact: true }).fill(InputPassword);
  await page.waitForTimeout(50);
  await page.getByRole('button', { name: 'Sign me in' }).click();
  loginFlag = await page.getByText('Login Failed').isVisible();
  console.log(" username: " + InputUser + " | password : " + InputPassword );
  console.log(" validate : " + loginFlag );
  const response = await page.waitForRequest(url => url.url().includes('dashboard'));
  if(await page.getByText('Login Failed').isVisible()){
    console.log("========================================");
    console.log("    ERROR    :               ");
    console.log(" didn't login !!!        ");
  }
  await page.waitForTimeout(1000);

  //================
  // await page.goto('https://'+ip+'/#log/event-log');
  //// errro :  --> because it not found???
  await page.getByRole('link', { name: ' Logs & Reports ' }).click();
  await page.getByRole('link', { name: ' IPMI Event Log' }).click();
  const downloadPromise = page.waitForEvent('download');
  await page.getByRole('button', { name: ' Download Event Logs' }).click();
  const download = await downloadPromise;
  await page.waitForTimeout(2000);
})
