<?php
namespace App\Helpers;

use LaravelFCM\Message\OptionsBuilder;
use LaravelFCM\Message\PayloadDataBuilder;
use LaravelFCM\Message\PayloadNotificationBuilder;
use FCM;

class helperNotifications{

    public static function toSingleDevice($token=null, $title=null, $content=null, $type=null){
        $optionBuilder = new OptionsBuilder();
        $optionBuilder->setTimeToLive(60*20);

        $notificationBuilder = new PayloadNotificationBuilder($title);
        $notificationBuilder->setBody($content)
                            ->setSound('default');

        $dataBuilder = new PayloadDataBuilder();
        $dataBuilder->addData(['type' => $type[0], 'id' => $type[1]]);

        $option = $optionBuilder->build();
        $notification = $notificationBuilder->build();
        $data = $dataBuilder->build();

        // dd($option);

        $token = $token;

        $downstreamResponse = FCM::sendTo($token, $option, $notification, $data);

        $downstreamResponse->numberSuccess();
        $downstreamResponse->numberFailure();
        $downstreamResponse->numberModification();

        // // return Array - you must remove all this tokens in your database
        // $downstreamResponse->tokensToDelete();

        // // return Array (key : oldToken, value : new token - you must change the token in your database)
        // $downstreamResponse->tokensToModify();

        // // return Array - you should try to resend the message to the tokens in the array
        // $downstreamResponse->tokensToRetry();

        // // return Array (key:token, value:error) - in production you should remove from your database the tokens
        // $downstreamResponse->tokensWithError();
    }

}