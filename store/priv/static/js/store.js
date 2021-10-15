(function($) {
	$('table#items a').click(function() {
		window.alert("You purchased: " + $(this).attr('data-name') + ".");
		$('tr[data-name="' + $(this).attr('data-name') + '"]').remove();
	})

	$('button[name="Add"]').click(function() {
		item_name = $('input[name="item"]').val()
		item_price = $('input[name="price"]').val()

		params = {
			item_name: item_name,
			item_price: item_price
		};

		$.get('/store/new?' + $.param(params)).fail(function() {
			window.alert('Something went wrong. Dial 911.');
		}).done(function() {
			window.alert("You added " + item_name + " for $" + item_price + ".");

			$('input').each(function() {
				$(this).val('');
			});

			location.reload();
		});
		
	});
})(jQuery);