% calculus.cls
% Heavily modified version of the templates found on http://ankurdave.com/tex

\ProvidesClass{calculus}

\LoadClass[a4paper, 11pt]{article}

% fields that user can set (in addition to title, author, etc)
\makeatletter
	\newcommand{\studentnumber}[1]{\def \@candidatenum {#1}}
	\newcommand{\subtitle}[1]{\def \@subtitle {#1}}
	\newcommand{\subject}[1]{\def \@subject {#1}}
	\newcommand{\email}[1]{\def \@email {#1}}
	\studentnumber{}
	\subtitle{}
	\subject{}
	\email{}
\makeatother

\usepackage[utf8]{inputenc}
\usepackage[danish]{babel}
\usepackage[T1]{fontenc}
\usepackage[hmargin=2.5cm,vmargin=3cm]{geometry}

\usepackage{amsmath,amssymb, mathtools}
\usepackage{bm}
\usepackage{amsthm}

\usepackage{graphicx}

% page headings and numbering
\makeatletter
	\usepackage{fancyhdr}
	\pagestyle{fancy}
	\renewcommand{\footrulewidth}{\headrulewidth}
	\fancyhf{}

	\newcommand{\updateheaders}{
		\ifx \@candidatenum \@empty
			\relax
		\else
			\fancyhead[R]{\@title \\ \@subject }
		\fi
		
		\ifx \@author \@empty
			\relax
		\else
			\fancyhead[L]{\@author \\ \@candidatenum}
		\fi

		\ifx \@subtitle \@empty
			\fancyfoot[L]{\relax}
			\fancyfoot[C]{\thepage}
		\else
			\fancyfoot[L]{\@title: \@subtitle}
			\fancyfoot[R]{\thepage}
		\fi
	}

	\fancyhead[R]{\thepage}
\makeatother

% title
\makeatletter
\def \maketitle {
	\begin{titlepage}
		~\vfill
		\begin{center}
			{\Large \@title} \\
			\ifx \@subtitle \@empty
				\relax
			\else
				\vspace{0.5em}
				{\large \@subtitle} \\
			\fi
		
			\vspace{0.5in}
		
			\ifx @author \@empty
				\relax
			\else
				\@author \\
				\ifx\@email\@empty
					\relax
				\else
					\texttt{\@email} \\
				\fi
				\ifx \@candidatenum \@empty
					\relax
				\else
					\@candidatenum \\
				\fi
				\vspace{0.5in}
			\fi
				
			\@date
		\end{center}
		\vfill
	\end{titlepage}
}
\makeatother
