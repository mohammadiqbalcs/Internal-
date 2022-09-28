/*
 * Copyright © 2022 Cask Data, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package e2e;

import io.cdap.e2e.utils.ElementHelper;
import io.cdap.e2e.utils.SeleniumDriver;
import io.cdap.e2e.utils.SeleniumHelper;
import io.cdap.e2e.utils.WaitHelper;
import io.cdap.plugin.bwohd.locators.BWOHDLocators;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;

import java.util.UUID;

/**
 * BW OHD Plugin Actions.
 */
public class BWOHDActions {

  static {
    SeleniumHelper.getPropertiesLocators(BWOHDLocators.class);
  }

  public static void enterMandatoryParameters(String client,
                                              String lang,
                                              String ashost,
                                              String sysnr
                                              ) throws InterruptedException {
    ElementHelper.sendKeys(BWOHDLocators.referenceName, "BWOHD_Ref_" + UUID.randomUUID());
    ElementHelper.sendKeys(BWOHDLocators.client, client);
    ElementHelper.replaceElementValue(BWOHDLocators.lang, lang);
    ElementHelper.sendKeys(BWOHDLocators.ashost, ashost);
    ElementHelper.sendKeys(BWOHDLocators.sysnr, sysnr);
  }

  public static void enterMandatoryParametersLB(String client,
                                                String lang,
                                                String mshost,
                                                String msserv,
                                                String r3name,
                                                String group,
                                                String gcsPath)
  {
    ElementHelper.sendKeys(BWOHDLocators.referenceName, "BWOHD_Ref_" + UUID.randomUUID());
    ElementHelper.sendKeys(BWOHDLocators.client, client);
    ElementHelper.replaceElementValue(BWOHDLocators.lang, lang);
    ElementHelper.sendKeys(BWOHDLocators.mshost, mshost);
    ElementHelper.sendKeys(BWOHDLocators.msserv, msserv);
    ElementHelper.sendKeys(BWOHDLocators.r3name, r3name);
    ElementHelper.sendKeys(BWOHDLocators.group, group);
    ElementHelper.sendKeys(BWOHDLocators.gcsPath, gcsPath);
  }
//can eb replaced with framework step
  public static void selectLoadBalancedConnection() {
    ElementHelper.clickOnElement(BWOHDLocators.msgServer);
  }
  //can eb replaced with framework step
  public static void enterSAPLogonCredentials(String user, String passwd) {
    ElementHelper.sendKeys(BWOHDLocators.user, user);
    ElementHelper.sendKeys(BWOHDLocators.passwd, passwd);
  }
  //can eb replaced with framework step
  public static void enterProcessChainId(String processChainId) {
    ElementHelper.sendKeys(BWOHDLocators.processChainId, processChainId);
  }
  //can eb replaced with framework step
  public static void setNotificationWaitTime(String time) {
    ElementHelper.sendKeys(BWOHDLocators.notifyWaitTime, time);
  }

  public static void toggleUsePC() {
    ElementHelper.clickOnElement(BWOHDLocators.toggleNo);
  }

  public static void fillOpenHubDestination(String openHubDestination) {
    ElementHelper.sendKeys(BWOHDLocators.openHubDestination, openHubDestination);
  }

  public static void fillRequestId(String requestId) {
    ElementHelper.sendKeys(BWOHDLocators.requestId, requestId);
  }

}
