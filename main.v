module main

import nedpals.vex.ctx
import nedpals.vex.server

fn main() {
	mut s := server.new()
	s.use(fn (req ctx.Req, res ctx.Resp) {
		println('$req.method $req.path')
	})
	s.get('/healthcheck', health_check)
	s.get('/info', info)
	s.serve(8080)
}

fn health_check(mut req ctx.Req, mut res ctx.Resp) {
	res.send('OK', 200)
}

fn info(mut req ctx.Req, mut res ctx.Resp) {
	res.send('vlang', 200)
}
