

(define (domain SOKOBAN)
    (:requirements :strips :typing)
    (:types
        block
    )
    (:predicates
        (isEmpty ?x - block)
        ;;(isWall ?x - block)
        ;;(isDestination ?x - block) ;;peut être vide ou non
        (isBox ?x - block)
        (isGuard ?x - block)
        (isTop ?x - block ?y - block) ;;x est en haut de y
        (isLeft ?x - block ?y - block) ;;x est a gauche de y
    )

    ;;deplace le garde de la position x à y
    ;;il peut se déplacer lorsque que la case cible est vide uniquement
    (:action moveTop
        :parameters (?x - block ?y - block)
        :precondition (and (isTop ?y ?x) (isEmpty ?y) (isGuard ?x))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isEmpty ?y))
        )
    )

    ;;deplace le garde de la position x à y
    (:action moveBottom
        :parameters (?x - block ?y - block)
        :precondition (and (isTop ?x ?y) (isEmpty ?y) (isGuard ?x))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isEmpty ?y))
        )
    )

    ;;deplace le garde de la position x à y
    (:action moveRight
        :parameters (?x - block ?y - block)
        :precondition (and (isLeft ?x ?y) (isEmpty ?y) (isGuard ?x))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isEmpty ?y))
        )
    )
    
    ;;deplace le garde de la position x à y
    (:action moveLeft
        :parameters (?x - block ?y - block)
        :precondition (and (isLeft ?y ?x) (isEmpty ?y) (isGuard ?x))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isEmpty ?y))
        )
    )

    ;;le garde à la case X pousse le bloc Y sur la 
    ;;case Z puis se déplace sur Y  
    (:action pushTop
        :parameters (?x - block ?y - block ?z - block)
        :precondition (and (isTop ?y ?x) (isTop ?z ?y) (isEmpty ?z) (isGuard ?x) (isBox ?y))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isBox ?y))
            (isBox ?z)
            (not (isEmpty ?z))
        )
    )

    ;;le garde à la case X pousse le bloc Y sur la 
    ;;case Z puis se déplace sur Y  
    (:action pushBottom
        :parameters (?x - block ?y - block ?z - block)
        :precondition (and (isTop ?x ?y) (isTop ?y ?z) (isEmpty ?z) (isGuard ?x) (isBox ?y))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isBox ?y))
            (isBox ?z)
            (not (isEmpty ?z))
        )
    )

    ;;le garde à la case X pousse le bloc Y sur la 
    ;;case Z puis se déplace sur Y  
    (:action pushRight
        :parameters (?x - block ?y - block ?z - block)
        :precondition (and (isLeft ?x ?y) (isLeft ?y ?z) (isEmpty ?z) (isGuard ?x) (isBox ?y))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isBox ?y))
            (isBox ?z)
            (not (isEmpty ?z))
        )
    )

    ;;le garde à la case X pousse le bloc Y sur la 
    ;;case Z puis se déplace sur Y  
    (:action pushLeft
        :parameters (?x - block ?y - block ?z - block)
        :precondition (and (isLeft ?y ?x) (isLeft ?z ?y) (isEmpty ?z) (isGuard ?x) (isBox ?y))
        :effect (and (not (isGuard ?x))
            (isGuard ?y)
            (isEmpty ?x)
            (not (isBox ?y))
            (isBox ?z)
            (not (isEmpty ?z))
        )
    )
    
    






)















