package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
             "json:target/cucumber.json",
             "html:target/html-report/cucumber.html", "pretty",
             "rerun:target/rerun.txt"
        },
        features="src/test/resources/features",
        glue="step_definitions",
        dryRun=false,
        tags="@FLEETG-710"
)

public class CukesRunner {
}
