module http_ext

pub enum HttpStatusCode {
	unkown
	cont
	switching_protocols
	processing
	checkpoint_draft
	ok
	created
	accepted
	non_authoritative_information
	no_content
	reset_content
	partial_content
	multi_status
	already_reported
	im_used
	multiple_choices
	moved_permanently
	found
	see_other
	not_modified
	use_proxy
	switch_proxy
	temporary_redirect
	permanent_redirect
	bad_request
	unauthorized
	payment_required
	forbidden
	not_found
	method_not_allowed
	not_acceptable
	proxy_authentication_required
	request_timeout
	conflict
	gone
	length_required
	precondition_failed
	request_entity_too_large
	request_uri_too_long
	unsupported_media_type
	requested_range_not_satisfiable
	expectation_failed
	im_a_teapot
	unprocessable_entity
	locked
	failed_dependency
	unordered_collection
	upgrade_required
	precondition_required
	too_many_requests
	request_header_fields_too_large
	no_response
	unavailable_for_legal_reasons
	client_closed_request
	internal_server_error
	not_implemented
	bad_gateway
	service_unavailable
	gateway_timeout
	http_version_not_supported
	variant_also_negotiates
	insufficient_storage
	loop_detected
	bandwidth_limit_exceeded
	not_extended
	network_authentication_required
	network_read_timeout_error
	network_connect_timeout_error
}

pub fn get_http_status_code_from_int(code int) HttpStatusCode {
	return get_http_status_code_from_string(code.str())
}

pub fn get_http_status_code_from_string(code string) HttpStatusCode {
	return match code {
		'100' { HttpStatusCode.cont }
		'101' { HttpStatusCode.switching_protocols }
		'102' { HttpStatusCode.processing }
		'103' { HttpStatusCode.checkpoint_draft }
		'200' { HttpStatusCode.ok }
		'201' { HttpStatusCode.created }
		'202' { HttpStatusCode.accepted }
		'203' { HttpStatusCode.non_authoritative_information }
		'204' { HttpStatusCode.no_content }
		'205' { HttpStatusCode.reset_content }
		'206' { HttpStatusCode.partial_content }
		'207' { HttpStatusCode.multi_status }
		'208' { HttpStatusCode.already_reported }
		'226' { HttpStatusCode.im_used }
		'300' { HttpStatusCode.multiple_choices }
		'301' { HttpStatusCode.moved_permanently }
		'302' { HttpStatusCode.found }
		'303' { HttpStatusCode.see_other }
		'304' { HttpStatusCode.not_modified }
		'305' { HttpStatusCode.use_proxy }
		'306' { HttpStatusCode.switch_proxy }
		'307' { HttpStatusCode.temporary_redirect }
		'308' { HttpStatusCode.permanent_redirect }
		'400' { HttpStatusCode.bad_request }
		'401' { HttpStatusCode.unauthorized }
		'402' { HttpStatusCode.payment_required }
		'403' { HttpStatusCode.forbidden }
		'404' { HttpStatusCode.not_found }
		'405' { HttpStatusCode.method_not_allowed }
		'406' { HttpStatusCode.not_acceptable }
		'407' { HttpStatusCode.proxy_authentication_required }
		'408' { HttpStatusCode.request_timeout }
		'409' { HttpStatusCode.conflict }
		'410' { HttpStatusCode.gone }
		'411' { HttpStatusCode.length_required }
		'412' { HttpStatusCode.precondition_failed }
		'413' { HttpStatusCode.request_entity_too_large }
		'414' { HttpStatusCode.request_uri_too_long }
		'415' { HttpStatusCode.unsupported_media_type }
		'416' { HttpStatusCode.requested_range_not_satisfiable }
		'417' { HttpStatusCode.expectation_failed }
		'418' { HttpStatusCode.im_a_teapot }
		'422' { HttpStatusCode.unprocessable_entity }
		'423' { HttpStatusCode.locked }
		'424' { HttpStatusCode.failed_dependency }
		'425' { HttpStatusCode.unordered_collection }
		'426' { HttpStatusCode.upgrade_required }
		'428' { HttpStatusCode.precondition_required }
		'429' { HttpStatusCode.too_many_requests }
		'431' { HttpStatusCode.request_header_fields_too_large }
		'444' { HttpStatusCode.no_response }
		'451' { HttpStatusCode.unavailable_for_legal_reasons }
		'499' { HttpStatusCode.client_closed_request }
		'500' { HttpStatusCode.internal_server_error }
		'501' { HttpStatusCode.not_implemented }
		'502' { HttpStatusCode.bad_gateway }
		'503' { HttpStatusCode.service_unavailable }
		'504' { HttpStatusCode.gateway_timeout }
		'505' { HttpStatusCode.http_version_not_supported }
		'506' { HttpStatusCode.variant_also_negotiates }
		'507' { HttpStatusCode.insufficient_storage }
		'508' { HttpStatusCode.loop_detected }
		'509' { HttpStatusCode.bandwidth_limit_exceeded }
		'510' { HttpStatusCode.not_extended }
		'511' { HttpStatusCode.network_authentication_required }
		'598' { HttpStatusCode.network_read_timeout_error }
		'599' { HttpStatusCode.network_connect_timeout_error }
		else { HttpStatusCode.unkown }
	}
}

