//package com.soholighting.sohoTeam8;
//import org.junit.jupiter.api.AfterEach;
//import org.junit.jupiter.api.BeforeAll;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.junit.runner.RunWith;
//import org.openqa.selenium.By;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.chrome.ChromeDriver;
//import org.openqa.selenium.chrome.ChromeOptions;
//import org.openqa.selenium.firefox.FirefoxDriver;
//import org.openqa.selenium.firefox.FirefoxOptions;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import io.github.bonigarcia.wdm.WebDriverManager;
//
//
//import static org.junit.Assert.assertTrue;
//
//@RunWith(SpringRunner.class)
//@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
//public class ChromeDriverPageTests {
//
//
////
////    driver = new ChromeDriver();
//    @Value("${local.server.port}")
//    private int port;
//
//    //    an alternative really good resource:   https://github.com/bonigarcia/webdrivermanager
//    WebDriver webDriver;
//    @BeforeAll
//    static void setupClass() {
//        WebDriverManager.chromedriver().setup();
////        WebDriverManager.firefoxdriver().setup();
//    }
//    @BeforeEach
//    void setupTest() {
//        System.setProperty("webdriver.chrome.driver", "C:\\Users\\c23085317\\OneDrive - Cardiff University\\Desktop\\CMT654 devop 5.9\\chromedriver-win64\\chromedriver.exe");
//        ChromeOptions options = new ChromeOptions();
//        //FirefoxOptions options = new FirefoxOptions();
//
//        options.addArguments("--remote-debugging-port=8200");
//        options.addArguments("--headless");
//        webDriver = new ChromeDriver(options);
//        //webDriver = new FirefoxDriver(options);
//    }
//    @AfterEach
//    void teardown() {
//        webDriver.quit();
//    }
//    @Test
//    public void testingPageContents() {
//
//
//        //
//        System.setProperty("webdriver.chrome.driver", "C:\\Users\\c23085317\\OneDrive - Cardiff University\\Desktop\\CMT654 devop 5.9\\chromedriver-win64\\chromedriver.exe");
//        ChromeOptions options = new ChromeOptions();
//        options.addArguments("--remote-debugging-port=8200");
//        options.addArguments("--headless");
//        this.webDriver = new ChromeDriver(options);
//        //
//        //WebDriverManager.firefoxdriver().setup();
//        //webDriver = new FirefoxDriver();
//
//        this.webDriver.get("http://localhost:" + Integer.toString(port) + "/sponsors");
//        String title = webDriver.getTitle();
//        assertTrue(title.contains("Sponsors"));
//
//
////        this.webDriver.get("http://localhost:" + Integer.toString(port) + "/Admin/AddItem");
////        this.webDriver.findElement(By.name("username")).sendKeys("user");
////        this.webDriver.findElement(By.name("password")).sendKeys("password");
////        this.webDriver.findElement(By.id("SignInButton")).click();
////        assertTrue(webDriver.findElement(By.cssSelector("main h1")).getText().contains("ADMIN Pages"));
////
//////        this.webDriver.get("http://localhost:" + Integer.toString(port) + "/Admin/AddItem");
////        this.webDriver.findElement(By.name("name")).sendKeys("sausage");
////        this.webDriver.findElement(By.name("description")).sendKeys("long and thin");
////        this.webDriver.findElement(By.name("price")).sendKeys("20");
////        assertTrue(webDriver.findElements(By.xpath("/html/body/main/form/button")).size() > 0);
////        this.webDriver.findElement(By.xpath("/html/body/main/form/button")).click();
////        this.webDriver.get("http://localhost:" + Integer.toString(port) + "/Menu");
////        assertTrue(webDriver.findElement(By.cssSelector("main table")).getText().contains("sausage"));
////
////        this.webDriver.get("http://localhost:" + Integer.toString(port) + "/Menu");
////        assertTrue(webDriver.findElement(By.cssSelector("table")).getText().contains("mockDBChips"));
//
//    }
//
//
//}
//
