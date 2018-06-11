-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

jogo ={}
--BUTOES DA LINHA 1
function Botoes( ... )
	jogada="x"
	local JogadaDaVez="x"

	buton11 = display.newRect(60,125,90,90)
	buton11:setFillColor(0,0,0)
	buton12 = display.newRect(160,125,90,90)
	buton12:setFillColor(0,0,0)
	buton13 = display.newRect(260,125,90,90)
	buton13:setFillColor(0,0,0)

	--BUTOES DA LINHA 2
	buton21 = display.newRect(60,225,90,90)
	buton21:setFillColor(0,0,0)
	buton22 = display.newRect(160,225,90,90)
	buton22:setFillColor(0,0,0)
	buton23 = display.newRect(260,225,90,90)
	buton23:setFillColor(0,0,0)

	--BUTOES DA LINHA3
	buton31 = display.newRect(60,325,90,90)
	buton31:setFillColor(0,0,0)
	buton32 = display.newRect(160,325,90,90)
	buton32:setFillColor(0,0,0)
	buton33 = display.newRect(260,325,90,90)
	buton33:setFillColor(0,0,0)

end

function jogo:vez()
	if jogada == JogadaDaVez then
		JogadaDaVez = "o"
	else
		JogadaDaVez = "x"
	end
end

