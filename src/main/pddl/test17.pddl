(define (problem SOKOBAN-17)
(:domain SOKOBAN)
(:objects 
    b00 b01 b02 b03 b04 b05 - block
    b10 b11 b12 b13 b14 b15 - block
    b20 b21 b22 b23 b24 b25 - block
    b30 b31 b32 b33 b34 b35 - block
    b40 b41 b42 b43 b44 b45 - block
    b50 b51 b52 b53 b54 b55 - block
    b60 b61 b62 b63 b64 b65 - block
    b70 b71 b72 b73 b74 b75 - block
)
(:INIT 
    ;;On rend vide les cases
    (isEmpty b00)(isEmpty b01)
    (isEmpty b10)(isEmpty b11)(isEmpty b12)(isEmpty b13)
    (isEmpty b23)(isEmpty b24)
    (isEmpty b31)(isEmpty b32)(isEmpty b34)
    (isEmpty b41)(isEmpty b44)
    (isEmpty b51)(isEmpty b54)
    (isEmpty b61)(isEmpty b62)(isEmpty b63)(isEmpty b64) ;;ATTENTION : pas de (isEmpty b61) normalement
    ;;On place les boites
    (isBox b33)(isBox b52)(isBox b53)
    ;;On définit le garde
    (isGuard b43)
    ;;On definit les TOPs
    (isTop b00 b10)(isTop b01 b11)(isTop b02 b12)(isTop b03 b13)(isTop b04 b14)(isTop b05 b15)
    (isTop b10 b20)(isTop b11 b21)(isTop b12 b22)(isTop b13 b23)(isTop b14 b24)(isTop b15 b25)
    (isTop b20 b30)(isTop b21 b31)(isTop b22 b32)(isTop b23 b33)(isTop b24 b34)(isTop b25 b35)
    (isTop b30 b40)(isTop b31 b41)(isTop b32 b42)(isTop b33 b43)(isTop b34 b44)(isTop b35 b45)
    (isTop b40 b50)(isTop b41 b51)(isTop b42 b52)(isTop b43 b53)(isTop b44 b54)(isTop b45 b55)
    (isTop b50 b60)(isTop b51 b61)(isTop b52 b62)(isTop b53 b63)(isTop b54 b64)(isTop b55 b65)
    (isTop b60 b70)(isTop b61 b71)(isTop b62 b72)(isTop b63 b73)(isTop b64 b74)(isTop b65 b75)
    ;;On définit les LEFTs
    (isLeft b00 b01)(isLeft b01 b02)(isLeft b02 b03)(isLeft b03 b04)(isLeft b04 b05)
    (isLeft b10 b11)(isLeft b11 b12)(isLeft b12 b13)(isLeft b13 b14)(isLeft b14 b15)
    (isLeft b20 b21)(isLeft b21 b22)(isLeft b22 b23)(isLeft b23 b24)(isLeft b24 b25)
    (isLeft b30 b31)(isLeft b31 b32)(isLeft b32 b33)(isLeft b33 b34)(isLeft b34 b35)
    (isLeft b40 b41)(isLeft b41 b42)(isLeft b42 b43)(isLeft b43 b44)(isLeft b44 b45)
    (isLeft b50 b51)(isLeft b51 b52)(isLeft b52 b53)(isLeft b53 b54)(isLeft b54 b55)
    (isLeft b60 b61)(isLeft b61 b62)(isLeft b62 b63)(isLeft b63 b64)(isLeft b64 b65)
    (isLeft b70 b71)(isLeft b71 b72)(isLeft b72 b73)(isLeft b73 b74)(isLeft b74 b75)
)

;;goal = les boites sont aux destinations
(:goal (AND 
    (isBox b24)(isBox b33)(isBox b53)
    ;;(isGuard b41)
    ;;(isBox b24)
    )
)
)