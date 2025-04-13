func :: p -> Bool
func arg =
  let x = func1 arg
      y = func2 arg
      z = func3 arg
   in if z then x else y

func1 :: p -> Bool
func1 arg = False

func2 :: p -> Bool
func2 arg = False

func3 :: p -> Bool
func3 arg = True