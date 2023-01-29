$(function () {
  $('input[type=radio]').on('change', function () {
    kind = $(this).val()
    $.ajax({
      type: 'GET',
      url: '/flows/change_flow',
      data: { kind: kind },
      dataType: 'json'
    })
      .done(function (flows) {
        $('.flows').empty()
        for (let flow of flows) {
          $('.flows').append
            (`<p>
              ${flow["category"]["name"]}
              ${flow["money"]}円
              ${flow["memo"]}
              ${flow["date"]}
            </p>`)
        }
      })
  })
});
