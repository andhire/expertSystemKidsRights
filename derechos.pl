%Reglas a Preguntar. Respuesta se guarda en memoria.
familia(N) :- 
    nl,
    write(N),
    write(", Tienes familia? s/n:"),
    read(R),
    (   R=s -> 
        assert(tieneFamilia(true)) 
    ; 
        assert(tieneFamilia(false))
    ).

comida(N) :- 
    nl,
    write(N),
    write(", Tienes alimento? s/n:"),
    read(R),
    (   R=s -> 
        assert(tieneComida(true)) 
    ; 
        assert(tieneComida(false))
    ).

casa(N) :- 
    nl,
    write(N),
    write(", Tienes un hogar? s/n:"),
    read(R),
    (   R=s -> 
        assert(tieneCasa(true)) 
    ; 
        assert(tieneCasa(false))
    ).

vivo(N) :-  
    nl,
    write(N),
    write(", Estas vivo? s/n:"),
    read(R),
    (   R=s-> 
        assert(estaVivo(true)) 
    ; 
        assert(estaVivo(false))
    ).

nombre(N) :-  
    nl,
    write(N),
    write(", Tienes Nombre? s/n:"),
    read(R),
    (   R=s -> 
        assert(tieneNombre(true)) 
    ; 
        assert(tieneNombre(false))
    ).

apellidos(N) :-  
    nl,
    write(N),
    write(", Tienes Apellido? s/n:"),
    read(R),
    (   R=s -> 
        assert(tieneApellidos(true)) 
    ; 
        assert(tieneApellidos(false))
    ).

registrado(N) :-  
    nl,
    write(N),
    write(", Estas registrado en el registro civil? s/n:"),
    read(R),
    (   R=s -> 
        assert(estaRegistrado(true))
    ; 
        assert(estaRegistrado(false))
    ).

padres(N) :-  
    nl,
    write(N),
    write(", Tienes padres? s/n:"),
    read(R),
    (   R=s -> 
        assert(tienePadres(true)) 
    ; 
        assert(tienePadres(false))
    ).

discriminanPorSexo(N) :- 
    nl,
    write(N),
    write(", Te discrimina por tu sexo? s/n:"),
    read(R),
    (   R=s -> 
        assert(teDiscriminanPorSexo(true))
    ; 
        assert(teDiscriminanPorSexo(false))
    ).

discriminanPorEtnia(N) :- 
    nl,
    write(N),
    write(", Te discrimina por tu etnia? s/n:"),
    read(R),
    (   R=s -> 
        assert(teDiscriminanPorEtnia(true)) 
    ; 
        assert(teDiscriminanPorEtnia(false))
    ).

discriminanPorIdioma(N) :- 
    nl,
    write(N),
    write(", Te discrimina por tu idioma? s/n:"),
    read(R),
    (   R=s -> 
        assert(teDiscriminanPorIdioma(true)) 
    ; 
        assert(teDiscriminanPorIdioma(false))
    ).
violentanFisicamente(N) :-  
    nl,
    write(N),
    write(", Sufres de algun maltrato fisico? s/n:"),
    read(R),
    (   R=s -> 
        assert(teViolentanFisicamente(true))
    ; 
        assert(teViolentanFisicamente(false))
    ).

violentanPsicologicamente(N) :-  
    nl,
    write(N),
    write(", Sufres de algun maltrato psicologico? s/n:"),
    read(R),
    (   R=s -> 
        assert(teViolentanPsicologicamente(true))
    ; 
        assert(teViolentanPsicologicamente(false))
    ).

escuela(N) :-  
    nl,
    write(N),
    write(", Vas a la escuela? s/n:"),
    read(R),
    (   R=s -> 
        assert(vasEscuela(true)) 
    ; 
        assert(vasEscuela(false))
    ).

trabajo(N) :-  
    nl,
    write(N),
    write(", Trabajas? s/n:"),
    read(R),
    (   R=s -> 
        assert(trabajas(true))
    ; 
        assert(trabajas(false))
    ).

