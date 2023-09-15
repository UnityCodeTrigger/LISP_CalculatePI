(defun calcular-pi (num-iteraciones)
  (let ((dentro-circulo 0))                                ;Cuenta el numero de veces que la posicion aleatoria esta dentro del circulo
    (dotimes (i num-iteraciones)                           ;Bucle FOR, pide un numero maximo de vueltas "num-iteraciones" y recorre hasta ese numero con la variable "i"
      (let ((x (- (random 1.0) 0.5))
            (y (- (random 1.0) 0.5)))
           
        (if (< (+ (* x x) (* y y)) 0.25)
            (setq dentro-circulo (+ dentro-circulo 1)))))
       
    (* 4.0 (/ dentro-circulo num-simulaciones))))          ;Calcula si la posicion aleatoria se encuentra dentro de un hipotetico circulo

(defvar iteraciones 5000)

(setq num-simulaciones iteraciones) ; Cambia este número para obtener una mejor estimación
(format t "Estimación de pi: ~a~%" (calcular-pi num-simulaciones))

;PI = 3.14 15 92 65 35
