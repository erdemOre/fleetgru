package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public abstract class BasePage {

    public BasePage(){
        PageFactory.initElements(Driver.get(),this);
    }

    @FindBy(className = "oro-subtitle")
    public WebElement subTitle;

    public String getPageTitle(){
        return Driver.get().getTitle();
    }


}
