/**
 * Created by Set on 06.12.14.
 */

$(document).ready(
    function()
    {
        // Sending contact for by submit
        $('#contact_form').submit(
            function(event)
            {
                event.preventDefault();
                var cUrl = '?option=com_ajax&module=elegance_contact&method=test&format=raw';
                $.ajax(
                    {
                        type:"GET",
                        dataType:'html',
                        url:cUrl,
                        data:$(this).serializeArray(),
                        success:function(responce)
                                {
                                    if(responce=='OK') $('.w-form-done').slideDown();
                                    if(responce=='ERROR') $('.w-form-fail').slideDown();
                                }
                    }
                );
            }
        );

        // Hiding info message by click
        $('.w-form-done,.w-form-fail').click(
            function()
            {
                $(this).slideUp()
            }
        );
    }
);