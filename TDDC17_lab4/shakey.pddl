;; Shakey world (domain)

(define (domain shakey)
	(:requirements :strips)
	(:predicates
		(in ?what ?where)
		(adj ?r-1 ?r-2)
		(is-robot ?what)
		(is-switch ?what)
		(is-box ?what)
		(wide-door ?r-1 ?r-2)
		(lights-on ?r)
	)

	(:action move
		:parameters (?who ?from ?to)
		:precondition (and (is-robot ?who)
				    (in ?who ?from)
				    (adj ?from ?to)
				)
		:effect (and (not (in ?who ?from)) (in ?who ?to))
	)

	(:action move-box
		:parameters (?box ?robot ?from ?to)
		:precondition (and (is-robot ?robot)
				   (is-box ?box)
				   (in ?robot ?from)
				   (in ?box ?from)
				   (adj ?from ?to)
				   (wide-door ?from ?to)
			      )
		:effect (and (not (in ?robot ?from)) (in ?robot ?to)
			     (not (in ?box ?from)) (in ?box ?to)
			)
	)

	(:action turn-on-light
		:parameters (?box ?robot ?switch ?room)
		:precondition (and (is-robot ?robot)
				   (is-box ?box)
				   (is-switch ?switch)
				   (in ?robot ?room)
				   (in ?box ?room)
				   (in ?switch ?room)
			      )
		:effect (lights-on ?room)
	)
)
