
-- Tabela Aluno
CREATE TABLE Aluno (
    id_aluno INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    email VARCHAR(100),
    telefone VARCHAR(15),
    PRIMARY KEY (id_aluno)
);

-- Tabela Professor
CREATE TABLE Professor (
    id_professor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    matricula VARCHAR(20),
    email VARCHAR(100),
    formacao VARCHAR(100),
    PRIMARY KEY (id_professor)
);

-- Tabela Curso
CREATE TABLE Curso (
    id_curso INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    duracao INT,
    turno VARCHAR(20),
    PRIMARY KEY (id_curso)
);

-- Tabela Disciplina
CREATE TABLE Disciplina (
    id_disciplina INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT,
    id_curso INT NOT NULL,
    PRIMARY KEY (id_disciplina),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

-- Tabela Turma
CREATE TABLE Turma (
    id_turma INT NOT NULL AUTO_INCREMENT,
    id_disciplina INT NOT NULL,
    id_professor INT NOT NULL,
    semestre VARCHAR(10),
    PRIMARY KEY (id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Tabela Matricula
CREATE TABLE Matricula (
    id_matricula INT NOT NULL AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    nota DECIMAL(5,2),
    PRIMARY KEY (id_matricula),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);
