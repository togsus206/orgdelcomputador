---------------LABERINTO 1

En este caso decidi no hacer el programa modular para entender mejor el recorrido que debia hacer y entender la repeticion de las instrucciones
(En el caso del laberinto 2 si decidi hacerlo modular)

si quieren ver el recorrido completo del laberinto hacer: stepi 442 
y se marcara todo el recorrido.

-En caso de querer ver paso por paso, hacer "breakpoints" en las siguientes lineas:
36, 47, 62, 77, 90, 104, 119, 136, 150, 165, 177, 191, 199, 212, 231, 249

 para ver el laberinto usar:
 dashboard memory watch 0x00000000400803a0 128


--------------LABERINTO 2

En este caso si lo hice modular, y para encontrar la posicion de la x, hice una busqueda de cada posible posicion que pueda tener "X" y una vez encontrado el
personaje, poner todas la precondiciones necesarias y hacer saltar el programa al punto que sea adecuado para resolver el laberinto. En caso de no encontrar 
el personaje, ya sea por que no existe o algun problema o "bug" o error mio,  decidi poner que el programa interprete que perdimos y escribirlo en pantalla.

Si el personaje no esta o esta en una posicion erronea para ver que perdiste se puede hacer un BREAKPOINT en la linea 881

En caso de que se pase un laberinto correcto, con hacer un BREAKPOINT en la linea 862, pasaria a mostrar el laberinto resuelto y con el titulo de ganaste 


para ver el laberinto usar:
 
 dashboard memory watch 0x0000000040080cd0 128