# Plane da a360

Fork de [makeplane/plane](https://github.com/makeplane/plane) (AGPL-3.0), branch `a360`, travado na **v1.4.2**.
É o painel de gestão dos projetos da fábrica (kanban, issues, aprovações). A fábrica fala com ele pela API
(`PlaneTracker` em `a360-dev-multiagentes/factory`).

- `up.sh` sobe com as imagens oficiais da versão travada (`APP_RELEASE` em `plane.env`).
- `plane.env` tem os segredos e NÃO vai para o git.
- Atualizar: `git fetch upstream --tags && git merge vX.Y.Z` na branch `a360` e trocar `APP_RELEASE`.
- Se alterarmos o código do Plane: buildar as imagens a partir deste fork (`deployments/cli/community/build.yml`)
  e, se outras pessoas usarem pela rede, oferecer o código alterado (AGPL §13).
