module main

import vweb

const (
	port = 8080
)

struct App {
pub mut:
	vweb vweb.Context
}

fn main() {
	println('running web app')
	vweb.run<App>(port)
}

pub fn (app App) init_once() {
}

pub fn (app App) init() {
}

pub fn (app App) index() {
}

['/healthcheck']
fn (mut app App) health_check() vweb.Result {
	return app.vweb.text('OK')
}

['/info']
fn (mut app App) info() vweb.Result {
	return app.vweb.text('vlang')
}
