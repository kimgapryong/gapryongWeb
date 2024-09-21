
function form_check_addProduct() {
	let productId = document.getElementById("addProduct");
	let gameName = document.getElementById("gameName");
	let programer = document.getElementById("programerName");
	let genre = document.getElementById("genre");
	let back = document.getElementById("background");

	if (!(productId.value)) {
		alert("게임 아이디를 입력해주세요");
		productId.focus();
		return false;
	}
	if (!(gameName.value)) {
		alert("게임 이름을 입력해주세요");
		gameName.focus();
		return false;
	}
	if (!(programer.value)) {
		alert("프로그래머 이름을 입력해주세요");
		programer.focus();
		return false;
	}
	if (!(genre.value)) {
		alert("게임으 장르를 입력해주세요");
		genre.focus();
		return false;
	}
	if (!(back.value)) {
		alert("게임의 배경을 넣어주세요");
		back.focus();
		return false;
	}
	document.registerNewProduct.submit();
}