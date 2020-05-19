%Base de conocimiento
%Hechos a Preguntar. Respuesta se guarda en memoria.
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
    tieneFamilia(X),
    (   X->
        nl,
        write(N),
        write(", Tienes padres? s/n:"),
        read(R),
        (   R=s ->
            assert(tienePadres(true))
        ;
            assert(tienePadres(false))
        )
    ;
        assert(tienePadres(false))
    ).


discriminanPorSexo(N) :-
    nl,
    write(N),
    write(", Alguien te discriminan por tu sexo? s/n:"),
    read(R),
    (   R=s ->
        assert(teDiscriminanPorSexo(true))
    ;
        assert(teDiscriminanPorSexo(false))
    ).

discriminanPorEtnia(N) :-
    nl,
    write(N),
    write(", Alguien te discriminan por tu etnia? s/n:"),
    read(R),
    (   R=s ->
        assert(teDiscriminanPorEtnia(true))
    ;
        assert(teDiscriminanPorEtnia(false))
    ).

discriminanPorIdioma(N) :-
    nl,
    write(N),
    write(", Alguien te discriminan por tu idioma? s/n:"),
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
    write(", Vas al doctor cuando te enfermas? s/n:"),
    read(R),
    (   R=s ->
        assert(vasDoctorCuandoEnfermas(true))
    ;
        assert(vasDoctorCuandoEnfermas(false))
    ).
hospital(N) :-
    vasDoctorCuandoEnfermas(X),
    (   X->
        nl,
        write(N),
        write(", El hospital te atendio, cuando estabas enfermo? s/n:"),
        read(R),
        (   R=s -> 
            assert(teAtendieronHospital(true))
        ; 
            assert(teAtendieronHospital(false))
        )
    ;
        assert(teAtendieronHospital(true))
    ).

discapacidad(N) :-
    nl,
    write(N),
    write(", Tienes alguna discapacidad? s/n:"),
    read(R),
    (   R=s ->
        assert(tienesDiscapacidad(true))
    ;
        assert(tienesDiscapacidad(false))
    ).

servicioPorDiscapacidad(N) :-
    tienesDiscapacidad(A),
    (   A->
        nl,
        write(N),
        write(", Te negaron algun servicio por tu discapacidad? s/n:"),
        read(R),
        (   R=s ->
            assert(dieronServicioPorDiscapacidad(true))
        ;
            assert(dieronServicioPorDiscapacidad(false))
        )
    ;
        assert(dieronServicioPorDiscapacidad(false))
    ).

contenidoSensible(N) :-
    nl,
    write(N),
    write(", Han divulgado contenido tuyo sensible?(videos o imagenes) s/n:"),
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

%Hechos Extras para consecuencias
divorciados(N):-
    tienePadres(X),
    (   X ->
        nl,
        write(N),
        write(", Tus padres son divorciados? s/n:"),
        read(R),
        (   R=s ->
            assert(papasDivorciados(true))
        ;
            assert(papasDivorciados(false))
        )
    ;
        assert(papasDivorciados(false))
    ).


causaPadres(N):-
    tienePadres(X),
    (   X ->
        nl,
        write(N),
        write(", Fue causado por alguno de tus padres algunos de los puntos anteriores? s/n:"),
        read(R),
        (   R=s ->
            assert(fueCausadoPorPapa(true))
        ;
            assert(fueCausadoPorPapa(false))
        )
    ;
        assert(fueCausadoPorPapa(false))
    ).


%-----------------------Reglas--------------------------
%Derecho a la vida, a la supervivencia y al desarrollo
derechoVidaSupervivencia1:-
    tieneComida(A),
    tieneFamilia(B),
    tieneCasa(C),
    (   (A, B,C) ->
        write("")
    ;
        %Derecho Incumplido
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la vida, a la supervivencia y al desarrollo. Razones:")
        )
    ),
    %Causas
    (   not(A) ->
        (
            nl,
            write("No tienes comida, lo cual pone en riesgo el desarrollo del infante.")
        )
    ;
        write("")
    ),
    (   not(B) ->
        (
            nl,
            write("No tienes una familia. La cual todos deben de tener.")
        )
    ;
        write("")
    ),
    (   not(C)->
        (
            nl,
            write("No cuentas con un hogar para el apto desarrollo.")
        )
    ;
        write("")
    ),
    (   (A, B,C) ->
        write("")
    ;
        write("Posibles acciones a llevar: "),
        papasDivorciados(X),
        (   X->
            write("Guarda y custodia del menor.")
        ;
            (   B->
                write("Revocacion de tutor/padres o llevarlo a albergue de menores.")
            ;
                write("Llevarlo a albergue de menores.")
            )

        )
    ),
    nl.

derechoVidaSupervivencia2:-
    estaVivo(A),
    (   A ->
        %Derecho cumplido
        write("")
    ;
        %Derecho Incumplido
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la vida, a la supervivencia y al desarrollo. Razones:"),
            nl,
            write("Privacion de la vida."),
            nl,
            write("Posibles acciones a llevar: "),
            write("Delito penal contra el causante")
        )
    ),
    nl.

