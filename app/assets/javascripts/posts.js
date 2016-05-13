var summernoteConfig = {
    lang: document.documentElement.lang,
    fontNames: ['Lato', 'Roboto', 'Arial', 'Helvetica', 'sans-serif', 'monospace', 'serif', 'PT Serif' ],
    toolbar: [
        ['style', ['style']],
        ['font', ['bold', 'italic', 'underline', 'clear']],
        ['fontname', ['fontname']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['table', ['table']],
        ['insert', ['link', 'picture', 'video']],
        ['view', ['fullscreen', 'codeview', 'help']]
      ],
    placeholder: 'Escreva aqui o conteúdo desta publicação'
}


$(document).ready(function(){
    $('#post-content-editor').append($('#post_content').val())
    $('#post-content-editor').summernote(summernoteConfig);

    $('#blog-edit').click(function() {
        summernoteConfig['focus'] = true;
        $('#post-content-editor').summernote(summernoteConfig);
    });

    $('#blog-preview').click(function() {
        var aHTML = $('#post-content-editor').summernote('code');
        $('#post_content').val(aHTML);
        $('#post-content-editor').summernote('destroy');
    });

});