doctor(N) :- 
    nl,
    write(N),
    write(", Tus padres te llevan al doctor cuando te enfermas? s/n:"),
    read(R),
    (   R=s -> 
        assert(vasDoctorCuandoEnfermas(true))
    ; 
        assert(vasDoctorCuandoEnfermas(false))
    ).
hospital(N) :- 
    nl,
    write(N),
    write(", El hospital te atendio, cuando estabas enfermo? s/n:"),
    read(R),
    (   R=s -> 
        assert(teAtendieronHospital(true))
    ; 
        assert(teAtendieronHospital(false))
    ).

discapacidad(N) :- 
    nl,
    write(N),
    write(", Tienes alguans discapacidad? s/n:"),
    read(R),
    (   R=s -> 
        assert(tienesDiscapacidad(true))
    ; 
        assert(tienesDiscapacidad(false))
    ).

servicioPorDiscapacidad(N) :- 
    nl,
    write(N),
    write(", Te negaron algun servicio por tu discapacidad? s/n:"),
    read(R),
    (   R=s -> 
        assert(dieronServicioPorDiscapacidad(true))
    ; 
        assert(dieronServicioPorDiscapacidad(false))
    ).

contenidoSensible(N) :- 
    nl,
    write(N),
    write(", Han divulgado contenido sensible? s/n:"),
    read(R),
    (   R=s -> 
        assert(divulgaronContenidoSensible(true)) 
    ; 
        assert(divulgaronContenidoSensible(false))
    ).

dispositivoElectronicoEnCasa(N) :- 
    nl,
    write(N),
    write(", Tienes algun dispositivo electronico en casa. TV, Radio, Computadora, Internet? s/n:"),
    read(R),
    (   R=s -> 
        assert(cuentasConDispositivoElectronicoEnCasa(true)) 
    ; 
        assert(cuentasConDispositivoElectronicoEnCasa(false))
    ).

%Reglas Extras para consecuencias
divorciados(N):- 
    nl,
    write(N),
    write(", Tus padres son divorciados? s/n:"),
    read(R),
    (   R=s -> 
        assert(papasDivorciados(true))
    ; 
        assert(papasDivorciados(false))
    ).

causaPadres(N):- 
    nl,
    write(N),
    write(", Fue causado por alguno de tus padres? s/n:"),
    read(R),
    (   R=s -> 
        assert(fueCausadoPorPapa(true)) 
    ; 
        assert(fueCausadoPorPapa(false))
    ).

%-----------------------Derechos--------------------------
%Derecho a la vida, a la supervivencia y al desarrollo
derechoVidaSupervivencia1:- 
    tieneComida(A), 
    tieneFamilia(B), 
    tieneCasa(C), 
    (   (A,B,C) -> 
        %Derecho Cumplido
        write("")
    ;
        %Derecho Incumplido
        write("Estan incumpliendo tu derecho a la vida, a la supervivencia y al desarrollo. Debido a:")
    ),
    nl.

derechoVidaSupervivencia2:- 
    estaVivo(A), 
    (   A -> 
        %Derecho Cumplido
        write("")
    ;
        %Derecho Incumplido
        write("Estan incumpliendo tu derecho a la vida, a la supervivencia y al desarrollo")
    ),
    nl.

%Derecho a la identidad
derechoIdentidad:- 
    tieneNombre(A),
    tieneApellidos(B),
    estaRegistrado(C),
    (   (A,B,C)-> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la identidad")
    ),
    nl.

%Derecho a vivir en familia
derechoFamilia:- 
    tienePadres(A),
    (   A -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a vivir en familia")
    ),
    nl.

%Derecho a no ser discriminado
derechoNoDiscriminacion:- 
    teDiscriminanPorSexo(A),
    teDiscriminanPorEtnia(B),
    teDiscriminanPorIdioma(C),
    (   (not(A), not(B),not(C)) -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a no ser discriminado")
    ),
    nl.

