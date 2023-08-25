(de longRand (N)  # [2:N-2]
   (max
      2
      (use (R D)
         (while (=0 (setq R (abs (rand)))))
         (until (> R N)
            (unless (=0 (setq D (abs (rand))))
               (setq R (* R D)) ) )
         (% R N) ) ) )
(de **Mod (X Y N)
   (let M 1
      (loop
         (when (bit? 1 Y)
            (setq M (% (* M X) N)) )
         (T (=0 (setq Y (>> 1 Y))) M)
         (setq X (% (* X X) N)) ) ) )
# https://en.wikipedia.org/wiki/Fermat_primality_test
(de isprime (N K)
   (default K 32)
   (or
      (= 2 N)
      (and
         (> N 1)
         (bit? 1 N)
         (do K
            (NIL (=1 (**Mod (longRand (dec N)) (dec N) N)))
            T ) ) ) )
