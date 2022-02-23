package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import utilities.BrowserUtils;
import utilities.Driver;

import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public class LoginPage extends BasePage{

    @FindBy(id = "prependedInput")
    public WebElement userNameInputBox;

    @FindBy(id = "prependedInput2")
    public WebElement passwordInputBox;

    @FindBy(id = "_submit")
    public WebElement logInButton;

    @FindBy(xpath = "//div[@class='alert alert-error']/div")
    public WebElement invalidCredentialsErrorMsg;

    @FindBy(className = "custom-checkbox__icon")
    public WebElement rememberMeCheckBox;

    @FindBy(id = "remember_me")
    public WebElement rememberMeBiggerBox;

    public WebElement getLinkElement(String linkText){
        return Driver.get().findElement(By.linkText(linkText));
    }

    public boolean isErrorMessageDisplayed(){
        String expectedErrorMessage = "Please fill out this field.";
        if(userNameInputBox.getAttribute("validationMessage").equals(expectedErrorMessage) ||
        passwordInputBox.getAttribute("validationMessage").equals(expectedErrorMessage)){
            return true;
        }
      return false;
    }

    public boolean isRememberMeCheckBoxClickable(){

        BrowserUtils.waitForVisibility(rememberMeCheckBox,10);
        rememberMeCheckBox.click();

        WebDriverWait wait = new WebDriverWait(Driver.get(),3);
        try{
            wait.until(ExpectedConditions.elementSelectionStateToBe(rememberMeBiggerBox,true));
            return true;
        }catch (NoSuchElementException e){
            return false;
        }
    }

    public boolean isBulletSign(WebElement element){
        if(element.getAttribute("type").equals("password")){
            return true;
        }
        return false;
    }

    public boolean isCursorIn(WebElement element){
        String elementID = element.getAttribute("id");
        return Driver.get().switchTo().activeElement().getAttribute("id").equals(elementID);
    }
















}
