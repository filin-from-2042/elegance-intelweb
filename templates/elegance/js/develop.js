/**
 * Created by Set on 30.12.14.
 */
$(document).ready(
    function()
    {
        /*
        $('.service_text').each(
            function()
            {
                console.log($(this));

            }
        );*/

        $('.service_text').each(
            function()
            {
                var cDialogName = $(this).closest('.w-col').attr('dialog');
                $(this).dialog(
                    {
                        autoOpen :false,
                        modal:true,
                        minWidth:'400',
                        dialogClass:cDialogName
                    }
                );
            }
        );

        $('.plans-details .plan-1-butn').click(
            function( event )
            {
                event.preventDefault();
                var domContainer = $(this).closest('.w-col');
                var cDialogName = domContainer.attr('dialog');
                $('.service_text.'+cDialogName).dialog('open');

            }
        );
    }
);