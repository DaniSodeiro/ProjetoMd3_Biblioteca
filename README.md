Projeto de Banco de Dados - Sistema de Biblioteca

Este projeto consiste na modelagem e implementação de um banco de dados para um sistema de biblioteca. O objetivo é armazenar informações sobre livros, autores, editoras e gêneros, além de estabelecer relacionamentos entre essas entidades.

Modelagem do Banco de Dados

A modelagem foi realizada usando a ferramenta dbDiagram, onde foram criadas quatro entidades principais: Livro, Autor, Editora e Genero. O relacionamento entre as entidades foi definido conforme os requisitos, com os seguintes relacionamentos:

1-Relacionamento entre Livro e Autor: Um livro pode ter vários autores, e um autor pode ter escrito vários livros. Essa relação é representada por uma tabela de junção chamada "Livro_Autor".

2-Relacionamento entre Livro e Editora: Um livro é publicado por uma editora, e uma editora pode publicar vários livros. Essa relação é representada por uma tabela de junção chamada "Livro_Editora".

3-Relacionamento entre Livro e Genero: Um livro pode pertencer a um ou vários gêneros, e um gênero pode conter vários livros. Essa relação é representada por uma tabela de junção chamada "Livro_Genero".

4-Tipo de Relacionamento Diferente: Além dos relacionamentos muitos-para-muitos, também foi estabelecido um relacionamento um-para-muitos entre Autor e Livro, onde um autor pode estar associado a vários livros, mas um livro está associado a apenas um autor.

Implementação do Banco de Dados

A implementação do banco de dados foi realizada usando o MySQL Workbench. Foram criadas as tabelas conforme a modelagem, e foram inseridos pelo menos 5 registros em cada tabela para fins de teste.

link para visualizar o DBDiagram: https://dbdiagram.io/d/64c3dcd702bd1c4a5edf1b07

Desenvolvido por Daniela Sodeiro Silva.