function jogo:b11(event)
	if tabuleiro.tab[1][1]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(20,85,100,165)
			y = display.newLine(100,85,20,165)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[1][1]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(60,125,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[1][1]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b12(event)
	if tabuleiro.tab[1][2]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(120,85,200,165)
			y = display.newLine(200,85,120,165)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[1][2]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(160,125,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[1][2]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b13(event)
	if tabuleiro.tab[1][3]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(220,85,300,165)
			y = display.newLine(300,85,220,165)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[1][3]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(260,125,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[1][3]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end

function jogo:b21(event)
	if tabuleiro.tab[2][1]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(20,185,100,265)
			y = display.newLine(100,185,20,265)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[2][1]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(60,225,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[2][1]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b22(event)
	if tabuleiro.tab[2][2]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(120,185,200,265)
			y = display.newLine(200,185,120,265)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[2][2]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(160,225,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[2][2]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b23(event)
	if tabuleiro.tab[2][3]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(220,185,300,265)
			y = display.newLine(300,185,220,265)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[2][3]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(260,225,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[2][3]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end

function jogo:b31(event)
	if tabuleiro.tab[3][1]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(20,285,100,365)
			y = display.newLine(100,285,20,365)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[3][1]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(60,325,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[3][1]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b32(event)
	if tabuleiro.tab[3][2]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(120,285,200,365)
			y = display.newLine(200,285,120,365)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[3][2]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(160,325,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[3][2]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end
function jogo:b33(event)
	if tabuleiro.tab[3][3]==" " then
		if JogadaDaVez == "x" then
			x = display.newLine(220,285,300,365)
			y = display.newLine(300,285,220,365)
			x.strokeWidth = 5
			y.strokeWidth = 5
			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)
			tabuleiro.tab[3][3]="x"
		elseif JogadaDaVez == "o" then
			x = display.newCircle(260,325,40)
			x:setFillColor( 0 )
			x.strokeWidth = 5
			x:setStrokeColor( 0, 1, 0 )
			tabuleiro.tab[3][3]="o"
		end
		if tabuleiro:verificarVencedor()==false then
			jogo:vez()
		else
			jogo:ContinuarJogo()
		end
	end
end

function jogo:LinparTela()
	display.remove(ganhador)
	display.remove(pegunta)
	display.remove(sim)
	display.remove(nao)
	display.remove(s)
	display.remove(s2)
	display.remove(n)
	display.remove(n2)
end

function jogo:ContinuarJogo()
	pegunta = display.newText("Deseja Jogar Novamente?",160,420)
	sim = display.newRect(100,460,50,30)
	sim:setFillColor(0,0,0)
	s = display.newLine(95,473,78,455)
	s2=display.newLine(93,473,125,445)
	s:setStrokeColor(0,1,0)
	s2:setStrokeColor(0,1,0)
	s.strokeWidth = 3
	s2.strokeWidth = 3

	nao = display.newRect(220,460,50,30)
	nao:setFillColor(0,0,0)
	n = display.newLine(245,475,195,445)
	n2=display.newLine(195,475,245,445)
	n:setStrokeColor(1,0,0)
	n2:setStrokeColor(1,0,0)
	n.strokeWidth = 3
	n2.strokeWidth = 3

	sim:addEventListener("touch", jogo.ReniciarSim)
	nao:addEventListener("touch", jogo.ReiniciarNao)
end

function jogo:ReniciarSim( event )
	tabuleiro.zerarTabuleiro()
	Botoes()
	jogo:LinparTela()
	jogo:LinparTela()
end

function jogo:ReiniciarNao( event )
	os.exit()
end
------------------------------------------------------------------------------------
								--JOGADAS

--DESENHAR TABULEIRO
local linha1 = display.newLine(310,175,10,175)
linha1.strokeWidth = 4
local linha2 = display.newLine(310,275,10,275)
linha2.strokeWidth = 4
local coluna1 = display.newLine(110,375,110,75)
coluna1.strokeWidth = 4
local coluna2 = display.newLine(210,375,210,75)
coluna2.strokeWidth = 4

Botoes()

local texto = display.newText("Jogo Da Velha", 160,20,native.systemFont,25)
texto:setFillColor(0,1,1)

buton11:addEventListener("touch", jogo.b11)
buton12:addEventListener("touch", jogo.b12)
buton13:addEventListener("touch", jogo.b13)

buton21:addEventListener("touch", jogo.b21)
buton22:addEventListener("touch", jogo.b22)
buton23:addEventListener("touch", jogo.b23)

buton31:addEventListener("touch", jogo.b31)
buton32:addEventListener("touch", jogo.b32)
buton33:addEventListener("touch", jogo.b33)



----------------------------------------------------------------------------------
						--TABULEIRO

tabuleiro = {
	tab={{" "," "," "},{" "," "," "},{" "," "," "}}
}
--zerar tabuleiro
function tabuleiro:zerarTabuleiro()
	for linha=1,3 do
		for coluna=1,3 do
			tabuleiro.tab[linha][coluna]=" "
		end
	end
end
--verifica vencedor nas diagonais
function tabuleiro:verificarDiagonais()
	if tabuleiro.tab[1][1]=="x" and tabuleiro.tab[2][2]=="x" and tabuleiro.tab[3][3]=="x" then
		return true
	elseif tabuleiro.tab[1][1]=="o" and tabuleiro.tab[2][2]=="o" and tabuleiro.tab[3][3]=="o" then
		return true
	elseif tabuleiro.tab[1][3]=="x" and tabuleiro.tab[2][2]=="x" and tabuleiro.tab[3][1]=="x" then
		return true
	elseif tabuleiro.tab[1][3]=="o" and tabuleiro.tab[2][2]=="o" and tabuleiro.tab[3][1]=="o" then
		return true
	end
	return false	
end
--verificar vencedor nas linhas
function tabuleiro:verificarLinha()
	for i=1,3 do
		if tabuleiro.tab[i][1]=="x" and tabuleiro.tab[i][2]=="x" and tabuleiro.tab[i][3]=="x" then
			return true
		elseif tabuleiro.tab[i][1]=="o" and tabuleiro.tab[i][2]=="o" and tabuleiro.tab[i][3]=="o" then
			return true
		end
	end
	return false
end
--verificar vencedor nas colunas
function tabuleiro:verificarColuna()
	for i=1, 3 do
		if tabuleiro.tab[1][i]=="x" and tabuleiro.tab[2][i]=="x" and tabuleiro.tab[3][i]=="x" then
			return true
		elseif tabuleiro.tab[1][i]=="o" and tabuleiro.tab[2][i]=="o" and tabuleiro.tab[3][i]=="o" then
			return true
		end
	end
	return false
end
--verificar jogo empatado
function tabuleiro:verificarEmpate()
	for i=1, 3 do
		for j=1, 3 do
			if tabuleiro.tab[i][j]==" " then
				return false
			end
		end
	end
	return true
end

function tabuleiro:verificarVencedor()
	if tabuleiro:verificarLinha()==true then
		ganhador = display.newText("O ganhador foi: "..JogadaDaVez,160,400)
		return true
	elseif tabuleiro:verificarColuna()==true then
		ganhador = display.newText("O ganhador foi: "..JogadaDaVez,160,400)
		return true
	elseif tabuleiro:verificarDiagonais()==true then
		ganhador = display.newText("O ganhador foi: "..JogadaDaVez,160,400)
		return true
	elseif tabuleiro:verificarEmpate()==true then
		ganhador = display.newText("O Jogo Deu Empate",160,400)
		return true
	else
		return false
	end
end
return tabuleiro

		
--[[O butao quando acionado ele deve chamar a funcao JogadaDaVez
que por sua vez ira chamar a funcao desenhar X ou desenhar O.
E essas funcoes irao verifiacar qua butao foi acionado]] 