lp(L):-
    L = [F0,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17],
    fd_domain(L,0,1),
    %Mandatory
    F0 #= 1,
    F1 #= F0,
    F2 #= F0,
    F4 #= F0,
    F8 #= F2,
    F9 #= F2,
    F12 #= F11,
    F17 #= F4,
    %Optional
    F4 #>= F15,
    F4 #>= F16,
    F11 #>= F13,
    F11 #>= F14,
    F0 #>= F3,
    F0 #>= F11,
    F2 #>= F10,
    %Requires
    F10 #==> F11,
    F11 #==> F3,
    %Excludes
    %Group cardinality
    F1 #=< F5 + F6 + F7
    %Verification consatraints
    %F2 + F1 #=< 1,
    fd_labeling(L).