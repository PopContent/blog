$(document).ready(function() {
  $('#leads-table').DataTable({
    language: dataTableLanguage,
    dom: '<"top"lBf>rt<"bottom"ip><"clear">',
    buttons: [
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        'pdfHtml5'
    ]
  });
} );