;;Hola mundo implementado keysets
(namespace "free")

(define-keyset "free.hello-keyset" (read-keyset "hello-keyset"))


(module hello-world GOV
  
  (defcap GOV()
  	(enforce-keyset 'hello-keyset)	
  )

  ;; Una función pública que puede llamarse solo si se cumple el keyset

  (defun hello (name:string)
    "Funcion para saludar"
    ;; Requiere que quien llama cumpla con el keyset
    
    (format "Hola {}, como estás?" [name])
  )
)

(hello "Amigo")

