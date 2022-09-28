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

import io.cdap.e2e.utils.SeleniumDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

/**
 * BW OHD Plugin Locators.
 */
public class BWOHDLocators {

  @FindBy(how = How.XPATH, using = "//input[@data-cy='referenceName']")
  public static WebElement referenceName;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.client']")
  public static WebElement client;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.lang']")
  public static WebElement lang;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.ashost']")
  public static WebElement ashost;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.mshost']")
  public static WebElement mshost;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.sysnr']")
  public static WebElement sysnr;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.msserv']")
  public static WebElement msserv;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.r3name']")
  public static WebElement r3name;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.group']")
  public static WebElement group;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='processChainId']")
  public static WebElement processChainId;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.user']")
  public static WebElement user;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='jco.client.passwd']")
  public static WebElement passwd;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='gcsPath']")
  public static WebElement gcsPath;



  @FindBy(how = How.XPATH, using = "//input[@data-cy='notifyWaitTime']")
  public static WebElement notifyWaitTime;

  @FindBy(how = How.XPATH, using = "//*[@data-cy='plugin-validation-success-msg']")
  public static WebElement successMessage;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='openHubDestination']")
  public static WebElement openHubDestination;

  @FindBy(how = How.XPATH, using = "//*[@data-cy='switch-useProcessChain']")
  public static WebElement toggleNo;

  @FindBy(how = How.XPATH, using = "//input[@data-cy='requestId']")
  public static WebElement requestId;

  @FindBy(how = How.XPATH, using = "//*[contains(text(), 'Load Balanced (via SAP Message Server')]")
  public static WebElement msgServer;

  @FindBy(how = How.XPATH, using = "//*[@class='text-danger']//li")
  public static WebElement bannerError;
  public static By schemaItem = By.xpath("(//*[@placeholder='Field name'])[2]");

  public static WebElement inputParameter(String inputParameter) {
    return SeleniumDriver.getDriver().findElement(By.xpath("//input[@data-cy='" +
                                                             inputParameter + "']"));
  }
  public static By locatorOfOutputSchemaFieldTypeEntry() {
    return By.xpath("//input[@data-cy='gcsPath']");
  }



}
