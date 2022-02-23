@FLEETG-710
Feature: Default

	Background:
		Background:
		    Given the user is on the login page
		

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	@FLEETG-696 @FLEETG-648
	Scenario: drivers sign in successfully
		Given user enters "user11"
		    And enters "UserUser123" as password
		    And clicks Log in button
		    Then user should land on the "Quick Launchpad" page after login	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	@FLEETG-697 @FLEETG-648
	Scenario: drivers sign in successfully
		Given user enters "user11"
		And enters "UserUser123" as password
		And clicks Log in button
		Then landing page has these modules
		      | Fleet      |
		      | Customers  |
		      | Activities |
		      | System     |	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	@FLEETG-698 @FLEETG-648
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

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	@FLEETG-699 @FLEETG-648
	Scenario Outline: invalid credentials login
		Given user enters "<username>"
		And enters "<password>" as password
		And clicks Log in button
		Then "Invalid user name or password." message displayed
		Examples:
		      | username        | password    |
		      | storemanager51  | 1111        |
		      | invalidusername | UserUser123 |	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#"Please fill out this field" message should be displayed if the password or username is empty
	@FLEETG-700 @FLEETG-648
	Scenario Outline: empty credentials login
		Given user enters "<username>"
		And enters "<password>" as password
		Then Please fill out this field message displayed
		Examples:
		      | username       | password    |
		      | storemanager51 |             |
		      |                | UserUser123 |	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	@FLEETG-649 @FLEETG-648
	Scenario: - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
		Scenario: managers sign in successfully
		    Given user enters "storemanager51"
		    And enters "UserUser123" as password
		    And clicks Log in button
		    Then user should land on the "Dashboard" page after login	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	@FLEETG-701 @FLEETG-648
	Scenario: user lands on Forgot Password page
		Given user clicks on "Forgot your password?" link
		Then page title is "Forgot Password"	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#User can see "Remember Me" link exists and is clickable on the login page
	@FLEETG-702 @FLEETG-648
	Scenario: Remember Me link works as expected
		Then Remember me on this computer checkbox exist
		And it is clickable.	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#User should see the password in bullet signs by default
	@FLEETG-703 @FLEETG-648
	Scenario: Password shows as bullet signs
		Given enters "any text here" as password
		Then password input shown in bullet signs	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	# Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FLEETG-704 @FLEETG-648
	Scenario: Enter key works properly in username box
		Given user enters "any thing"
		And hits enter key
		Then cursor automatically goes to password box	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	# Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FLEETG-705 @FLEETG-648
	Scenario: Enter key works properly in password box for managers
		Given user enters "storemanager51"
		And enters "UserUser123" as password
		And hits enter key
		Then user should land on the "Dashboard" page after login	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	# Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FLEETG-706 @FLEETG-648
	Scenario: Enter key works properly in password box for drivers
		Given user enters "user11"
		And enters "UserUser123" as password
		And hits enter key
		Then user should land on the "Quick Launchpad" page after login	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#All users can see their own usernames in the profile menu, after successful login
	@FLEETG-707 @FLEETG-648
	Scenario: All users can see their own name
		Given user enters "user1"
		And enters "UserUser123" as password
		And clicks Log in button
		Then user see his or her name on top right corner	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#All users can see their own usernames in the profile menu, after successful login
	@FLEETG-708 @FLEETG-648
	Scenario Outline: Managers see "<username>" on top right corner
		Given user enters "<username>"
		And enters "UserUser123" as password
		And clicks Log in button
		And "<username>" is displayed on right top corner
		Examples:
		      | username        |
		      | storemanager51  |
		      | storemanager61  |	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a driver, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#All users can see their own usernames in the profile menu, after successful login
	@FLEETG-709 @FLEETG-648
	Scenario Outline: Drivers see "<username>" on top right corner
		Given user enters "<username>"
		And enters "UserUser123" as password
		And clicks Log in button
		And "<username>" is displayed on right top corner
		Examples:
		      | username |
		      | user1    |
		      | user11   |