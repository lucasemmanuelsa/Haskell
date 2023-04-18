import Text.Printf
tributo :: Float -> Float
tributo salario
    |salario <= 1903.98 = 0
    |salario >= 1903.99 && salario <= 2826.65 = 142.80 + 0.075 * (salario - 1903.99)
    |salario >= 2826.66 && salario <= 3751.05 = 354.80 + 0.15 * (salario - 2826.66)
    |salario >= 3751.06 && salario <= 4664.68 = 636.13 + 0.225 * (salario - 3751.06)
    |salario > 4664.68 = 869.36 + 0.275 * (salario - 4664.68)

main :: IO()
main = do
    input <- getLine
    let salario = read(input)
    let trib = tributo (salario)
    printf "O valor do imposto de renda retido eh: R$ %.2f\n" trib
    printf "O salario liquido eh: R$ %.2f\n" (salario - trib)