/**
 * Created with JetBrains RubyMine.
 * User: Chris
 * Date: 2/18/13
 * Time: 11:28 PM
 * To change this template use File | Settings | File Templates.
 */
// Sorting the list

$(document).ready(function(){
    $('#qsorts').sortable({
        axis: 'y',
        dropOnEmpty: false,
        handle: '.handle',
        cursor: 'crosshair',
        items: 'li',
        opacity: 0.4,
        scroll: true,
        update: function(){
            $.ajax({
                type: 'post',
                beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
                data: $('#qsorts').sortable('serialize'),
                dataType: 'script',
                complete: function(request){
                    $('#qsorts').effect('highlight');
                },
                url: '/qsorts/sort'})
        }
    });
});
