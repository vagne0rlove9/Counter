

$('table td').on('click',function (event) {
    let $td = $(event.target);
    $td.html('<input type="text" data-init-value="'+event.target.innerText+'" value="'+event.target.innerText+'">');
})