pub fn (code HttpStatusCode) str() string {
	return match code {
		.cont { 'Continue' }
		.switching_protocols { 'Switching Protocols' }
		.processing { 'Processing' }
		.checkpoint_draft { 'Checkpoint draft' }
		.ok { 'OK' }
		.created { 'Created' }
		.accepted { 'Accepted' }
		.non_authoritative_information { 'Non Authoritative Information' }
		.no_content { 'No Content' }
		.reset_content { 'Reset Content' }
		.partial_content { 'Partial Content' }
		.multi_status { 'Multi Status' }
		.already_reported { 'Already Reported' }
		.im_used { 'IM Used' }
		.multiple_choices { 'Multiple Choices' }
		.moved_permanently { 'Moved Permanently' }
		.found { 'Found' }
		.see_other { 'See Other' }
		.not_modified { 'Not Modified' }
		.use_proxy { 'Use Proxy' }
		.switch_proxy { 'Switch Proxy' }
		.temporary_redirect { 'Temporary Redirect' }
		.permanent_redirect { 'Permanent Redirect' }
		.bad_request { 'Bad Request' }
		.unauthorized { 'Unauthorized' }
		.payment_required { 'Payment Required' }
		.forbidden { 'Forbidden' }
		.not_found { 'Not Found' }
		.method_not_allowed { 'Method Not Allowed' }
		.not_acceptable { 'Not Acceptable' }
		.proxy_authentication_required { 'Proxy Authentication Required' }
		.request_timeout { 'Request Timeout' }
		.conflict { 'Conflict' }
		.gone { 'Gone' }
		.length_required { 'Length Required' }
		.precondition_failed { 'Precondition Failed' }
		.request_entity_too_large { 'Request Entity Too Large' }
		.request_uri_too_long { 'Request URI Too Long' }
		.unsupported_media_type { 'Unsupported Media Type' }
		.requested_range_not_satisfiable { 'Requested Range Not Satisfiable' }
		.expectation_failed { 'Expectation Failed' }
		.im_a_teapot { 'Im a teapot' }
		.unprocessable_entity { 'Unprocessable Entity' }
		.locked { 'Locked' }
		.failed_dependency { 'Failed Dependency' }
		.unordered_collection { 'Unordered Collection' }
		.upgrade_required { 'Upgrade Required' }
		.precondition_required { 'Precondition Required' }
		.too_many_requests { 'Too Many Requests' }
		.request_header_fields_too_large { 'Request Header Fields Too Large' }
		.no_response { 'No Response' }
		.unavailable_for_legal_reasons { 'Unavailable For Legal Reasons' }
		.client_closed_request { 'Client Closed Request' }
		.internal_server_error { 'Internal Server Error' }
		.not_implemented { 'Not Implem­ented' }
		.bad_gateway { 'Bad Gateway' }
		.service_unavailable { 'Service Unavailable' }
		.gateway_timeout { 'Gateway Timeout' }
		.http_version_not_supported { 'HTTP Version Not Supported' }
		.variant_also_negotiates { 'Variant Also Negotiates' }
		.insufficient_storage { 'Insufficient Storage' }
		.loop_detected { 'Loop Detected' }
		.bandwidth_limit_exceeded { 'Bandwidth Limit Exceeded' }
		.not_extended { 'Not Extended' }
		.network_authentication_required { 'Network Authentication Required' }
		.network_read_timeout_error { 'Network read timeout error' }
		.network_connect_timeout_error { 'Network connect timeout error' }
		else { 'Unknown' }
	}
}

pub fn (code HttpStatusCode) int() int {
	return match code {
		.cont { 100 }
		.switching_protocols { 101 }
		.processing { 102 }
		.checkpoint_draft { 103 }
		.ok { 200 }
		.created { 201 }
		.accepted { 202 }
		.non_authoritative_information { 203 }
		.no_content { 204 }
		.reset_content { 205 }
		.partial_content { 206 }
		.multi_status { 207 }
		.already_reported { 208 }
		.im_used { 226 }
		.multiple_choices { 300 }
		.moved_permanently { 301 }
		.found { 302 }
		.see_other { 303 }
		.not_modified { 304 }
		.use_proxy { 305 }
		.switch_proxy { 306 }
		.temporary_redirect { 307 }
		.permanent_redirect { 308 }
		.bad_request { 400 }
		.unauthorized { 401 }
		.payment_required { 402 }
		.forbidden { 403 }
		.not_found { 404 }
		.method_not_allowed { 405 }
		.not_acceptable { 406 }
		.proxy_authentication_required { 407 }
		.request_timeout { 408 }
		.conflict { 409 }
		.gone { 410 }
		.length_required { 411 }
		.precondition_failed { 412 }
		.request_entity_too_large { 413 }
		.request_uri_too_long { 414 }
		.unsupported_media_type { 415 }
		.requested_range_not_satisfiable { 416 }
		.expectation_failed { 417 }
		.im_a_teapot { 418 }
		.unprocessable_entity { 422 }
		.locked { 423 }
		.failed_dependency { 424 }
		.unordered_collection { 425 }
		.upgrade_required { 426 }
		.precondition_required { 428 }
		.too_many_requests { 429 }
		.request_header_fields_too_large { 431 }
		.no_response { 444 }
		.unavailable_for_legal_reasons { 451 }
		.client_closed_request { 499 }
		.internal_server_error { 500 }
		.not_implemented { 501 }
		.bad_gateway { 502 }
		.service_unavailable { 503 }
		.gateway_timeout { 504 }
		.http_version_not_supported { 505 }
		.variant_also_negotiates { 506 }
		.insufficient_storage { 507 }
		.loop_detected { 508 }
		.bandwidth_limit_exceeded { 509 }
		.not_extended { 510 }
		.network_authentication_required { 511 }
		.network_read_timeout_error { 598 }
		.network_connect_timeout_error { 599 }
		else { 0 }
	}
}

pub fn (code HttpStatusCode) is_error() bool {
	number := code.int()
	return number >= 400 || number < 600
}

pub fn (code HttpStatusCode) is_success() bool {
	number := code.int()
	return number >= 100 || number < 400
}
