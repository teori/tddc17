begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
3
Atom in(robot, room-1)
Atom in(robot, room-2)
Atom in(robot, room-3)
end_variable
begin_variable
var1
-1
3
Atom in(box, room-1)
Atom in(box, room-2)
Atom in(box, room-3)
end_variable
begin_variable
var2
-1
2
Atom lights-on(room-3)
NegatedAtom lights-on(room-3)
end_variable
begin_variable
var3
-1
2
Atom lights-on(room-2)
NegatedAtom lights-on(room-2)
end_variable
begin_variable
var4
-1
2
Atom lights-on(room-1)
NegatedAtom lights-on(room-1)
end_variable
begin_variable
var5
-1
2
Atom empty(gripper-1)
NegatedAtom empty(gripper-1)
end_variable
begin_variable
var6
-1
2
Atom empty(gripper-2)
NegatedAtom empty(gripper-2)
end_variable
begin_variable
var7
-1
5
Atom holding(gripper-1, ball-1)
Atom holding(gripper-2, ball-1)
Atom in(ball-1, room-1)
Atom in(ball-1, room-2)
Atom in(ball-1, room-3)
end_variable
begin_variable
var8
-1
5
Atom holding(gripper-1, ball-2)
Atom holding(gripper-2, ball-2)
Atom in(ball-2, room-1)
Atom in(ball-2, room-2)
Atom in(ball-2, room-3)
end_variable
begin_variable
var9
-1
5
Atom holding(gripper-1, ball-3)
Atom holding(gripper-2, ball-3)
Atom in(ball-3, room-1)
Atom in(ball-3, room-2)
Atom in(ball-3, room-3)
end_variable
2
begin_mutex_group
4
5 0
7 0
8 0
9 0
end_mutex_group
begin_mutex_group
4
6 0
7 1
8 1
9 1
end_mutex_group
begin_state
1
0
1
1
1
0
0
3
4
4
end_state
begin_goal
4
1 0
7 2
8 2
9 2
end_goal
50
begin_operator
drop robot gripper-1 room-1 ball-1
1
0 0
2
0 5 -1 0
0 7 0 2
1
end_operator
begin_operator
drop robot gripper-1 room-1 ball-2
1
0 0
2
0 5 -1 0
0 8 0 2
1
end_operator
begin_operator
drop robot gripper-1 room-1 ball-3
1
0 0
2
0 5 -1 0
0 9 0 2
1
end_operator
begin_operator
drop robot gripper-1 room-2 ball-1
1
0 1
2
0 5 -1 0
0 7 0 3
1
end_operator
begin_operator
drop robot gripper-1 room-2 ball-2
1
0 1
2
0 5 -1 0
0 8 0 3
1
end_operator
begin_operator
drop robot gripper-1 room-2 ball-3
1
0 1
2
0 5 -1 0
0 9 0 3
1
end_operator
begin_operator
drop robot gripper-1 room-3 ball-1
1
0 2
2
0 5 -1 0
0 7 0 4
1
end_operator
begin_operator
drop robot gripper-1 room-3 ball-2
1
0 2
2
0 5 -1 0
0 8 0 4
1
end_operator
begin_operator
drop robot gripper-1 room-3 ball-3
1
0 2
2
0 5 -1 0
0 9 0 4
1
end_operator
begin_operator
drop robot gripper-2 room-1 ball-1
1
0 0
2
0 6 -1 0
0 7 1 2
1
end_operator
begin_operator
drop robot gripper-2 room-1 ball-2
1
0 0
2
0 6 -1 0
0 8 1 2
1
end_operator
begin_operator
drop robot gripper-2 room-1 ball-3
1
0 0
2
0 6 -1 0
0 9 1 2
1
end_operator
begin_operator
drop robot gripper-2 room-2 ball-1
1
0 1
2
0 6 -1 0
0 7 1 3
1
end_operator
begin_operator
drop robot gripper-2 room-2 ball-2
1
0 1
2
0 6 -1 0
0 8 1 3
1
end_operator
begin_operator
drop robot gripper-2 room-2 ball-3
1
0 1
2
0 6 -1 0
0 9 1 3
1
end_operator
begin_operator
drop robot gripper-2 room-3 ball-1
1
0 2
2
0 6 -1 0
0 7 1 4
1
end_operator
begin_operator
drop robot gripper-2 room-3 ball-2
1
0 2
2
0 6 -1 0
0 8 1 4
1
end_operator
begin_operator
drop robot gripper-2 room-3 ball-3
1
0 2
2
0 6 -1 0
0 9 1 4
1
end_operator
begin_operator
move robot room-1 room-2
0
1
0 0 0 1
1
end_operator
begin_operator
move robot room-2 room-1
0
1
0 0 1 0
1
end_operator
begin_operator
move robot room-2 room-3
0
1
0 0 1 2
1
end_operator
begin_operator
move robot room-3 room-2
0
1
0 0 2 1
1
end_operator
begin_operator
move-box box robot room-1 room-2
0
2
0 1 0 1
0 0 0 1
1
end_operator
begin_operator
move-box box robot room-2 room-1
0
2
0 1 1 0
0 0 1 0
1
end_operator
begin_operator
move-box box robot room-2 room-3
0
2
0 1 1 2
0 0 1 2
1
end_operator
begin_operator
move-box box robot room-3 room-2
0
2
0 1 2 1
0 0 2 1
1
end_operator
begin_operator
pick-up robot gripper-1 room-1 ball-1
2
0 0
4 0
2
0 5 0 1
0 7 2 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-1 ball-2
2
0 0
4 0
2
0 5 0 1
0 8 2 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-1 ball-3
2
0 0
4 0
2
0 5 0 1
0 9 2 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-2 ball-1
2
0 1
3 0
2
0 5 0 1
0 7 3 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-2 ball-2
2
0 1
3 0
2
0 5 0 1
0 8 3 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-2 ball-3
2
0 1
3 0
2
0 5 0 1
0 9 3 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-3 ball-1
2
0 2
2 0
2
0 5 0 1
0 7 4 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-3 ball-2
2
0 2
2 0
2
0 5 0 1
0 8 4 0
1
end_operator
begin_operator
pick-up robot gripper-1 room-3 ball-3
2
0 2
2 0
2
0 5 0 1
0 9 4 0
1
end_operator
begin_operator
pick-up robot gripper-2 room-1 ball-1
2
0 0
4 0
2
0 6 0 1
0 7 2 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-1 ball-2
2
0 0
4 0
2
0 6 0 1
0 8 2 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-1 ball-3
2
0 0
4 0
2
0 6 0 1
0 9 2 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-2 ball-1
2
0 1
3 0
2
0 6 0 1
0 7 3 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-2 ball-2
2
0 1
3 0
2
0 6 0 1
0 8 3 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-2 ball-3
2
0 1
3 0
2
0 6 0 1
0 9 3 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-3 ball-1
2
0 2
2 0
2
0 6 0 1
0 7 4 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-3 ball-2
2
0 2
2 0
2
0 6 0 1
0 8 4 1
1
end_operator
begin_operator
pick-up robot gripper-2 room-3 ball-3
2
0 2
2 0
2
0 6 0 1
0 9 4 1
1
end_operator
begin_operator
turn-off-light box robot switch-1 room-1
2
1 0
0 0
1
0 4 -1 1
1
end_operator
begin_operator
turn-off-light box robot switch-2 room-2
2
1 1
0 1
1
0 3 -1 1
1
end_operator
begin_operator
turn-off-light box robot switch-3 room-3
2
1 2
0 2
1
0 2 -1 1
1
end_operator
begin_operator
turn-on-light box robot switch-1 room-1
2
1 0
0 0
1
0 4 -1 0
1
end_operator
begin_operator
turn-on-light box robot switch-2 room-2
2
1 1
0 1
1
0 3 -1 0
1
end_operator
begin_operator
turn-on-light box robot switch-3 room-3
2
1 2
0 2
1
0 2 -1 0
1
end_operator
0