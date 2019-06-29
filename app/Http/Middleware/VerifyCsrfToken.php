<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as BaseVerifier;

class VerifyCsrfToken extends BaseVerifier
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        "driversignup",
        "driversignin",
        "driveruploadprofile",
        "driverupdate",
        "driverlogout",
        'ridersignup',
        'ridersignin',
        'rideruploadprofile',
        'riderlogout',
        'riderupdate',
        'getriderLocation',
        'getdrivertypes',
        'getdriver',
        'getdriverlocation',
        'stripe_pay',
        'cancelbooking',
        'canceltrip',
        'createstripe',
        'chargestripe',
        'payoutstripe',
        'createstripeaccount',
        'checkstatus',
        'authstatuschang',
        'acceptrequest',
        'getorderdata',
        'stripepaydriver',
        'completeride',
        'canceltripbydriver',
        'arrivedtrip',
        'ridergivenfeedback',
        'drivergivenfeedback',
        'driverhistory',
        'carinfoGet',
        'carinfoPut',
        'carinfoGetbyID',
        'carActive',
        'driverfeedbackView'
    ];
}
