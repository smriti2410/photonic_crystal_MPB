(define-param a 1) ; lattice constant
(define-param r 0.49) ; radius of rods

(define-param eps 11.7) ; dielectric constant of silicon slab
(define-param comp 1.96) ; 

; Define the geometry of the cell
(set! geometry-lattice (make lattice 
                        (basis1 (* 0.5 (sqrt 3)) 0.5)
                        (basis2 (* 0.5 (sqrt 3)) -0.5)
                        (size 11 11 no-size)))

; Specify the dielectric constant of the components
(set! default-material (make dielectric (epsilon eps)))

(set! geometry 
      (append
       (geometric-objects-lattice-duplicates geometry)
       (list 
	(make cylinder (center 11) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 0 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 0 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 0 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 1 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 1 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 1 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 2 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 2 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 3 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 4 ) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 3 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 4 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 4 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 5 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 5 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 6 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 6 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 7 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 7 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 8 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 8 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))

	(make cylinder (center 9 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 9 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 11 -1) (radius r) (height infinity) (material (make dielectric (epsilon eps))))
	
	(make cylinder (center 10 5) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	
	(make cylinder (center 10 -1) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 -2) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 -3) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 -4) (radius r) (height infinity) (material (make dielectric (epsilon comp))))
	(make cylinder (center 10 -5) (radius r) (height infinity) (material (make dielectric (epsilon comp)))))))

; Define the k-points
(set! k-points (list (vector3 0 0 0) ; Gamma
                     (vector3 0 0.5 0) ; M
                     (vector3 (/ -3) (/ 3) 0) ; K
                     (vector3 0 0 0))) ; Gamma

; Interpolate the k-points
(set! k-points (interpolate 4 k-points))

; Set the number of bands
(set! num-bands 4)

(set-param! resolution 64)

; Run the simulation
(run-tm (output-at-kpoint (vector3 (/ -3) (/ 3) 0)
                          fix-efield-phase output-efield-z))