%Derecho a la identidad
derechoIdentidad:-
    tieneNombre(A),
    tieneApellidos(B),
    estaRegistrado(C),
    (   (A,B,C)->
        %Derecho cumplido
        write("")
    ;
        %Derecho Incumplido
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la identidad. Razones: ")
        )
    ),
     %Causas
    (   not(A) ->
        (
            nl,
            write("No tienes un nombre. Lo que indica que tus padres no son aptos. ")
        )
    ;
        write("")
    ),
    (   not(B) ->
        (
            nl,
            write("No tienes un apellido. Lo que indica que tus padres no son aptos.")
        )
    ;
        write("")
    ),
    (   not(C)->
        (
            nl,
            write("No cuentas con registro civil. Lo que indica que tus padres no son aptos.")
        )
    ;
        write("")
    ),
    (   (A,B,C)->
        write("")
    ;
        nl,
        write("Posibles acciones a llevar: "),
        tieneFamilia(Y),
        (   Y->
            write("Revocacion de tutor/padres o llevarlo a albergue de menores.")
        ;
            write("Llevarlo a albergue de menores.")
        )
    ),
    nl.

%Derecho a vivir en familia
derechoFamilia:-
    tienePadres(A),
    (   A ->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a vivir en familia. Razones:"),
            nl,
            write("No tienes una familia. La cual todos deben de tener."),
            nl,
            write("Posibles acciones a llevar: "),
            tieneFamilia(X),
            (   X->
                write("Elegir vivir con la familia")
            ;
                write("Albergue de menores. Derecho a ser adoptado.")

            )
        )
    ),
    nl.

%Derecho a no ser discriminado
derechoNoDiscriminacion:-
    teDiscriminanPorSexo(A),
    teDiscriminanPorEtnia(B),
    teDiscriminanPorIdioma(C),
    (   (A;B;C) ->
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a no ser discriminado. Razones:")
        )
    ;
        write("")
    ),
    %Causas
    (   A ->
        (
            nl,
            write("Sufrir discriminacion de sexo. ")
        )
    ;
        write("")
    ),
    (   B ->
        (
            nl,
            write("Sufrir discriminacion de etnia.")
        )
    ;
        write("")
    ),
    (   C->
        (
            nl,
            write("Sufrir discriminacion por idioma.")
        )
    ;
        write("")
    ),
    (   (A;B;C)->
        nl,
        write("Posibles acciones a llevar: "),
        fueCausadoPorPapa(X),
        (   X->
            write("Guarda y custodia del menor.")
        ;
            write("")
        ),
        write("Delito penal contra el causante.")
    ;
        write("")
    ),
    nl.

%Derecho a vivir en condiciones de bienestar y a un sano desarrollo integral
derechoBienestarDesarrollo1:-
    vasEscuela(A),
    trabajas(B),
    (   (A,not(B))->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a vivir en condiciones de bienestar y a un sano desarrollo integral. Razones:")
        )
    ),
    %Causas
    (   not(A) ->
        (
            nl,
            write("No vas a la escuela, lo cual pone en riesgo el desarrollo integral. ")
        )
    ;
        write("")
    ),
    (   B ->
        (
            nl,
            write("Vas al trabajo, lo cual pone en riesgo el desarrollo integral y bienestar.")
        )
    ;
        write("")
    ),
    (   (A,not(B))->
        write("")
    ;
        (   nl,
            write("Posibles acciones a llevar: "),
            papasDivorciados(X),
            (   X ->
                write("Guarda y custodia del menor.")
            ;
                tieneFamilia(Y),
                (   Y->
                    write("Revocacion de tutor/padres o llevarlo a albergue de menores.")
                ;
                    write("Llevarlo a albergue de menores.")
                )
            )
        )
    ),
    nl.

derechoBienestarDesarrollo2:-
    teViolentanFisicamente(A) ,
    teViolentanPsicologicamente(B),
    (   (A;B) ->
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a vivir en condiciones de bienestar y a un sano desarrollo integral. Razones:")
        )
    ;
        write("")
    ),
    %Causas
    (   A ->
        (
            nl,
            write("Violencia fisica que pone en riesgo el vivir en condiciones de bienestar. ")
        )
    ;
        write("")
    ),
    (   B ->
        (
            nl,
            write("Violencia psicologica que pone en riesgo el vivir en condiciones de bienestar.")
        )
    ;
        write("")
    ),
    (   (A;B)->
        nl,
        write("Posibles acciones a llevar: "),
        fueCausadoPorPapa(X),
        (   X->
            write("Guarda y custodia del menor.")
        ;
            write("")
        ),
        write("Delito penal contra el causante.")
    ;
        write("")
    ),
    nl.

