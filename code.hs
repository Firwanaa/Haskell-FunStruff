($) :: (a  ->  b) ->    a ->    b
--      function  takes a gives b
-- f (1 + 2) == f $ 1 + 2 -- Basically it replace brakets

-- Type signature of (fmap)
fmap  :: Functor f => (a -> b) -> f a -> f b
(<$>) :: Functor f => (a -> b) -> f a -> f b
-- (a, b): is a function that takes "a" and gives "b"
-- (f  a): "a" is value wrapped inside of a context "f". f is some sort of container or data structure like "Maybe"
-- (f  b): "b" is a result value wrapped inside a container "f".

-- Examples
fmap (+1) [1..3]
fmap (+1) []
fmap (+1) (Just 1)
fmap (+1) (Nothing)
