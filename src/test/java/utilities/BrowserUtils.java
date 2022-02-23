package utilities;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class BrowserUtils {

    /**
     * waits for backgrounds processes on the browser to complete
     *
     * @param timeOutInSeconds
     */
    public static void waitForPageToLoad(long timeOutInSeconds) {
        ExpectedCondition<Boolean> expectation = new ExpectedCondition<Boolean>() {
            public Boolean apply(WebDriver driver) {
                return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
            }
        };
        try {
            WebDriverWait wait = new WebDriverWait(Driver.get(), timeOutInSeconds);
            wait.until(expectation);
        } catch (Throwable error) {
            error.printStackTrace();
        }
    }

    /**
     * Extracts text from list of elements matching the provided locator into new List<String>
     * @param list of webelements
     * @return list of string
     */
    public static List<String> getElementsText(List<WebElement> list){
        List<String> elemTexts = new ArrayList<>();
        for (WebElement el : list){
            elemTexts.add(el.getText());
        }
        return elemTexts;
    }

    /**
     * Waits for the provided element to be visible on the page
     *
     * @param element
     * @param timeToWaitInSec
     * @return
     * *
     */
    public static WebElement waitForVisibility(WebElement element, int timeToWaitInSec){
         WebDriverWait wait = new WebDriverWait(Driver.get(), timeToWaitInSec);
         return wait.until(ExpectedConditions.visibilityOf(element));
    }

    /**
     * Performs a pause
     *
     * @param seconds
     */
    public static void waitFor(int seconds){
        try{
            Thread.sleep(seconds * 1000);
        }catch (InterruptedException e){
            e.printStackTrace();
        }
    }


    /**
     *
     * @param by
     * @return
     */
    public static boolean isElementExist(By by){
        Driver.get().manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
        boolean exists = Driver.get().findElements(by).size() != 0;
        Driver.get().manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        return exists;
    }

    /**
     *
     * @param element
     * @return
     */
    public static boolean isClickable(WebElement element){

        waitForPageToLoad(10);
        waitForVisibility(element,10);

        //check if element displayed and enabled
        if(element.isDisplayed() && element.isEnabled()){
            System.out.println("inside element is displayed if statement");
            //click on element
            element.click();
            System.out.println("clicked on element");
            BrowserUtils.waitFor(5);
            //if it's clicked
            if(element.isSelected()){
                System.out.println("it should have been selected already");
                return true;
            }
        }
        //check if the element is already clicked
        if(element.isSelected()){
            System.out.println("inside element is selected");
            //then we click
            element.click();
            System.out.println("cliked on element");
            //it should be not selected
            if(!element.isSelected()){
                System.out.println("inside element is not selected");
                return true;
            }
        }
        return false;
    }



}
