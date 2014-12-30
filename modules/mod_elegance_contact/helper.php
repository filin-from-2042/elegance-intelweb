<?php
/**
 * Created by PhpStorm.
 * User: Set
 * Date: 06.12.14
 * Time: 19:29
 */
class modEleganceContactHelper
{
    public static function testAjax()
    {
        // Getting data
        $cUserName = $_GET['cf_name'];
        $cUserMail = $_GET['cf_email'];
        $cUserMessage = $_GET['cf_message'];

        $oMailer = JFactory::getMailer();

        //Setting recipients
        $aRecipients = array('filin2042@yandex.ru','filin2042@gmail.com');
        $oMailer->addRecipient($aRecipients);

        //Setting subject
        $cSubject = 'Контактная форма intelweb';
        $oMailer->setSubject($cSubject);

        $cBody = '<p>Имя отправителя:'.$cUserName.'</p><br>';
        $cBody .= '<p>Почта отправителя:'.$cUserMail.'</p><br>';
        $cBody .= '<p>Текст сообщения:'.$cUserMessage.'</p><br>';
        $oMailer->setBody($cBody);

        $oMailer->isHtml(true);

        if($oMailer->Send()) echo 'OK';
        else echo 'ERROR';
    }

}