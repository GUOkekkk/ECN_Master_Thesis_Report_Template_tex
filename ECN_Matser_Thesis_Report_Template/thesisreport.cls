\pdfminorversion=5
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesisreport}[09/09/2010, v1.0]
\LoadClass[12pt,a4paper]{book}

\usepackage[utf8]{inputenc}
\usepackage[namelimits,sumlimits]{amsmath}
\usepackage{amsfonts,amssymb,amsthm}
\usepackage{graphicx}
\usepackage[hidelinks]{hyperref}
\usepackage{fancyhdr}
\usepackage{url}
\usepackage[hmargin=2cm,vmargin=2cm]{geometry}
\usepackage{array}
\usepackage{dirtree}
\usepackage{enumitem}
\usepackage[explicit]{titlesec}
\usepackage{etoolbox}
\usepackage{tabularx}
\usepackage{booktabs}
\usepackage{mathrsfs}
\usepackage{algorithm,float}
\usepackage{lipsum}
\usepackage{algorithm}
\usepackage{algorithmic}
% \usepackage{algpseudocode}
\usepackage{subcaption}


\renewcommand{\algorithmicrequire}{ \textbf{Input:}}     %Use Input in the format of Algorithm
\renewcommand{\algorithmicensure}{ \textbf{Output:}}    %UseOutput in the format of Algorithm
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{ \cite{#1}}}}

\newenvironment{breakablealgorithm}
  {% \begin{breakablealgorithm}
   \begin{center}
     \refstepcounter{algorithm}% New algorithm
     \hrule height.8pt depth0pt \kern2pt% \@fs@pre for \@fs@ruled
     \renewcommand{\caption}[2][\relax]{% Make a new \caption
       {\raggedright\textbf{\ALG@name~\thealgorithm} ##2\par}%
       \ifx\relax##1\relax % #1 is \relax
         \addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##2}%
       \else % #1 is not \relax
         \addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##1}%
       \fi
       \kern2pt\hrule\kern2pt
     }
  }{% \end{breakablealgorithm}
     \kern2pt\hrule\relax% \@fs@post for \@fs@ruled
   \end{center}
  }
\makeatother



 \bibliographystyle{IEEEtran}
 

\makeatletter
\patchcmd{\ttlh@hang}{\parindent\z@}{\parindent\z@\leavevmode}{}{}
\patchcmd{\ttlh@hang}{\noindent}{}{}{}
\makeatother

\fancyhead{}
\renewcommand{\headrulewidth}{0.pt}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\titleformat{\chapter}[display] {\raggedleft\fontsize{14pt}{12pt}\sc}{{\chaptertitlename\ \thechapter}}{5pt}{{\raggedleft\bf\Huge #1} \vspace{5pt}  \hrule}  

\renewcommand{\cleardoublepage}{\clearpage}
