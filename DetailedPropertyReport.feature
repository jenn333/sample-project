Feature: Detailed Property Report [Smoke Test]
	I can purchase Detailed Property Report using full discount promo code

Background:
	Given I am not logged in, {serverUrl}
	And I search for Property Address, 24 Nunda Road Wangi Wangi NSW 2267

@smoketest @testgroup4
Scenario Outline: [Can purchase Detailed Property Report using full discount promo code]
	Given I have added Detailed Property Report in Shopping Cart, <label> , <address>, <price>
	When I apply full promocode and email, <promocode>, <email>
	And click Continue button
	Then I should be navigated to Payment Success Screen, <report>

Examples:
	| promocode | email | label | address | price | report | 
	| VICTORYTR | {email} | Detailed Property Report | 24 Nunda Road Wangi Wangi NSW 2267 | $39.95 | Detailed Property Report  |
