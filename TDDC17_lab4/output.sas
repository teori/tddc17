begin_version
3
end_version
begin_metric
0
end_metric
5
begin_variable
var0
-1
3
Atom in(box, room-1)
Atom in(box, room-2)
Atom in(box, room-3)
end_variable
begin_variable
var1
-1
3
Atom in(robot, room-1)
Atom in(robot, room-2)
Atom in(robot, room-3)
end_variable
begin_variable
var2
-1
2
Atom lights-on(room-1)
NegatedAtom lights-on(room-1)
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
Atom lights-on(room-3)
NegatedAtom lights-on(room-3)
end_variable
2
begin_mutex_group
3
0 0
0 1
0 2
end_mutex_group
begin_mutex_group
3
1 0
1 1
1 2
end_mutex_group
begin_state
0
1
1
1
1
end_state
begin_goal
3
2 0
3 0
4 0
end_goal
11
begin_operator
move robot room-1 room-2
0
1
0 1 0 1
0
end_operator
begin_operator
move robot room-2 room-1
0
1
0 1 1 0
0
end_operator
begin_operator
move robot room-2 room-3
0
1
0 1 1 2
0
end_operator
begin_operator
move robot room-3 room-2
0
1
0 1 2 1
0
end_operator
begin_operator
move-box box robot room-1 room-2
0
2
0 0 0 1
0 1 0 1
0
end_operator
begin_operator
move-box box robot room-2 room-1
0
2
0 0 1 0
0 1 1 0
0
end_operator
begin_operator
move-box box robot room-2 room-3
0
2
0 0 1 2
0 1 1 2
0
end_operator
begin_operator
move-box box robot room-3 room-2
0
2
0 0 2 1
0 1 2 1
0
end_operator
begin_operator
turn-on-light box robot switch-1 room-1
2
0 0
1 0
1
0 2 -1 0
0
end_operator
begin_operator
turn-on-light box robot switch-2 room-2
2
0 1
1 1
1
0 3 -1 0
0
end_operator
begin_operator
turn-on-light box robot switch-3 room-3
2
0 2
1 2
1
0 4 -1 0
0
end_operator
0
