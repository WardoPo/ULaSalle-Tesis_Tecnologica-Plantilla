\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesis_tecnologica}[2021/03/28 Clase para Informe de Investigación creado por WardoPo]

\LoadClass{report}

\usepackage[spanish]{babel}
\usepackage{titlesec}
\usepackage{changepage}      
\usepackage{enumitem}
\usepackage[acronym]{glossaries}

% Variables

\def\assessor#1{\gdef\@assessor{#1}}
\def\@assessor{\@latex@warning@no@line{No \noexpand\assessor given}}

% Estilo de titulos
\titleformat{\chapter}{\bfseries\centering\LARGE}{\chaptername\space\Roman{chapter}: }{0pt}{}{}
\titleformat{\section}{\bfseries}{}{0pt}{}{}
\titleformat{\subsection}{\bfseries}{\hspace{0.63cm}\alph{subsection}. }{0pt}{}{}

% Estilos de Listas
\setlist[itemize]{left=1.25cm .. 2.5cm}
\setlist[enumerate]{left=0cm .. 1.25cm} %%Second Line Indentation to be revised

\newcounter{descriptcount}
\renewcommand*\thedescriptcount{\alph{descriptcount}}

\setlist[description]{before={\setcounter{descriptcount}{0}},font=\normalfont\stepcounter{descriptcount}\thedescriptcount)\qquad\quad,leftmargin = 0cm}

\setlength{\parindent}{0pt}

% Ambientes
\newenvironment{dedicatoria}
{
  \titleformat{\chapter}{\bfseries\raggedleft\LARGE}{}{0pt}{}{}
  \chapter*{Dedicatoria}
  \thispagestyle{empty}
  \itshape
  \begin{flushright}
}
{  
  \end{flushright}
}

\newenvironment{agradecimientos}
{
    \chapter*{Agradecimientos}
}
{}

\newenvironment{resumen}
{
    \chapter*{Resumen}
}
{}

\renewenvironment{abstract}
{
     \chapter*{Abstract}
}
{}
  
\newenvironment{palabras_clave}
{
    \chapter*{Palabras Clave}
}
{}

\newenvironment{subseccion}[1]
{
    \subsection{#1}
    \begin{adjustwidth}{1.25cm}{}
    \setlist[itemize]{left=0cm .. 1.25cm}
}
{
    \end{adjustwidth}
}

\newenvironment{conclusiones}
{
    \chapter*{Conclusiones}
}
{}
% Babel

\addto{\captionsenglish}{\renewcommand{\acronymname}{Acronyms and Abbreviations}}
\addto{\captionsspanish}{\renewcommand{\acronymname}{Índice de Abreviaturas y Siglas}}

\addto{\captionsenglish}{\renewcommand{\glossaryname}{Term  Glossary}}
\addto{\captionsspanish}{\renewcommand{\glossaryname}{Glosario de Términos}}

\addto{\captionsenglish}{\renewcommand{\bibname}{References}}
\addto{\captionsspanish}{\renewcommand{\bibname}{Referencias}}