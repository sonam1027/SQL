SELECT DISTINCT actor_id, director_id
FROM ActorDirector a
WHERE (
    SELECT COUNT(*)
    FROM ActorDirector b
    WHERE a.actor_id = b.actor_id
      AND a.director_id = b.director_id
) >= 3;
