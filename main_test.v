module main

fn test_info() {
	mut sut := ResponseService{}
	response := sut.get_info()
	assert response.body == 'vlang'
}

fn test_health() {
	mut sut := ResponseService{}
	response := sut.get_health()
	assert response.body == 'OK'
}
