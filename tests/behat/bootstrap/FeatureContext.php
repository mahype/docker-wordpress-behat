<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\RawMinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawMinkContext implements Context {

	protected $screenshot_dir = '/tmp';

	/**
	 * Initializes context.
	 *
	 * Every scenario gets its own context instance.
	 * You can also pass arbitrary arguments to the
	 * context constructor through behat.yml.
	 */
	public function __construct( $parameters ) {
	}

	/**
	 * @Given I am on :arg1
	 */
	public function iAmOn( $arg1 ) {
		$this->visitPath("/" );
	}

	/**
	 * @Then I should see a button named :arg1
	 */
	public function iShouldSeeAButtonNamed( $arg1 ) {
		throw new PendingException();
	}

}
