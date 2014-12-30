<!--///////////////////////////////////////////////////////
       // Contact section
       //////////////////////////////////////////////////////////-->

<div class="contact-parlex" id="contact">
    <div class="parlex8-back">
        <div class="w-container">
            <div class="wrap">
                <div class="contact-div">
                    <h1 class="contact-heading"><?=$cHeader?></h1>
                    <div class="sepreater"></div>
                </div>
                <p class="contact-para"><?=$cSubHeader?></p>
                <div class="w-form">
                    <form action="contact.php" method="post" id="contact_form" class="form-validate">
                        <label for="name">Имя:</label>
                        <input class="w-input required"  type="text" placeholder="Ваше имя" name="cf_name">
                        <label for="email">Email:</label>
                        <input class="w-input" placeholder="Ваша электронная почта" type="text" name="cf_email" required="required">
                        <label for="email">Ваше сообщение:</label>
                        <textarea class="w-input message" placeholder="Текс сообщения" name="cf_message"></textarea><br>
                        <input class="w-button validate" type="submit" value="Отправить">
                    </form>
                    <div class="w-form-done">
                        <p>Спасибо, ваще сообщение было отправлено!</p>
                    </div>
                    <div class="w-form-fail">
                        <p>При отправке сообщения произошла ошибка :(</p>
                    </div>
                </div>
            </div>
        </div>
<!--        <div class="w-widget w-widget-map contac-map" data-widget-latlng="37.782163,-122.400591" data-widget-style="roadmap" data-widget-zoom="10" data-widget-tooltip="Carino Headquater"></div>-->
        <div class="w-container">
            <div class="w-row contact-col">
<!--                <div class="w-col w-col-4 contact-col1">-->
<!--                    <div>-->
<!--                        <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">-->
<!--                            <a href="#set-5" class="hi-icon hi-icon-earth">Partners</a>-->
<!--                        </div>-->
<!--                        <h4 class="contact-col-head">Visit Us</h4>-->
<!--                    </div>-->
<!--                    <div>-->
<!--                        <div class="contact-col-text">795 Folsom St., Suite 600-->
<!--                            <br>San Francisco, CA 94107</div>-->
<!--                    </div>-->
<!--                </div>-->
                <div class="w-col w-col-6 contact-col2">
                    <div>
                        <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                            <span href="#set-5" class="hi-icon hi-icon-mail">Partners</span>
                        </div>
                        <h4 class="contact-col-head">Напишите нам</h4>
                    </div>
                    <div>
                        <div class="contact-col-text"><a href="mailto:<?=$cMailUs?>"><?=$cMailUs?></a></div>
                    </div>
                </div>
                <div class="w-col w-col-6 contact-col3">
                    <div>
                        <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                            <span class="hi-icon hi-icon-mobile">Partners</span>
                        </div>
                        <h4 class="contact-col-head">Позвоните нам</h4>
                    </div>
                    <div>
                        <div class="contact-col-text-bar-last"><?=$cCallUs?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--///////////////////////////////////////////////////////
       // End Contact section
       //////////////////////////////////////////////////////////-->