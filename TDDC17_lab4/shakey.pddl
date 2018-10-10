;; Shakey world (domain)
;; Assumes that there is only one robot and that all adjacent rooms have a (narrow) door between them.

(define (domain shakey)
	(:requirements :strips :adl :typing)
	(:types 
		location-t ; rooms
		robot-t    ; shakey
		object-t   ; small objects
		box-t      ; boxes
		gripper-t  ; grippers
		switch-t   ; light switches
	)
	(:predicates
		(in ?what ?where)
		(adj ?r-1 ?r-2 - location-t)
		(holding ?gripper - gripper-t ?what - object-t)
		(wide-door ?r-1 ?r-2 - location-t)
		(lights-on ?r - location-t)
		(empty ?gripper - gripper-t)
	)

	(:action move
		:parameters (?who - robot-t ?from ?to - location-t)
		:precondition (and (in ?who ?from)
				   (adj ?from ?to)
				)
		:effect (and (not (in ?who ?from)) (in ?who ?to))
	)

	(:action move-box
		:parameters (?box - box-t ?robot - robot-t ?from ?to - location-t)
		:precondition (and (in ?robot ?from)
				   (in ?box ?from)
				   (adj ?from ?to)
				   (wide-door ?from ?to)
			      )
		:effect (and (not (in ?robot ?from)) (in ?robot ?to)
			     (not (in ?box ?from)) (in ?box ?to)
			)
	)

	(:action turn-on-light
		:parameters (?box - box-t ?robot - robot-t ?switch - switch-t ?room - location-t)
		:precondition (and (in ?robot ?room)
				   (in ?box ?room)
				   (in ?switch ?room)
			      )
		:effect (lights-on ?room)
	)

	(:action turn-off-light
		:parameters (?box - box-t ?robot - robot-t ?switch - switch-t ?room - location-t)
		:precondition (and (in ?robot ?room)
				   (in ?box ?room)
				   (in ?switch ?room)
			      )
		:effect (not (lights-on ?room))
	)

	(:action pick-up
		:parameters (?robot - robot-t ?gripper - gripper-t ?room - location-t ?obj - object-t)
		:precondition (and (in ?robot ?room)
				   (in ?obj ?room)
				   (lights-on ?room)
				   (empty ?gripper)
				)

		:effect (and (holding ?gripper ?obj) (not (in ?obj ?room)) (not (empty ?gripper)))

	)

	(:action drop
		:parameters (?robot - robot-t ?gripper - gripper-t ?room - location-t ?obj - object-t)
		:precondition (and (holding ?gripper ?obj)
				   (in ?robot ?room)
				)

		:effect (and (not (holding ?gripper ?obj)) (in ?obj ?room) (empty ?gripper))

	)
)