%Derecho a una vida libre de violencia y a la integridad personal
derechoLibreViolencia:-
    teViolentanFisicamente(A),
    teViolentanPsicologicamente(B),
    (   (A;B)->
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a una vida libre de violencia y a la integridad personal. Razones:")
        )
    ;
        write("")
    ),
    %Causas
    (   A ->
        (
            nl,
            write("Violencia fisica que incumple el derecho de vivir libre de violencia. ")
        )
    ;
        write("")
    ),
    (   B->
        (
            nl,
            write("Violencia psicologica que incumple el derecho de vivir libre de violencia. ")
        )
    ;
        write("")
    ),
    (   (A;B)->
        nl,
        write("Posibles acciones a llevar: "),
        fueCausadoPorPapa(X),
        (   X->
            write("Guarda y custodia del menor.")
        ;
            write("")
        ),
        write("Delito penal contra el causante.")
    ;
        write("")
    ),
    nl.

%Derecho a la proteccion de la salud y a la seguridad social
derechoSalud1 :-
    vasDoctorCuandoEnfermas(A),
    (   A ->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la proteccion de la salud y a la seguridad social. Razones:"),
            nl,
            write("No cuidan o no ejercen el derecho de salud. "),
            papasDivorciados(X),
            estaVivo(Y),
            nl,
            write("Posibles acciones a llevar:"),
            (   (X,Y) ->
                write("Guarda y custodia del menor.")
            ;
                (   not(Y) ->
                    write("Delito penal contra el causante.")
                ;
                    tieneFamilia(Z),
                    (   Z->
                        write("Revocacion de tutor/padres o llevarlo a albergue de menores.")
                    ;
                        write("Llevarlo a albergue de menores.")
                    )
                )

            )
        )
    ),
    nl.

derechoSalud2 :-
    vasDoctorCuandoEnfermas(B),
    (   B ->
        teAtendieronHospital(A),
        (   not(A) ->
            write("")
        ;
            (   write("-----------------------------------------------------------------------------------------------------"),
                nl,
                write("-Estan incumpliendo tu derecho a la proteccion de la salud y a la seguridad social. Razones:"),
                nl,
                write("Hospital nego el derecho a la salud. "),
                nl,
                write("Posibles acciones a llevar: Demandar a la institucion (Posibles multas)")
            )
        )
    ;
        write("")
    ),
    nl.



%Derecho a la inclusion de ninas, ninos y adolescentes con discapacidad
derechoInclusionDiscapacidad:-
    tienesDiscapacidad(A),
    dieronServicioPorDiscapacidad(B),
    (   (A,not(B)) ->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la inclusion de ninas, ninos y adolescentes con discapacidad. Razones:"),
            nl,
            write("Negacion de servicio a un nino con discapacidad."),
            nl,
            write("Posibles acciones a llevar: Demandar a la institucion (Posibles multas y demandar la inclusion)")
        )
    ),
    nl.
%Derecho a la educacion
derechoEducacion:-
    vasEscuela(A),
    (   A ->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la educacion. Razones:"),
            nl,
            write("No vas a la escuela, lo cual pone en riesgo el desarrollo integral. "),
            nl,
            write("Posibles acciones a llevar: "),
            papasDivorciados(X),
            tieneFamilia(Y),
            (
                X ->
                write("Guarda y custodia del menor.")
            ;
                (   Y ->
                    write("Llevarlo a albergue de menores.")
                ;
                    write("Inscripcion a una escuela.")
                )
            )
        )
    ),
    nl.


%Derecho a la libertad de expresion y de acceso a la informacion
derechoLibertadExpresionAccesoInf:-
    divulgaronContenidoSensible(A),
    (   not(A)->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la libertad de expresion y de acceso a la informacion. Razones:"),
            nl,
            write("Divulgacion de contenido sensible(imagenes,videos)"),
            nl,
            write("Posibles acciones a llevar: "),
            fueCausadoPorPapa(X),
            (
                X ->
                write("Guarda y custodia del menor.")
            ;
                write("")
            ),
            write("Delito penal contra el causante.")
        )
    ),
    nl.

%Derecho a la intimidad
derechoIntimidad:-
    teViolentanFisicamente(A),
    (   not(A) ->
        write("")
    ;
        (   write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho a la intimidad. Razones:"),
            nl,
            write("Atentan fisicamente contra tu intimidad."),
            nl,
            write("Posibles acciones a llevar: "),
            fueCausadoPorPapa(X),
            (
                X ->
                write("Guarda y custodia del menor.")
            ;
                write("")
            ),
            write("Delito penal contra el causante.")
        )
    ),
    nl.

%Derecho de acceso a las tecnologias de la informacion y comunicacion
derechoAccesoTecnologia:-
    cuentasConDispositivoElectronicoEnCasa(A),
    (   A ->
        write("")
    ;
       (    write("-----------------------------------------------------------------------------------------------------"),
            nl,
            write("-Estan incumpliendo tu derecho de acceso a las tecnologias de la informacion y comunicacion. Razones:"),
            nl,
            write("Debido a que no cuentas con dispositivo electronico."),
            nl,
            write("Posibles acciones a llevar: Demandar al gobierno por incumpliemiento de derecho.")
        )
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

