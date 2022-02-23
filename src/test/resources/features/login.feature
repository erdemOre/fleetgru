
Feature: default

  Background:
    Given the user is on the login page


  Scenario: managers sign in successfully
    Given user enters "storemanager51"
    And enters "UserUser123" as password
    And clicks Log in button
    Then user should land on the "Dashboard" page after login


  Scenario: Sign in with manager "<username>"
    Given  user enters "storemanager51"
    And enters "UserUser123" as password
    And clicks Log in button
    Then landing page has these modules
      | Dashboards         |
      | Fleet              |
      | Customers          |
      | Sales              |
      | Activities         |
      | Marketing          |
      | Reports & Segments |
      | System             |


  Scenario: drivers sign in successfully
    Given user enters "user11"
    And enters "UserUser123" as password
    And clicks Log in button
    Then user should land on the "Quick Launchpad" page after login


  Scenario: drivers sign in successfully
    Given user enters "user11"
    And enters "UserUser123" as password
    And clicks Log in button
    Then landing page has these modules
      | Fleet      |
      | Customers  |
      | Activities |
      | System     |


  Scenario Outline: invalid credentials login
    Given user enters "<username>"
    And enters "<password>" as password
    And clicks Log in button
    Then "Invalid user name or password." message displayed
    Examples:
      | username        | password    |
      | storemanager51  | 1111        |
      | invalidusername | UserUser123 |


  Scenario Outline:  empty credentials login
    Given user enters "<username>"
    And enters "<password>" as password
    Then Please fill out this field message displayed
    Examples:
      | username       | password    |
      | storemanager51 |             |
      |                | UserUser123 |


  Scenario: user lands on Forgot Password page
    Given user clicks on "Forgot your password?" link
    Then page title is "Forgot Password"


  Scenario: Remember Me link works as expected
    Then Remember me on this computer checkbox exist
    And it is clickable.


  Scenario: Password shows as bullet signs
    Given enters "any text here" as password
    Then password input shown in bullet signs


  Scenario: Enter key works properly in username box
    Given user enters "any thing"
    And hits enter key
    Then cursor automatically goes to password box

  Scenario: Enter key works properly in password box for managers
    Given user enters "storemanager51"
    And user enters "UserUser123"
    And hits enter key
    Then user should land on the "Dashboard" page after login

  Scenario: Enter key works properly in password box for drivers
    Given user enters "user11"
    And hits enter key
    Then user should land on the "Quick LaunchPad" page after login

  @wip
  Scenario: All users can see their own name
    Given user enters "user1"
    And enters "UserUser123" as password
    And clicks Log in button
    Then user see his or her name on top right corner



  @Ignore
  Scenario Outline: Managers see "<username>" on top right corner
    Given user enters "<username>"
    And "<username>" is displayed on right top corner
    Examples:
      | username        |
      | storemanager51  |
      | storemanager61  |
      | storemanager71  |
      | storemanager81  |
      | storemanager91  |
      | storemanager201 |
      | storemanager211 |
      | storemanager221 |
      | storemanager231 |
      | storemanager241 |
      | storemanager52  |
      | storemanager62  |
      | storemanager72  |
      | storemanager82  |
      | storemanager92  |
      | storemanager202 |
      | storemanager212 |
      | storemanager222 |
      | storemanager232 |
      | storemanager242 |
      | storemanager53  |
      | storemanager63  |
      | storemanager73  |
      | storemanager83  |
      | storemanager93  |
      | storemanager203 |
      | storemanager213 |
      | storemanager223 |
      | storemanager233 |
      | storemanager243 |
      | storemanager54  |
      | storemanager64  |
      | storemanager74  |
      | storemanager84  |
      | storemanager94  |
      | storemanager204 |
      | storemanager214 |
      | storemanager224 |
      | storemanager234 |
      | storemanager244 |
      | storemanager55  |
      | storemanager65  |
      | storemanager75  |
      | storemanager85  |
      | storemanager95  |
      | storemanager205 |
      | storemanager215 |
      | storemanager225 |
      | storemanager235 |
      | storemanager245 |
      | storemanager56  |
      | storemanager66  |
      | storemanager76  |
      | storemanager86  |
      | storemanager96  |
      | storemanager206 |
      | storemanager216 |
      | storemanager226 |
      | storemanager236 |
      | storemanager246 |
      | storemanager57  |
      | storemanager67  |
      | storemanager77  |
      | storemanager87  |
      | storemanager97  |
      | storemanager207 |
      | storemanager217 |
      | storemanager227 |
      | storemanager237 |
      | storemanager247 |
      | storemanager58  |
      | storemanager68  |
      | storemanager78  |
      | storemanager88  |
      | storemanager98  |
      | storemanager208 |
      | storemanager218 |
      | storemanager228 |
      | storemanager238 |
      | storemanager248 |
      | storemanager59  |
      | storemanager69  |
      | storemanager79  |
      | storemanager89  |
      | storemanager99  |
      | storemanager209 |
      | storemanager219 |
      | storemanager229 |
      | storemanager239 |
      | storemanager249 |
      | storemanager60  |
      | storemanager70  |
      | storemanager80  |
      | storemanager90  |
      | storemanager100 |
      | storemanager210 |
      | storemanager220 |
      | storemanager230 |
      | storemanager240 |
      | storemanager250 |
      | salesmanager101 |
      | salesmanager111 |
      | salesmanager121 |
      | salesmanager131 |
      | salesmanager141 |
      | salesmanager251 |
      | salesmanager261 |
      | salesmanager271 |
      | salesmanager281 |
      | salesmanager291 |
      | salesmanager102 |
      | salesmanager112 |
      | salesmanager122 |
      | salesmanager132 |
      | salesmanager142 |
      | salesmanager252 |
      | salesmanager262 |
      | salesmanager272 |
      | salesmanager282 |
      | salesmanager292 |
      | salesmanager103 |
      | salesmanager113 |
      | salesmanager123 |
      | salesmanager133 |
      | salesmanager143 |
      | salesmanager253 |
      | salesmanager263 |
      | salesmanager273 |
      | salesmanager283 |
      | salesmanager293 |
      | salesmanager104 |
      | salesmanager114 |
      | salesmanager124 |
      | salesmanager134 |
      | salesmanager144 |
      | salesmanager254 |
      | salesmanager264 |
      | salesmanager274 |
      | salesmanager284 |
      | salesmanager294 |
      | salesmanager105 |
      | salesmanager115 |
      | salesmanager125 |
      | salesmanager135 |
      | salesmanager145 |
      | salesmanager255 |
      | salesmanager265 |
      | salesmanager275 |
      | salesmanager285 |
      | salesmanager295 |
      | salesmanager106 |
      | salesmanager116 |
      | salesmanager126 |
      | salesmanager136 |
      | salesmanager146 |
      | salesmanager256 |
      | salesmanager266 |
      | salesmanager276 |
      | salesmanager286 |
      | salesmanager296 |
      | salesmanager107 |
      | salesmanager117 |
      | salesmanager127 |
      | salesmanager137 |
      | salesmanager147 |
      | salesmanager257 |
      | salesmanager267 |
      | salesmanager277 |
      | salesmanager287 |
      | salesmanager297 |
      | salesmanager108 |
      | salesmanager118 |
      | salesmanager128 |
      | salesmanager138 |
      | salesmanager148 |
      | salesmanager258 |
      | salesmanager268 |
      | salesmanager278 |
      | salesmanager288 |
      | salesmanager298 |
      | salesmanager109 |
      | salesmanager119 |
      | salesmanager129 |
      | salesmanager139 |
      | salesmanager149 |
      | salesmanager259 |
      | salesmanager269 |
      | salesmanager279 |
      | salesmanager289 |
      | salesmanager299 |
      | salesmanager110 |
      | salesmanager120 |
      | salesmanager130 |
      | salesmanager140 |
      | salesmanager150 |
      | salesmanager260 |
      | salesmanager270 |
      | salesmanager280 |
      | salesmanager290 |
      | salesmanager300 |

  @Ignore
  Scenario Outline: Drivers see "<username>" on top right corner
    Given user enters "<username>"
    And "<username>" is displayed on right top corner
    Examples:
      | username |
      | user1    |
      | user11   |
      | user21   |
      | user31   |
      | user41   |
      | user151  |
      | user161  |
      | user171  |
      | user181  |
      | user191  |
      | user2    |
      | user12   |
      | user22   |
      | user32   |
      | user42   |
      | user152  |
      | user162  |
      | user172  |
      | user182  |
      | user192  |
      | user3    |
      | user13   |
      | user23   |
      | user33   |
      | user43   |
      | user153  |
      | user163  |
      | user173  |
      | user183  |
      | user193  |
      | user4    |
      | user14   |
      | user24   |
      | user34   |
      | user44   |
      | user154  |
      | user164  |
      | user174  |
      | user184  |
      | user194  |
      | user5    |
      | user15   |
      | user25   |
      | user35   |
      | user45   |
      | user155  |
      | user165  |
      | user175  |
      | user185  |
      | user195  |
      | user6    |
      | user16   |
      | user26   |
      | user36   |
      | user46   |
      | user156  |
      | user166  |
      | user176  |
      | user186  |
      | user196  |
      | user7    |
      | user17   |
      | user27   |
      | user37   |
      | user47   |
      | user157  |
      | user167  |
      | user177  |
      | user187  |
      | user197  |
      | user8    |
      | user18   |
      | user28   |
      | user38   |
      | user48   |
      | user158  |
      | user168  |
      | user178  |
      | user188  |
      | user198  |
      | user9    |
      | user19   |
      | user29   |
      | user39   |
      | user49   |
      | user159  |
      | user169  |
      | user179  |
      | user189  |
      | user199  |
      | user10   |
      | user20   |
      | user30   |
      | user40   |
      | user50   |
      | user160  |
      | user170  |
      | user180  |
      | user190  |
      | user200  |


