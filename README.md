# Environment Settings and Preferences

Collection of environment settings and preferences for different applications on different OS.

###### Reference/Source/Others
<details><summary>All</summary>

<details><summary>VIM Dictionary</summary>    
   
[Reference to dictionary set up](https://www.vivaolinux.com.br/artigo/Corretor-Ortografico-no-Vim-Guia-definitivo)
</details>   

<details><summary> Git configurations </summary>    
         
 [Git global config](https://gist.github.com/Ngofilho/a48a1f5828c707824b0f2e804b79b730.js)    
 [Git hook to prepare commit message](https://gist.github.com/Ngofilho/342d50241f3a02182941e0252da1ea89.js)         
</details>
   
   <details><summary>Vim Cheat Sheet</summary>   
      
   [![](https://github.com/Ngofilho/dotfiles/blob/assets/Vim_Cheat_Sheet.png)]()   
   [![](https://github.com/Ngofilho/dotfiles/blob/assets/kisspng-cheat-sheet-vim-paper-cheating-5ba3e6147cb1a4.2840358315374679245108.png)]()   
   [![](https://github.com/Ngofilho/dotfiles/blob/assets/vi-teclado.png)]()         
   [![](https://github.com/Ngofilho/dotfiles/blob/assets/vim_cheatsheet.png)]()   
   [![](https://github.com/Ngofilho/dotfiles/blob/assets/VIM.png)]()         
      
   </details>
</details>

<details><summary>Linux</summary>   

   <details><summary>Tmux</summary>        

   [![](https://github.com/Ngofilho/dotfiles/blob/assets/TMUX/tmux.png)]()
   </details>
   </details>
<details><summary>MacOS</summary></details>
<details><summary>Windows</summary>
   
   
   <details><summary>Windows Terminal</summary>        
Place these files into user's document folder      
      
[Powershell Profile](https://github.com/Ngofilho/dotfiles/blob/assets/WindowsTerminal/Microsoft.PowerShell_profile.ps1)       
[Customization](https://github.com/Ngofilho/dotfiles/blob/assets/WindowsTerminal/nilo.omp.json)        
###### Reference(s)/Source(s)/Credit(s)/Other(s)  
[Video Reference](https://www.youtube.com/watch?v=5-aK2_WwrmM&t=121s)  
[Takuya's dotfiles](https://github.com/craftzdog/dotfiles-public)      
      <details><summary>Powershell configuration</summary>  
        
         $env:USERPROFILE\.config
	      powershell
		      # config file
		      user_profile.ps1
		      # prompt customizations
		      my.omp.json


            Powershell cmdlet to install Windows Terminal on Windows 10
            Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}  
         
         
</details>  
	   

   </details>  

<details><summary>Windows Shortcut</summary>   

##### Windows  	
**win+ctrl+d** -> Nova area de trabalho   
**win+ctrl+seta lado** -> muda desktop   
**win+ctrl+f4** -> fecha desktop   
**win+m** -> minimiza a janela   
**win+,** -> espia desktop   
**win+d** -> mostra o desktop   
**win+tab** -> verifica tudo que está aberto   
**alt+ctrl+tab** -> disponibiliza a seleção entre janelas   


##### Notepad  
**ctrl+y** -> refaz  
**ctrl+backspace** -> apaga palavra por palavra  

##### Chrome  
**win+.** -> abre a seleção ícones  

##### Navegação  
**Win+t** -> navega entre os itens da barra de tarefa  


**alt+p** -> abre a pré-visualização  


**win+shift+s** -> habilita a seleção de parte da tela para captura de imagens  
**win+v** -> habilita a area de transferencia   

**win+i** -> painel de controle  
</details>      
	
   <details><summary>Vim</summary>        
      
1. Install any plugin manager      
2. Create folder named *.vim* inside user's $HOME dir      
3. Create folder named **.vim\autoload** folder      
4. Create folder named **.vim\bundle** folder         
5. Clone NERDTree to *.vim\budle* folder          
6. Create a file name *.vimrc* in user's $HOME dir    
7. Setup NERDTree plugin initialization to *.vimrc* file      
ps. To use vim from `c:\program files\Git\usr\bin` folder, follow the steps above from 1 to 7.    

   </details>      
   <details><summary>Cmder</summary>        
[Reference to Cmder setting path error](https://github.com/cmderdev/cmder/issues/121#issuecomment-565360486)
* Cmder prompt customization   
   1. [AmrEldib Repo - Cmder,powerline, prompt](https://github.com/AmrEldib/cmder-powerline-prompt) - Main instructions    
   2. [Article explaining Cmder customization](https://amreldib.com/blog/CustomizeWindowsCmderPrompt/) - Article (old instructions)  
   3. [Cmder Exported Config file](https://github.com/Ngofilho/dotfiles/blob/master/20211106_Cmder-Settings.xml)  
   </details>
   </details>
