programa
{
  inclua biblioteca Util --> u
    funcao inteiro gerarInteiroAleatorio(inteiro minimo, inteiro maximo)
    {
        // Gera um número inteiro aleatório entre minimo e maximo (inclusive)
        real r
        inteiro resultado
        r = u.sorteia()  // gera número real entre 0 e 1
        resultado <- minimo + (r * (maximo - minimo + 1))
        retorne resultado
    }

    funcao inicio()
    {
        inteiro numeroSecreto, palpite, tentativas, maxTentativas

        // Gera um número secreto entre 1 e 100
        numeroSecreto = u.sorteia(1, 100)
        maxTentativas <- 7
        tentativas <- 0
        
        escreva("Bem-vindo ao jogo Adivinhe o Número!\n")
        escreva("Eu escolhi um número entre 1 e 100.\n")
        escreva("Você tem ", maxTentativas, " tentativas para adivinhar.\n")

        enquanto (tentativas < maxTentativas)
        {
            escreva("\nDigite seu palpite: ")
            leia(palpite)

            se (palpite < 1 ou palpite > 100)
            {
                escreva("Por favor, digite um número entre 1 e 100.\n")
                
            }

            tentativas <- tentativas + 1

            se (palpite == numeroSecreto)
            {
                escreva("Parabéns! Você acertou o número em ", tentativas, " tentativas!\n")
                pare
            }
            senao se (palpite < numeroSecreto)
            {
                escreva("O número é maior que ", palpite, ". Tente novamente.\n")
            }
            senao
            {
                escreva("O número é menor que ", palpite, ". Tente novamente.\n")
            }
        }

        se (tentativas == maxTentativas e palpite != numeroSecreto)
        {
            escreva("\nSuas tentativas acabaram. O número era ", numeroSecreto, ". Mais sorte da próxima vez!\n")
        }
    }
}


