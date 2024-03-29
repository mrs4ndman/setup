## Lista para LaTeX
### Paquetes
```bash
sudo apt install okular \
pandoc \
pandoc-citeproc \
pdflatex \
texlive-latex-base \
texlive-fonts-recommended \
texlive-fonts-extra \
texlive-latex-extra \
texlive-pictures \
```
<br>


### Vim / Neovim

- texlab LSP para completado ↓
```lua
-- Marksman no es necesario, pero te lo recomiendo para ir usando Markdown para apuntes hasta que aprendas LaTeX
lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = M.capabilities,
})

-- El LSP de LaTeX que sí que ayuda un huevo
lspconfig.texlab.setup({
  on_attach = on_attach,
  capabilities = M.capabilities,
})
```
<br>


- Tema CMP:

```lua
-- En la tabla "dependencies" de nvim-cmp:
{
    -- Resto de dependencias
    "kdheepak/cmp-latex-symbols",
    "hrsh7th/cmp-omni",
    -- Resto de dependencias
}


-- Dentro de tu config en completado.lua
cmp.sources = {
    {
        name = "omni",
        filetype = { "tex" },
    },
    {
        name = "latex_symbols",
        filetype = { "tex", "latex" },
        option = {
            strategy = 0,
            cache = true,
        },
    },
}
```

- Snippets (tengo que buscar una manera mejor):
```python
# -- SNIPPETS --
#
# Nueva entrada de glosario
snippet glosa "Entrada de glosario"  b
	\newglossaryentry{${1:entry}}{
		name = {${2:name}},
		symbol = {\ensuremath{${3:symbol}}},
		description = {${4:description}}
	}

# custom theorem enviornment
snippet customthm "Custom Theorem" b
	\vspace{.1in}
	\begin{customthm}{(${1:label})}
		${2:claim}
	\end{customthm}

	\begin{Answer}
		${0}
	\end{Answer}
#

# framed text enviornment
snippet textbox "Text Box" b
	\begin{tcolorbox}
		${0}
	\end{tcolorbox}
#

# new command
# snippet nc "New Command" b
# 	\newcommand{${1:cmd}}[${2:opt}]{${3:realcmd}} ${0}
#

#usepackage
# snippet up "Use Package" b
# 	\usepackage[${1:options}]{${2:package}} ${0}
#

# \begin{}...\end{}
snippet begin "Begin End"
	\begin{${1:env}}
		${2:${VISUAL}}
	\end{$1}${0}
#

# Align(ed)
snippet align "Align Env" b
	\begin{align${1:ed}}
		\label{${2:name}}
		${0}
	\end{align$1}
#

# Quote
snippet quote "Quotation" b
	\vspace{-.1in}
	\begin{quote}\singlespacing\small
		${0}
		\hfill(p.~${1})
	\end{quote}
	\vspace{.1in}
#

# Labelalign
snippet labelalign "Label Align" b
	\vspace{.05in}
	\begin{labelalign} %\small\onehalfspacing
		\item[${2:\it} ${3:Label:}] ${0}
	\end{labelalign}
	\vspace{.05in}
#

# Enumerate
snippet enum "Enumerate" b
	\begin{enumerate}
		\item[${1:\it }${2:Label:}] ${0}
	\end{enumerate}
#

# Itemize
snippet item "Itemize" b
	\begin{itemize}
		\item[${1:\it} ${2:Label:}] ${0}
	\end{itemize}
#

#Item
snippet i "Item"
	\item[${1:\it} ${2:Label:}] ${0}
#

# Cases
snippet case "Cases" 
	${1:LHS}=	
	\begin{cases}
		${2:Value}, &\text{ if } ${3:case}\\
		${4:Value}, &\text{ otherwise.} ${5:otherwise}.
	\end{cases}${0}
#

# Section
snippet sec "Section" b
	\section{${1:Name}}%
		\label{sec:${2:$1}}
		${0}
#

# Sub Section
snippet sub "Sub Section" b
	\subsection{${1:Name}}%
		\label{sub:${2:$1}}
		${0}
#

# Sub Sub Section
snippet ssub "Sub Sub Section" b
	\subsubsection{${1:Name}}%
		\label{sub:${2:$1}}
		${0}
#

# Hyper Section
snippet hsec "Hyper Section" b
	\hypsection{${1:Name}}%
		\label{sec:${2:$1}}
		${0}
#

# Hyper Sub Section
snippet hsub "Hyper Sub Section" b
	\hypsubsection{${1:Name}}%
		\label{sub:${2:$1}}
		${0}
#

snippet fproof "Footnote Proof" bi
	\footnote{\textit{Proof:} ${1:Begin} \qed}${0}
#

snippet lab "Label" wi
	\label{${1:LABEL}}${0}
#

snippet fn "Footnote" wi
	\footnote{${1:FOOTNOTE}}${0}
#

snippet fig "Figure environment" b
	\begin{figure}
	\begin{center}
		\includegraphics[scale=${1}]{Figures/${2}}
	\end{center}
	\caption{${3}}
	\label{fig:${4}}
	\end{figure}
	${0}
#

snippet tikz "Tikz environment" b
	\begin{figure}[htpb]
	\begin{center}
	\begin{tikzpicture}[scale=${1:1}, transform shape]
		${2}
	\end{tikzpicture}
	\end{center}
	\caption{${3}}%
	\label{fig:${4}}
	\end{figure}
	${0}

snippet lemma "Lemma" bi
	\begin{Lthm} \label{${1:label}}
		${0:${VISUAL}}
	\end{Lthm}

snippet prop "Proposition" bi
	\begin{Pthm} \label{${1:label}}
		${0:${VISUAL}}
	\end{Pthm}

snippet thrm "Theorem" bi
	\begin{theorem} \label{${1:label}}
		${0:${VISUAL}}
	\end{theorem}

snippet prf "Proof" bi
	\begin{proof} 
		${0:${VISUAL}}
	\end{proof}

snippet def "Definition" bi
	\begin{definition}[$1]
		${0:${VISUAL}}
	\end{definition}

snippet prob "Problem" bi
	\begin{problem}[$1]
		${0:${VISUAL}}
	\end{problem}

snippet corl "Corollary" bi
	\begin{corollary}[$1]
		${0:${VISUAL}}
	\end{corollary}

snippet example "Example" bi
	\begin{example}[$1]
		${0:${VISUAL}}
	\end{example}
```

