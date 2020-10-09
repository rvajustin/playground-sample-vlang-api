module main

import vweb
import http_ext

const (
	port = 8080
)

struct HttpResponse {
pub mut:
	body   string
	status http_ext.HttpStatusCode
}

struct ResponseService {
}

pub fn (mut rs ResponseService) get_health() HttpResponse {
	return HttpResponse{
		body: 'OK'
		status: http_ext.get_http_status_code_from_string('200')
	}
}

pub fn (mut rs ResponseService) get_info() HttpResponse {
	return HttpResponse{
		body: 'vlang'
		status: http_ext.get_http_status_code_from_string('200')
	}
}

struct App {
pub mut:
	response_service ResponseService
	vweb             vweb.Context
}

fn main() {
	mut app := App{}
	vweb.run_app<App>(mut app, port)
}

pub fn (app App) init_once() {
}

pub fn (app App) init() {
}

pub fn (app App) index() {
}

fn respond(mut app App, response HttpResponse) vweb.Result {
	app.vweb.set_status(response.status.int(), response.status.str())
	return app.vweb.text(response.body)
}

['/healthcheck']
fn (mut app App) health_check() vweb.Result {
	response := app.response_service.get_health()
	return respond(mut app, response)
}

['/info']
fn (mut app App) info() vweb.Result {
	response := app.response_service.get_info()
	return respond(mut app, response)
}
