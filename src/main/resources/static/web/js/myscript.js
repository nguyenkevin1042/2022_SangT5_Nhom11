/*Select checkin date, checkout date*/
$(function() {
	'use strict';
	var nowTemp = new Date();
	var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

	var checkin = $('#checkin-date-input').datepicker({
		format: 'dd/mm/yyyy',
		onRender: function(date) {
			return date.valueOf() < now.valueOf() ? 'disabled' : '';
		}
	}).on('changeDate', function(ev) {
		if (ev.date.valueOf() > checkout.date.valueOf()) {
			var newDate = new Date(ev.date)
			newDate.setDate(newDate.getDate() + 1);
			checkout.setValue(newDate);
		}
		checkin.hide();
		$('#checkout-date-input')[0].focus();
	}).data('datepicker');

	var checkout = $('#checkout-date-input').datepicker({
		format: 'dd/mm/yyyy',
		onRender: function(date) {
			return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
		}
	}).on('changeDate', function() {
		checkout.hide();
		$('#guests-input')[0].focus();
	}).data('datepicker');
});


/*slide picture*/
$(function() {
	$(".room-pic-slider").owlCarousel(
		{
			loop: true,
			margin: 0,
			nav: true,
			items: 1,
			dots: false,
			navText: ['<i class="lnr lnr-arrow-left"></i>',
				'<i class="lnr lnr-arrow-right"></i>'],
			smartSpeed: 800,
			autoplay: false
		});
});

/*increase decrease number of rooms*/
function increaseValue(Object1, Object2) {
	var value = parseInt(document.getElementById('rooms' + Object1).value, 10);
	value = isNaN(value) ? 0 : value;
	value++;
	value > Object2 ? value = Object2 : '';
	document.getElementById('rooms' + Object1).value = value;

	var res = '';
	var quantity = Object2 - value;

	if (quantity == 0) {
		res = 'There are no room left';
	} else if (quantity == 1) {
		res = 'There are 1 room left';
	} else {
		res = 'There are ' + quantity + ' rooms left';
	}
	document.getElementById('quantity-room' + Object1).innerHTML = res;
}

function decreaseValue(Object1, Object2) {
	var value = parseInt(document.getElementById('rooms' + Object1).value, 10);
	value = isNaN(value) ? 0 : value;
	value < 1 ? value = 1 : '';
	value--;
	document.getElementById('rooms' + Object1).value = value;

	var res = '';
	var quantity = Object2 - value;

	if (quantity == 1) {
		res = 'There are 1 room left'
	} else {
		res = 'There are ' + quantity + ' rooms left';
	}
	document.getElementById('quantity-room' + Object1).innerHTML = res;
}

/*check full name from input*/
function checkName(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/check-name-input?name=" + text;
	var res = "";
	$.ajax({
		url: url,
		success: function(data) {
			if (data == true) {
				res = 'Name is valid';
				document.getElementById('name-error').style.color = 'green';
			} else {
				res = 'Name is only valid with uppercase and symbols(.-)';
				document.getElementById('name-error').style.color = 'red';
			}
			document.getElementById('name-error').innerHTML = res;
		}
	});
}

/*check email from input*/
function checkEmail(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/check-email-input?email=" + text;
	var res = "";
	$.ajax({
		url: url,
		success: function(data) {
			if (data == true) {
				res = 'Email is valid';
				$('#email-error').css('color', 'green');
			} else {
				res = 'Email is not correct.';
				$('#email-error').css('color', 'red');
			}
			$('#email-error').html(res);
		}
	});
}

/*check phone from input*/
function checkPhone(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/check-phone-input?phone=" + text;
	var res = "";
	$.ajax({
		url: url,
		success: function(data) {
			if (data == true) {
				res = 'Phone is valid';
				$('#phone-error').css('color', 'green');
			} else {
				res = 'Phone must not have any characters, and must be from 7 to 11 digits.';
				$('#phone-error').css('color', 'red');
			}
			$('#phone-error').html(res);
		}
	});
}


/*when customer returned room and completely paid the cost*/
function completeBill(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/paid-bill?billId=" + text;
	$.ajax({
		url: url,
		success: function(data) {

			/*$('#paid').prop('disabled', true);*/
			$('#status').html(data);
		}
	});
}

/*search bill by email*/
function searchBill(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/search-by-customer-email?keyword=" + text;
	var res = "";
	$.ajax({
		url: url,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				res += ' <tr>\n' 
				+ '<td>' + data[i].customer.fullName + '</td>\n'  
				+ '<td>' + data[i].checkinDate+ '</td>\n'  
				+ '<td>' + data[i].checkoutDate + '</td>\n'
				+ '<td>' + data[i].numberOfNights + '</td>\n'
				+ '<td>' + data[i].numberOfRooms + '</td>\n'
				+ '<td>' + data[i].totalPrice + '</td>\n'
				+ '<td id="billStatus">' + data[i].status + '</td>\n'
				+ '<td><button id="cancelBill" value="'+data[i].billCode+'" onclick="cancelBill(this)">Huy</button>'
				+ '<button value="'+data[i].billCode+'" onclick="toEdittingBillPage(this)">Edit</button></td>\n'
				+ '</tr>'
			}
			
			$('#billList').html(res);
		}
	});
}

/*when customer click Cancel button*/
function cancelBill(Object) {
	var text = Object.value;
	var url = "http://localhost:8080/cancel-bill?billCode=" + text;
	$.ajax({
		url: url,
		success: function(data) {		
			$('#billStatus').html(data.status);
		}
		});
}


/redirect to editting bill page*/
function toEdittingBillPage(Object){
	var billCode = Object.value;
	window.location.href = "/check-bill/edit-bill?billCode="+billCode;

}



