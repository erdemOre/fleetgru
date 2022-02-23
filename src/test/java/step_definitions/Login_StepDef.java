package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import pages.LandingPage;
import pages.LoginPage;
import utilities.BrowserUtils;
import utilities.ConfigurationReader;
import utilities.Driver;

import java.util.List;

public class Login_StepDef {






    @Given("the user is on the login page")
    public void the_user_is_on_the_login_page() {
        Driver.get().navigate().to(ConfigurationReader.get("login_url"));
    }

    @Given("user enters {string}")
    public void user_enters(String userName) {
        LoginPage loginPage = new LoginPage();

        loginPage.userNameInputBox.sendKeys(userName);
    }

    @Given("enters {string} as password")
    public void enters_as_password(String password) {
        LoginPage loginPage = new LoginPage();
        loginPage.passwordInputBox.sendKeys(password);
    }
    

    @And("clicks Log in button")
    public void clicksLogInButton() {
        LoginPage loginPage = new LoginPage();
        loginPage.logInButton.click();
    }

    @Then("user should land on the {string} page after login")
    public void userShouldLandOnThePageAfterLogin(String expectedSubTitle) {
        LandingPage landingPage = new LandingPage();
        BrowserUtils.waitForPageToLoad(10);
        Assert.assertEquals("verify subtitle", expectedSubTitle, landingPage.subTitle.getText());
    }

    @Then("landing page has these modules")
    public void landing_page_has_these_modules(List<String> expectedModuleLinksList) {
        LandingPage landingPage = new LandingPage();

        List<String> actualModuleLinksList = BrowserUtils.getElementsText(landingPage.moduleLinks);

        Assert.assertEquals("verify expected modules are present", expectedModuleLinksList, actualModuleLinksList);
    }


    @Then("{string} message displayed")
    public void messageDisplayed(String expectedErrorMessage) {
        LoginPage loginPage = new LoginPage();
        BrowserUtils.waitForPageToLoad(10);
        BrowserUtils.waitForVisibility(loginPage.invalidCredentialsErrorMsg,10);
        String actualErrorMessage = loginPage.invalidCredentialsErrorMsg.getText();
        Assert.assertEquals("verify error msg displayed", expectedErrorMessage,actualErrorMessage);
    }

    @Then("Please fill out this field message displayed")
    public void pleaseFillOutThisFieldMessageDisplayed() {
        LoginPage loginPage = new LoginPage();
        Assert.assertTrue("Expected error message displayed", loginPage.isErrorMessageDisplayed());
    }

    @Given("user clicks on {string} link")
    public void userClicksOnLink(String textOfLink) {
        LoginPage loginPage = new LoginPage();
        loginPage.getLinkElement(textOfLink).click();
    }

    @Then("page title is {string}")
    public void pageTitleIs(String expectedPageTitle) {
        LoginPage loginPage = new LoginPage();
        BrowserUtils.waitForPageToLoad(10);
        Assert.assertEquals("verıfy page title",
                expectedPageTitle, loginPage.getPageTitle() );
    }


    @Given("{string} checkbox exist")
    public void checkboxExist(String textOfElement) {


    }

    @Then("Remember me on this computer checkbox exist")
    public void rememberMeOnThisComputerCheckboxExist() {
        Assert.assertTrue("verify if the checkbox exist with the given text",
                BrowserUtils.isElementExist(By.className("custom-checkbox__icon")));
    }

    @And("it is clickable.")
    public void itIsClickable() {
        LoginPage loginPage = new LoginPage();
        Assert.assertTrue("verify if the checkbox is clickable",
                loginPage.isRememberMeCheckBoxClickable());
    }


    @Then("password input shown in bullet signs")
    public void passwordInputShownInBulletSigns() {
        LoginPage loginPage = new LoginPage();
        BrowserUtils.waitForVisibility(loginPage.passwordInputBox,10);
        Assert.assertTrue("password input shown in bullet signs",
                loginPage.isBulletSign(loginPage.passwordInputBox));
    }

    @And("hits enter key")
    public void hitsEnterKey() {
        LoginPage loginPage = new LoginPage();
        loginPage.userNameInputBox.sendKeys(""+ Keys.ENTER);
        BrowserUtils.waitFor(5);
    }


    @Then("cursor automatically goes to password box")
    public void cursorAutomaticallyGoesToPasswordBox() {
        LoginPage loginPage = new LoginPage();
        BrowserUtils.waitForVisibility(loginPage.passwordInputBox,10);

        Assert.assertTrue("verify cursor is inside password box",
                loginPage.isCursorIn(loginPage.passwordInputBox));
    }


    @Then("user see his or her name on top right corner")
    public void userSeeHisOrHerNameOnTopRightCorner() {
        LandingPage landingPage = new LandingPage();
        BrowserUtils.waitForPageToLoad(10);
        BrowserUtils.waitForVisibility(landingPage.nameDropdown,10);

        Assert.assertTrue("verify user's name is visible",
                landingPage.nameDropdown.isDisplayed());
    }

    @And("{string} is displayed on right top corner")
    public void isDisplayedOnRightTopCorner(String username) {
        LandingPage landingPage = new LandingPage();
        BrowserUtils.waitForPageToLoad(10);
        BrowserUtils.waitForVisibility(landingPage.nameDropdown,10);

        Assert.assertEquals(username +"is displayed",
                username, landingPage.nameDropdown.getText());
    }
}

