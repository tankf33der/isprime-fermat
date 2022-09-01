(de longRand (N)  # 2:N-1
   (max
      2
      (% (in "/dev/urandom" (rd (size N))) N) ) )
# https://en.wikipedia.org/wiki/Fermat_primality_test
(de isprime (N K)
   (default K 16)
   (do K
      (let A (longRand (dec N))
         # (println (% (** A (dec N)) N))
         (println (** A (dec N)))
      )
   )
)

# (println (isprime 221 8))
(isprime 5393 8)
# (isprime 115249 8)
# (println (isprime 193939 8))






(msg 'ok)
(bye)