%Derecho a vivir en condiciones de bienestar y a un sano desarrollo integral
derechoBienestarDesarrollo1:- 
    vasEscuela(A), 
    trabajas(B), 
    (   (A,not(B))-> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a vivir a vivir en condiciones de bienestar y a un sano desarrollo integral")
    ),
    nl.

derechoBienestarDesarrollo2:- 
    teViolentanFisicamente(A) , 
    teViolentanPsicologicamente(B), 
    (   (not(A),not(B)) -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a vivir en condiciones de bienestar y a un sano desarrollo integral")
    ),
    nl.

%Derecho a una vida libre de violencia y a la integridad personal
derechoLibreViolencia:- 
    teViolentanFisicamente(A), 
    teViolentanPsicologicamente(B), 
    (   (not(A),not(B))-> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a una vida libre de violencia y a la integridad personal")
    ),
    nl.

%Derecho a la proteccion de la salud y a la seguridad social
derechoSalud1 :- 
    vasDoctorCuandoEnfermas(A),
    (   A -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la proteccion de la salud y a la seguridad social")
    ),
    nl.

derechoSalud2 :- 
    teAtendieronHospital(A),
    (   A -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la proteccion de la salud y a la seguridad social")
    ),
    nl.

%Derecho a la inclusion de ninas, ninos y adolescentes con discapacidad
derechoInclusionDiscapacidad:- 
    tienesDiscapacidad(A),
    dieronServicioPorDiscapacidad(B), 
    (   (A,not(B)) -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la inclusion de ninas, ninos y adolescentes con discapacidad")
    ),
    nl.
%Derecho a la educacion
derechoEducacion:- 
    vasEscuela(A),
    (   A -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la educacion")
    ),
    nl.

%Derecho a la libertad de expresion y de acceso a la informacion
derechoLibertadExpresionAccesoInf:- 
    divulgaronContenidoSensible(A),
    (   not(A)-> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la libertad de expresion y de acceso a la informacion")
    ),
    nl.

%Derecho a la intimidad
derechoIntimidad:- 
    teViolentanFisicamente(A),
    (   not(A) -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho a la intimidad")
    ),
    nl.

%Derecho de acceso a las tecnologias de la informacion y comunicacion
derechoAccesoTecnologia:- 
    cuentasConDispositivoElectronicoEnCasa(A),
    (   A -> 
        write("")
    ;
        write("Estan incumpliendo tu derecho de acceso a las tecnologias de la informacion y comunicacion")
    ),
    nl.


%Inicio
iniciar :- 
    nl, 
    write("Por favor responda todas las preguntas"),
    nl,
    write("Ingrese su nombre: "),
    read(N), 
    preguntas(N).

preguntas(N) :- 
    familia(N),
    comida(N),
    casa(N),
    vivo(N),
    nombre(N),
    apellidos(N),
    registrado(N),
    padres(N),
    discriminanPorSexo(N),
    discriminanPorEtnia(N),
    discriminanPorIdioma(N),
    violentanFisicamente(N),
    violentanPsicologicamente(N),
    causaPadres(N),
    escuela(N),
    trabajo(N),
    doctor(N),
    hospital(N),
    discapacidad(N),
    servicioPorDiscapacidad(N),
    contenidoSensible(N),
    dispositivoElectronicoEnCasa(N),
    divorciados(N),
    derechos.

%Obtener derechos que se violan
derechos :- 
    derechoVidaSupervivencia1,
    derechoVidaSupervivencia2,
    derechoIdentidad,
    derechoFamilia,
    derechoNoDiscriminacion,
    derechoBienestarDesarrollo1,
    derechoBienestarDesarrollo2,
    derechoLibreViolencia,
    derechoEducacion,
    derechoLibertadExpresionAccesoInf,
    derechoIntimidad,
    derechoAccesoTecnologia.