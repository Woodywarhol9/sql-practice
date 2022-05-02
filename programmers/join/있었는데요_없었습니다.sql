SELECT INS.ANIMAL_ID, INS.NAME -- 아이디, 이름 조회
    FROM ANIMAL_INS AS INS
        INNER JOIN ANIMAL_OUTS AS OUTS
        ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
        WHERE INS.DATETIME > OUTS.DATETIME -- 만약 입양 시간보다 보호소 도착 시간이 더 빠른 경우
        ORDER BY INS.DATETIME ; -- 이때 정렬은 보호소 도착 시간에 따라서