package policies.long.path.withParams.__param1

# default to a "closed" system,
# only grant access when explicitly granted

default allowed = false

default visible = false

default enabled = false

allowed {
	some x
	input.user.attributes.roles[x] = "admin"
}

allowed {
	input.resource.param1 = "foo"
}

enabled {
	visible
}

visible {
	input.app == "web-console"
}
