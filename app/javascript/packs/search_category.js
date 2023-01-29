$(function () {
  $('#flow_kind').on('change', function () {
    kind = $(this).val()
    $.ajax({
      type: 'GET',
      url: '/categories/search',
      data: { kind: kind },
      dataType: 'json'
    })
      .done(function (categories) {
        $('#flow_category_id').empty()
        $('#flow_category_id').append(`<option value="">選択してください</option>`)
        for (let category of categories) {
          $('#flow_category_id').append
            (`<option value="${category["id"]}">${category["name"]}</option>`)
        }
      })
  })
});
