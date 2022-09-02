(de longRand (N)  # 2:N-1
   (max
      2
      (% (in "/dev/urandom" (rd (size N))) N) ) )
(de **Mod (X Y N)
   (println 'X X 'Y Y 'N N)
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
         (println 'N N)
         (let A NIL
            (do K
               (setq A (**Mod (longRand (dec N)) (dec N) N))
               (println 'A A)
               (NIL (=1 A))
               T ) ) ) ) )

(println (isprime 2152302898747))

(msg 'ok)
(bye)

