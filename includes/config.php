<?php 
/**
 * ====================================================================================
 *                           Premium URL Shortener (c) KBRmedia
 * ----------------------------------------------------------------------------------
 * @copyright This software is exclusively sold at CodeCanyon.net. If you have downloaded this
 *  from another site or received it from someone else than me, then you are engaged
 *  in an illegal activity. You must delete this software immediately or buy a proper
 *  license from http://codecanyon.net/user/KBRmedia/portfolio?ref=KBRmedia.
 *
 *  Thank you for your cooperation and don't hesitate to contact me if anything :)
 * ====================================================================================
 *
 * @author KBRmedia (http://gempixel.com)
 * @link http://gempixel.com 
 * @license http://gempixel.com/license
 * @package Premium URL Shortener
 * @subpackage Configuration File
 */
// Database Configuration
  $dbinfo = array(
    "host" => '127.0.0.1',        // Your mySQL Host (usually Localhost)
    "db" => 'affliate',            // The database where you have dumped the included sql file
    "user" => 'root',        // Your mySQL username
    "password" => '',    //  Your mySQL Password
    "prefix" => ''      // Prefix for your tables if you are using same db for multiple scripts, e.g. short_
  );

  $config = array(
    // Your Server's Timezone - List of available timezones (Pick the closest): https://php.net/manual/en/timezones.php
    "timezone" => date_default_timezone_get(),
    // Cache Data - If you notice anomalies, disable this. You should enable this when you get high hits
    "cache" => FALSE,
    // Use CDN to host libraries for faster loading
    "cdn" => TRUE,
    // Enable Compression? Makes your website faster
    "gzip" => TRUE,
    /*
     ====================================================================================
     *  Security Key & Token - Please don't change this if your site is live.
     * ----------------------------------------------------------------------------------
     *  - Setup a security phrase - This is used to encode some important user 
     *    information such as password. The longer the key the more secure they are.
     *
     *  - If you change this, many things such as user login and even admin login will 
     *    fail.
     *
     *  - If the two config below don't have any values, replace these by a random key.
     *
     *  - BACKUP OF YOUR KEYS IN CASE YOU CHANGE THEM BELOW
     *       Security: PUS3cdb06e1e8fb85c93740e70f493db6461f974e395fe33f5ce91659b887a27b48
     *       Public: cb6c505b58383786266d379a8016abcb
     ====================================================================================
    */
    "security" => 'PUS3cdb06e1e8fb85c93740e70f493db6461f974e395fe33f5ce91659b887a27b48',  // !!!! DON'T CHANGE THIS IF YOUR SITE IS LIVE !!!!
    "public_token" => 'cb6c505b58383786266d379a8016abcb', // This is randomly generated and it is a public key

    "debug" => 0,   // Enable debug mode (outputs errors) - 0 = OFF, 1 = Error message, 2 = Error + Queries (Don't enable this if your site is live!)
    "demo" => 0 // Demo mode
  );


// Include core.php
include ('core.php');