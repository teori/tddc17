;; Shakey (problem)

(define (problem shakey-1)
	(:domain shakey)
	(:objects
		room-1 room-2 room-3       - location-t
		box                        - box-t 
		robot                      - robot-t
		switch-1 switch-2 switch-3 - switch-t
		gripper-1 gripper-2        - gripper-t
		ball-1 ball-2 ball-3       - object-t
	)

	(:init 
		(adj room-1 room-2)
		(adj room-2 room-1)
		(adj room-2 room-3)
		(adj room-3 room-2)

		(wide-door room-1 room-2)
		(wide-door room-2 room-1)		
		(wide-door room-2 room-3)
		(wide-door room-3 room-2)

		(in box room-1)

		(in ball-1 room-2)
		(in ball-2 room-3)
		(in ball-3 room-3)

		(in switch-1 room-1)
		(in switch-2 room-2)
		(in switch-3 room-3)
		(not (lights-on room-1))
		(not (lights-on room-2))
		(not (lights-on room-3))

		(in robot room-2)
		(empty gripper-1)
		(empty gripper-2)
	)

	(:goal (and (in ball-1 room-1) (in ball-2 room-1) (in ball-3 room-1) (in box room-1))
	)
				
)
