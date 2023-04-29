{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

import Text.CSV
import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString.Lazy.Char8 as BC
import GHC.Generics
import System.IO.Unsafe
import System.IO
import System.Directory


data User = User { 
 name :: String,
 email :: String,
 senha :: String,
 listageneros :: [String]
} deriving (Show)

main :: IO()
main = do
    putStrLn "Digite Seu Nome:"
    recebename <- getLine

    putStrLn "Digite Seu Email:"
    recebeemail <- getLine

    putStrLn "Digite sua Senha:"
    recebesenha <- getLine

    putStrLn "Digite Os Gêneros:"
    let recebelista = ["1","2","3"]
    let user1 = registerUser recebename recebeemail recebesenha recebelista
    print(show user1)
    saveUserCSV "Test.csv" recebename recebeemail recebesenha recebelista

    tiboca <- getUserCsv "Lucas@gmail.com"
    --print (name (tiboca !!0))

registerUser :: String -> String -> String -> [String] -> User
registerUser name email senha lista = User name email senha lista

saveUserCSV :: String -> String -> String -> String -> [String] -> IO()
saveUserCSV csvFilePath name email senha lista = do
 let p = userToCSV name email senha lista
 f <- openFile csvFilePath AppendMode
 hPutStr f p
 hClose f

userToCSV :: String -> String -> String -> [String] -> String
userToCSV name email senha lista = name ++ ";" ++ email ++ ";" ++ senha ++ ";" ++ show lista ++ "\n"

getUserCsv :: String -> IO [User]
getUserCsv em = do
    let fileName = "Test.csv"
    csvData <- readFile fileName
    let lines = wordsWhen (=='\n') csvData
    let temp = map (\s -> wordsWhen (== ';') s) lines
    let userList = map (\[n, e, s, l] -> registerUser n e s (parseStrToList l)) temp
    let jet = filter (\u -> email(u) == em) userList
    return jet

parseStrToList :: String -> [String]
parseStrToList str = do
    let temp = filter (/= '\\') str
    let lst = read temp :: [String]
    lst
    
wordsWhen :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'
                    
splitBy :: Char -> String -> [String]
splitBy sep str = wordsWhen (== sep) str
    






