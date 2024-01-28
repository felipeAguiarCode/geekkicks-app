# Documentação de Convenções de Mensagens de Commit

Este documento descreve as convenções de mensagens de commit utlizadas neste projeto.

## Tipos de Mensagens de Commit

1. **feat:** 💡

   Use este tipo de commit ao adicionar uma nova funcionalidade ao código.

   Exemplo:

   ```markdown
   git commit -m "feat(💡): Adicione uma nova página de perfil de usuário"
   ```

2. **fix:** 🐛

   Use este tipo de commit para corrigir um bug ou problema existente.

   Exemplo:

   ```markdown
   git commit -m "fix(🐛): Corrija o erro de validação do formulário de login"
   ```

3. **chore:** 🧹

   Este tipo de commit é usado para tarefas de manutenção que não afetam diretamente o código do produto.

   Exemplo:

   ```markdown
   git commit -m "chore(🧹): Atualize as dependências do projeto"
   ```

4. **docs:** 📚

   Utilize este tipo de commit para atualizações ou adições à documentação.

   Exemplo:

   ```markdown
   git commit -m "docs(📚): Adicione exemplos de uso na documentação do API"
   ```

5. **style:** 🎨

   Use este tipo de commit para melhorias na formatação do código, sem alterações no comportamento do código em si.

   Exemplo:

   ```markdown
   git commit -m "style(🎨): Ajuste a indentação nos arquivos JavaScript"
   ```

6. **refactor:** ♻️

   Este tipo de commit é usado para refatorações de código que não introduzem novos recursos ou corrigem bugs.

   Exemplo:

   ```markdown
   git commit -m "refactor(♻️): Simplifique a função de validação de e-mail"
   ```

7. **perf:** 🚀

   Use este tipo de commit para indicar melhorias de desempenho no código.

   Exemplo:

   ```markdown
   git commit -m "perf(🚀): Otimize a consulta do banco de dados"
   ```

8. **test:** ✅

   Utilize este tipo de commit ao adicionar ou melhorar testes no código.

   Exemplo:

   ```markdown
   git commit -m "test(✅): Adicione testes de unidade para a classe User"
   ```

9. **ci:** 🔄

   Use este tipo de commit para atualizações relacionadas à configuração ou scripts de integração contínua.

   Exemplo:

   ```markdown
   git commit -m "ci(🔄): Atualize a configuração do Travis CI"
   ```

10. **feat!:** 💥

    Use este tipo de commit ao adicionar uma nova funcionalidade importante que pode afetar o código existente.

    Exemplo:

    ```markdown
    git commit -m "feat!(💥): Adicione autenticação de dois fatores"
    ```

11. **BREAKING CHANGE:** 💥

    Este tipo de commit é usado para indicar uma mudança que quebra a compatibilidade com versões anteriores.

    Exemplo:

    ```markdown
    git commit -m "BREAKING CHANGE(💥): Atualize a estrutura do banco de dados, é necessária uma migração"
    ```

12. **revert:** ⏪

    Use este tipo de commit para reverter um commit anterior.

    Exemplo:

    ```markdown
    git commit -m "revert(⏪): Reverta o commit xyz que causou problemas"
    ```

## Convenções Adicionais

- Utilizei emojis correspondente ao tipo de commit para facilitar a identificação visual.
- Adicione detalhes adicionais no corpo da mensagem de commit, se necessário, para explicar melhor o que foi feito.

```
Esta documentação fornece diretrizes para mensagens de commit consistentes e informativas, contribuindo para um histórico de código claro e compreensível. Lembre-se de seguir essas convenções ao realizar commits neste projeto.
```
