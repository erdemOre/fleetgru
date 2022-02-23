package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class LandingPage extends BasePage{

    @FindBy(xpath = "//span[@class='title title-level-1']")
    public List<WebElement>  moduleLinks;

    @FindBy(xpath = "//li[@id = 'user-menu']/a")
    public WebElement nameDropdown;

}
