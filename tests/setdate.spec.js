// @ts-check
// const { test,expect } = require('@playwright/test');
//let {ip} = require('../javascript_ip.js')
import {ip} from '../javascript_ip.js';

let InputUser="admin";
const InputPassword="11111111";
// codegen to autogenerate

// test.use({
//     ignoreHTTPSErrors: true,
//   });

import { test, expect } from '@playwright/test';

test.skip('test1',async ({page}) => {
  await page.goto('https://'+ip+'/#login');
  await page.waitForTimeout(12000);
})

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
  let idntp;
  //loveUploading = await page.locator("//span[contains(@class,'progress-info')]").textContent();
  await page.goto('https://'+ip+'/#settings/date_time');
  await page.waitForTimeout(500);
  // idntp = await page.locator("#idntp_auto_date");
  idntp = await page.inputValue("#idntp_auto_date");
  // await expect(page.locator('#idntp_auto_date')).toHaveValue('0');

  // await page.getByRole('option', { name: 'Asia/Taipei' }).click();
  // await page.locator('#select2-idtimezone-container').fill('Asia/Taipei')
  // element.selectOption({label:'Asia/Taipei'});
  const idtimezone=await page.$("#idtimezone");
  // await locator.selectText('Asia/Taipei');
  //[ts and select](https://www.youtube.com/watch?v=IubdSQFOdiU)
  idtimezone.selectOption("Asia/Taipei");
  await page.waitForTimeout(3000);
  if(idntp == 0){
  await page.locator('#idrwauto_date_ntp').getByRole('insertion').click();
  }
  //[ntp](https://note.chiatse.com/tai-wan-guan-yong-gong-kai-shi-jian-si-fu-qi-ntp-server/)
  await page.locator('#idprimary_ntp').fill('216.239.35.0');
  // await page.locator('#idsecondary_ntp').fill('time.cloudflare.com');
  await page.locator('#idsecondary_ntp').fill('162.159.200.123');
  await page.waitForTimeout(500);
  // page.once('dialog', dialog => {
  page.on('dialog', dialog => {
    // console.log(`Dialog message: ${dialog.message()}`);
    dialog.accept().catch(() => {});
  });
  await page.getByRole('button', { name: ' Save' }).click();

  // page.on('dialog',dialog=>console.log(dialog.message()));
  // await page.getByRole('button').click();
  // page.on('dialog', dialog => {
  //   // console.log(`Dialog message: ${dialog.message()}`);
  //   // await page.waitForTimeout(10000);
  //   dialog.accept().catch(() => {});
  // });

    await page.waitForTimeout(9000);
  console.log('idntp : '+idntp);
  //await page.goto('https://192.168.120.123/#login');
});
