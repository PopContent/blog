$(document).ready(function() {
  $('#leads-table').DataTable({
    language: dataTableLanguage,
    dom: '<"top"lBf>rt<"bottom"ip><"clear">',
    buttons: [
      'copyHtml5',
      'csvHtml5',
      'pdfHtml5',
      {
          extend: 'excelHtml5',
          filename: 'Leads',
          exportOptions: {
              columns: [ 0, 1, 2, 3 ]
          }
      }
    ],
  });
} );