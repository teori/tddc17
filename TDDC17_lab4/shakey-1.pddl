;; Shakey (problem)

(define (problem shakey-1)
	(:domain shakey)
	(:objects room-1 room-2 room-3
		box robot switch-1 switch-2
		switch-3	
	)

	(:init (adj room-1 room-2)
		(adj room-2 room-1)
		(adj room-2 room-3)
		(adj room-3 room-2)
		(wide-door room-1 room-2)
		(wide-door room-2 room-1)		
		(wide-door room-2 room-3)
		(wide-door room-3 room-2)
		(in box room-1)
		(is-box box)
		(in robot room-2)
		(is-robot robot)
		(in switch-1 room-1)
		(is-switch switch-1)
		(in switch-2 room-2)
		(is-switch switch-2)
		(in switch-3 room-3)
		(is-switch switch-3)
		(not (lights-on room-1))
		(not (lights-on room-2))
		(not (lights-on room-3))
	)

	(:goal (and (lights-on room-1) (lights-on room-2) (lights-on room-3))
	)
				
)