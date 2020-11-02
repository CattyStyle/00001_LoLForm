##########################################################################################
#createForm

$scriptpath = $script:myInvocation.MyCommand.path
$dir = Split-Path $scriptpath

##########################################################################################
function Get-Cooldowns_bySummonerSpellName($arg_spellName){
    if($arg_spellName -eq "SummonerBoost"){
        return [TimeSpan]::New(0,0,3,30)
    }
    elseif($arg_spellName -eq "SummonerExhaust"){
        return [TimeSpan]::New(0,0,3,30)
    }
    elseif($arg_spellName -eq "SummonerFlash"){
        return [TimeSpan]::New(0,0,5,0)
    }
    elseif($arg_spellName -eq "SummonerHaste"){
        return [TimeSpan]::New(0,0,3,0)
    }
    elseif($arg_spellName -eq "SummonerHeal"){
        return [TimeSpan]::New(0,0,4,0)
    }
    elseif($arg_spellName -eq "SummonerBarrier"){
        return [TimeSpan]::New(0,0,3,0)
    }
    elseif($arg_spellName -eq "SummonerSmite"){
        return [TimeSpan]::New(0,0,0,15)
    }
    elseif($arg_spellName -eq "SummonerTeleport"){
        return [TimeSpan]::New(0,0,7,0)
    }
    elseif($arg_spellName -eq "SummonerMana"){
        return [TimeSpan]::New(0,0,4,0)
    }
    elseif($arg_spellName -eq "SummonerDot"){
        return [TimeSpan]::New(0,0,3,0)
    }
}


##########################################################################################
function Invoke-Forms($Informations_Champions) {
    #######################################################
    #Invoke-Assemlies
        Add-Type -AssemblyName System.Windows.Forms
        Add-Type -AssemblyName System.Drawing
    
    #######################################################
    #Watch_01
    $Watch_01 = New-Object System.Diagnostics.Stopwatch
        $Timer_01 = New-Object System.Windows.Forms.Timer
        $Timer_01.Interval=10
        $Timer_01.Enabled=$True
        $spellCool_01 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[0][1])
        $Time_01 = {
            $Now_01 = $spellCool_01 - $Watch_01.Elapsed
            $ShowTime_01.textAlign = "TopCenter"
            If($Now_01 -le 0){
            $ShowTime_01.Text = "使用可能"
            $ShowTIme_01.backColor = "#ffff00"
            }elseif($Watch_01.IsRunning -eq $False){
            $ShowTime_01.Text = "使用可能"
            $ShowTIme_01.backColor = "#ffff00"
            }Else{
            $ShowTime_01.Text = ("$Now_01".substring(0,8))  
            }
        }
        $Timer_01.Add_Tick($Time_01)
        $Timer_01.Start()
    
    #Watch_02
    $Watch_02 = New-Object System.Diagnostics.Stopwatch
        $Timer_02 = New-Object System.Windows.Forms.Timer
        $Timer_02.Interval=10
        $Timer_02.Enabled=$True
        $spellCool_02 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[0][2])
        $Time_02 = {
            $Now_02 = $spellCool_02 - $Watch_02.Elapsed
            $ShowTime_02.textAlign = "TopCenter"
            If($Now_02 -le 0){
            $ShowTime_02.Text = "使用可能"
            $ShowTIme_02.backColor = "#ffff00"
            }elseif($Watch_02.IsRunning -eq $False){
            $ShowTime_02.Text = "使用可能"
            $ShowTIme_02.backColor = "#ffff00"
            }Else{
            $ShowTime_02.Text = ("$Now_02".substring(0,8))  
            }
        }
        $Timer_02.Add_Tick($Time_02)
        $Timer_02.Start()

    #Watch_03
    $Watch_03 = New-Object System.Diagnostics.Stopwatch
        $Timer_03 = New-Object System.Windows.Forms.Timer
        $Timer_03.Interval=10
        $Timer_03.Enabled=$True
        $spellCool_03 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[1][1])
        $Time_03 = {
            $Now_03 = $spellCool_03 - $Watch_03.Elapsed
            $ShowTime_03.textAlign = "TopCenter"
            If($Now_03 -le 0){
            $ShowTime_03.Text = "使用可能"
            $ShowTIme_03.backColor = "#ffff00"
            }elseif($Watch_03.IsRunning -eq $False){
            $ShowTime_03.Text = "使用可能"
            $ShowTIme_03.backColor = "#ffff00"
            }Else{
            $ShowTime_03.Text = ("$Now_03".substring(0,8))  
            }
        }
        $Timer_03.Add_Tick($Time_03)
        $Timer_03.Start()
    
    #Watch_04
    $Watch_04 = New-Object System.Diagnostics.Stopwatch
        $Timer_04 = New-Object System.Windows.Forms.Timer
        $Timer_04.Interval=10
        $Timer_04.Enabled=$True
        $spellCool_04 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[1][2])
        $Time_04 = {
            $Now_04 = $spellCool_04 - $Watch_04.Elapsed
            $ShowTime_04.textAlign = "TopCenter"
            If($Now_04 -le 0){
            $ShowTime_04.Text = "使用可能"
            $ShowTIme_04.backColor = "#ffff00"
            }elseif($Watch_04.IsRunning -eq $False){
            $ShowTime_04.Text = "使用可能"
            $ShowTIme_04.backColor = "#ffff00"
            }Else{
            $ShowTime_04.Text = ("$Now_04".substring(0,8))  
            }
        }
        $Timer_04.Add_Tick($Time_04)
        $Timer_04.Start()
    
    #Watch_05
    $Watch_05 = New-Object System.Diagnostics.Stopwatch
        $Timer_05 = New-Object System.Windows.Forms.Timer
        $Timer_05.Interval=10
        $Timer_05.Enabled=$True
        $spellCool_05 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[2][1])
        $Time_05 = {
            $Now_05 = $spellCool_05 - $Watch_05.Elapsed
            $ShowTime_05.textAlign = "TopCenter"
            If($Now_05 -le 0){
            $ShowTime_05.Text = "使用可能"
            $ShowTIme_05.backColor = "#ffff00"
            }elseif($Watch_05.IsRunning -eq $False){
            $ShowTime_05.Text = "使用可能"
            $ShowTIme_05.backColor = "#ffff00"
            }Else{
            $ShowTime_05.Text = ("$Now_05".substring(0,8))  
            }
        }
        $Timer_05.Add_Tick($Time_05)
        $Timer_05.Start()
    
    #Watch_06
    $Watch_06 = New-Object System.Diagnostics.Stopwatch
        $Timer_06 = New-Object System.Windows.Forms.Timer
        $Timer_06.Interval=10
        $Timer_06.Enabled=$True
        $spellCool_06 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[2][2])
        $Time_06 = {
            $Now_06 = $spellCool_06 - $Watch_06.Elapsed
            $ShowTime_06.textAlign = "TopCenter"
            If($Now_06 -le 0){
            $ShowTime_06.Text = "使用可能"
            $ShowTIme_06.backColor = "#ffff00"
            }elseif($Watch_06.IsRunning -eq $False){
            $ShowTime_06.Text = "使用可能"
            $ShowTIme_06.backColor = "#ffff00"
            }Else{
            $ShowTime_06.Text = ("$Now_06".substring(0,8))  
            }
        }
        $Timer_06.Add_Tick($Time_06)
        $Timer_06.Start()
    
    #Watch_07
    $Watch_07 = New-Object System.Diagnostics.Stopwatch
        $Timer_07 = New-Object System.Windows.Forms.Timer
        $Timer_07.Interval=10
        $Timer_07.Enabled=$True
        $spellCool_07 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[3][1])
        $Time_07 = {
            $Now_07 = $spellCool_07 - $Watch_07.Elapsed
            $ShowTime_07.textAlign = "TopCenter"
            If($Now_07 -le 0){
            $ShowTime_07.Text = "使用可能"
            $ShowTIme_07.backColor = "#ffff00"
            }elseif($Watch_07.IsRunning -eq $False){
            $ShowTime_07.Text = "使用可能"
            $ShowTIme_07.backColor = "#ffff00"
            }Else{
            $ShowTime_07.Text = ("$Now_07".substring(0,8))  
            }
        }
        $Timer_07.Add_Tick($Time_07)
        $Timer_07.Start()
    
    #Watch_08
    $Watch_08 = New-Object System.Diagnostics.Stopwatch
        $Timer_08 = New-Object System.Windows.Forms.Timer
        $Timer_08.Interval=10
        $Timer_08.Enabled=$True
        $spellCool_08 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[3][2])
        $Time_08 = {
            $Now_08 = $spellCool_08 - $Watch_08.Elapsed
            $ShowTime_08.textAlign = "TopCenter"
            If($Now_08 -le 0){
            $ShowTime_08.Text = "使用可能"
            $ShowTIme_08.backColor = "#ffff00"
            }elseif($Watch_08.IsRunning -eq $False){
            $ShowTime_08.Text = "使用可能"
            $ShowTIme_08.backColor = "#ffff00"
            }Else{
            $ShowTime_08.Text = ("$Now_08".substring(0,8))  
            }
        }
        $Timer_08.Add_Tick($Time_08)
        $Timer_08.Start()
    
    #Watch_09
    $Watch_09 = New-Object System.Diagnostics.Stopwatch
        $Timer_09 = New-Object System.Windows.Forms.Timer
        $Timer_09.Interval=10
        $Timer_09.Enabled=$True
        $spellCool_09 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[4][1])
        $Time_09 = {
            $Now_09 = $spellCool_09 - $Watch_09.Elapsed
            $ShowTime_09.textAlign = "TopCenter"
            If($Now_09 -le 0){
            $ShowTime_09.Text = "使用可能"
            $ShowTIme_09.backColor = "#ffff00"
            }elseif($Watch_09.IsRunning -eq $False){
            $ShowTime_09.Text = "使用可能"
            $ShowTIme_09.backColor = "#ffff00"
            }Else{
            $ShowTime_09.Text = ("$Now_09".substring(0,8))  
            }
        }
        $Timer_09.Add_Tick($Time_09)
        $Timer_09.Start()
    
    #Watch_10
    $Watch_10 = New-Object System.Diagnostics.Stopwatch
        $Timer_10 = New-Object System.Windows.Forms.Timer
        $Timer_10.Interval=10
        $Timer_10.Enabled=$True
        $spellCool_10 = Get-Cooldowns_bySummonerSpellName($Informations_Champions[4][1])
        $Time_10 = {
            $Now_10 = $spellCool_10 - $Watch_10.Elapsed
            $ShowTime_10.textAlign = "TopCenter"
            If($Now_10 -le 0){
            $ShowTime_10.Text = "使用可能"
            $ShowTIme_10.backColor = "#ffff00"
            }elseif($Watch_10.IsRunning -eq $False){
            $ShowTime_10.Text = "使用可能"
            $ShowTIme_10.backColor = "#ffff00"
            }Else{
            $ShowTime_10.Text = ("$Now_10".substring(0,8))  
            }
        }
        $Timer_10.Add_Tick($Time_10)
        $Timer_10.Start()
    
    #######################################################
    #ShowTime_01
        $ShowTime_01 = New-Object System.Windows.Forms.Label
        $ShowTime_01.Location = "80,20"
        $ShowTime_01.Size = "80,20"
        $ShowTime_01.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_01.textAlign = "TopCenter"
        $ShowTime_01.Text = "00:00:00"
        $ShowTime_01.BorderStyle = "Fixed3D"
    
    #ShowTime_02
        $ShowTime_02 = New-Object System.Windows.Forms.Label
        $ShowTime_02.Location = "80,40"
        $ShowTime_02.Size = "80,20"
        $ShowTime_02.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_02.textAlign = "TopCenter"
        $ShowTime_02.Text = "00:00:00"
        $ShowTime_02.BorderStyle = "Fixed3D"
    
    #ShowTime_03
        $ShowTime_03 = New-Object System.Windows.Forms.Label
        $ShowTime_03.Location = "80,68"
        $ShowTime_03.Size = "80,20"
        $ShowTime_03.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_03.textAlign = "TopCenter"
        $ShowTime_03.Text = "00:00:00"
        $ShowTime_03.BorderStyle = "Fixed3D"
    
    #ShowTime_04
        $ShowTime_04 = New-Object System.Windows.Forms.Label
        $ShowTime_04.Location = "80,88"
        $ShowTime_04.Size = "80,20"
        $ShowTime_04.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_04.textAlign = "TopCenter"
        $ShowTime_04.Text = "00:00:00"
        $ShowTime_04.BorderStyle = "Fixed3D"
    
    #ShowTime_05
        $ShowTime_05 = New-Object System.Windows.Forms.Label
        $ShowTime_05.Location = "80,118"
        $ShowTime_05.Size = "80,20"
        $ShowTime_05.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_05.textAlign = "TopCenter"
        $ShowTime_05.Text = "00:00:00"
        $ShowTime_05.BorderStyle = "Fixed3D"
    
    #ShowTime_06
        $ShowTime_06 = New-Object System.Windows.Forms.Label
        $ShowTime_06.Location = "80,138"
        $ShowTime_06.Size = "80,20"
        $ShowTime_06.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_06.textAlign = "TopCenter"
        $ShowTime_06.Text = "00:00:00"
        $ShowTime_06.BorderStyle = "Fixed3D"
    
    #ShowTime_07
        $ShowTime_07 = New-Object System.Windows.Forms.Label
        $ShowTime_07.Location = "80,167"
        $ShowTime_07.Size = "80,20"
        $ShowTime_07.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_07.textAlign = "TopCenter"
        $ShowTime_07.Text = "00:00:00"
        $ShowTime_07.BorderStyle = "Fixed3D"
    
    #ShowTime_08
        $ShowTime_08 = New-Object System.Windows.Forms.Label
        $ShowTime_08.Location = "80,187"
        $ShowTime_08.Size = "80,20"
        $ShowTime_08.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_08.textAlign = "TopCenter"
        $ShowTime_08.Text = "00:00:00"
        $ShowTime_08.BorderStyle = "Fixed3D"
    
    #ShowTime_09
        $ShowTime_09 = New-Object System.Windows.Forms.Label
        $ShowTime_09.Location = "80,216"
        $ShowTime_09.Size = "80,20"
        $ShowTime_09.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_09.textAlign = "TopCenter"
        $ShowTime_09.Text = "00:00:00"
        $ShowTime_09.BorderStyle = "Fixed3D"
    
    #ShowTime_10
        $ShowTime_10 = New-Object System.Windows.Forms.Label
        $ShowTime_10.Location = "80,236"
        $ShowTime_10.Size = "80,20"
        $ShowTime_10.Font = New-Object System.Drawing.Font("メイリオ",10.5)
        $ShowTime_10.textAlign = "TopCenter"
        $ShowTime_10.Text = "00:00:00"
        $ShowTime_10.BorderStyle = "Fixed3D"
    
    #######################################################
    #ChampionSplashs
    #Splash_01
        $Form_Img_SplashArt_01 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SplashArt_01.Size = New-Object System.Drawing.Size(40, 40)
        $image_url_01 = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/champion/" + $Informations_Champions[0][0] + ".png")
        $Form_Img_SplashArt_01.ImageLocation = $image_url_01
        $Form_Img_SplashArt_01.WaitOnLoad = "True"
        #$Form_Img_SplashArt_01.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\Splash\Lulu.bmp")
        $Form_Img_SplashArt_01.Location = New-Object System.Drawing.Point(20,20) 
        $Form_Img_SplashArt_01.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #Splash_02
        $Form_Img_SplashArt_02 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SplashArt_02.Size = New-Object System.Drawing.Size(40, 40)
        #write-host $Informations_Champions[2][0]
        $image_url_02 = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/champion/" + $Informations_Champions[1][0] + ".png")
        $Form_Img_SplashArt_02.ImageLocation = $image_url_02
        $Form_Img_SplashArt_02.WaitOnLoad = "True"
        #$Form_Img_SplashArt_02.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\Splash\Lulu.bmp")
        $Form_Img_SplashArt_02.Location = New-Object System.Drawing.Point(20,68) 
        $Form_Img_SplashArt_02.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #Splash_03
        $Form_Img_SplashArt_03 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SplashArt_03.Size = New-Object System.Drawing.Size(40, 40)
        $image_url_03 = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/champion/" + $Informations_Champions[2][0] + ".png")
        $Form_Img_SplashArt_03.ImageLocation = $image_url_03
        #$Form_Img_SplashArt_03.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\Splash\Lulu.bmp")
        $Form_Img_SplashArt_03.Location = New-Object System.Drawing.Point(20,118) 
        $Form_Img_SplashArt_03.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #Splash_04
        $Form_Img_SplashArt_04 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SplashArt_04.Size = New-Object System.Drawing.Size(40, 40)
        $image_url_04 = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/champion/" + $Informations_Champions[3][0] + ".png")
        $Form_Img_SplashArt_04.ImageLocation = $image_url_04
        #$Form_Img_SplashArt_04.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\Splash\Lulu.bmp")
        $Form_Img_SplashArt_04.Location = New-Object System.Drawing.Point(20,167) 
        $Form_Img_SplashArt_04.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #Splash_05
        $Form_Img_SplashArt_05 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SplashArt_05.Size = New-Object System.Drawing.Size(40, 40)
        $image_url_05 = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/champion/" + $Informations_Champions[4][0] + ".png")
        $Form_Img_SplashArt_05.ImageLocation = $image_url_05
        #$Form_Img_SplashArt_05.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\Splash\Lulu.bmp")
        $Form_Img_SplashArt_05.Location = New-Object System.Drawing.Point(20,216) 
        $Form_Img_SplashArt_05.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #######################################################
    #SummonerSpells
    #SS_01
        $Form_Img_SummonerSpells_01 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_01.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_01.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[0][1]+ ".png")
        #$Form_Img_SummonerSpells_01.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_01.Location = New-Object System.Drawing.Point(60,20) 
        $Form_Img_SummonerSpells_01.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_02
        $Form_Img_SummonerSpells_02 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_02.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_02.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[0][2]+ ".png")
        #$Form_Img_SummonerSpells_02.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_02.Location = New-Object System.Drawing.Point(60,40) 
        $Form_Img_SummonerSpells_02.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_03
        $Form_Img_SummonerSpells_03 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_03.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_03.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[1][1]+ ".png")
        #$Form_Img_SummonerSpells_03.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_03.Location = New-Object System.Drawing.Point(60,68) 
        $Form_Img_SummonerSpells_03.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_04
        $Form_Img_SummonerSpells_04 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_04.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_04.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[1][2]+ ".png")
        #$Form_Img_SummonerSpells_04.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_04.Location = New-Object System.Drawing.Point(60,88) 
        $Form_Img_SummonerSpells_04.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_05
        $Form_Img_SummonerSpells_05 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_05.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_05.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[2][1]+ ".png")
        #$Form_Img_SummonerSpells_05.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_05.Location = New-Object System.Drawing.Point(60,118) 
        $Form_Img_SummonerSpells_05.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_06
        $Form_Img_SummonerSpells_06 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_06.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_06.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[2][2]+ ".png")
        #$Form_Img_SummonerSpells_06.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_06.Location = New-Object System.Drawing.Point(60,138) 
        $Form_Img_SummonerSpells_06.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_07
        $Form_Img_SummonerSpells_07 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_07.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_07.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[3][1]+ ".png")
        #$Form_Img_SummonerSpells_07.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_07.Location = New-Object System.Drawing.Point(60,167) 
        $Form_Img_SummonerSpells_07.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_08
        $Form_Img_SummonerSpells_08 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_08.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_08.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[3][2]+ ".png")
        #$Form_Img_SummonerSpells_08.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_08.Location = New-Object System.Drawing.Point(60,187) 
        $Form_Img_SummonerSpells_08.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_09
        $Form_Img_SummonerSpells_09 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_09.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_09.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[4][1]+ ".png")
        #$Form_Img_SummonerSpells_09.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_09.Location = New-Object System.Drawing.Point(60,216) 
        $Form_Img_SummonerSpells_09.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #SS_10
        $Form_Img_SummonerSpells_10 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_SummonerSpells_10.Size = New-Object System.Drawing.Size(20, 20)
        $Form_Img_SummonerSpells_10.ImageLocation = ("http://ddragon.leagueoflegends.com/cdn/10.21.1/img/spell/" + $Informations_Champions[4][2]+ ".png")
        #$Form_Img_SummonerSpells_10.Image = [System.Drawing.Image]::FromFile("E:\Projects\Work\LoL_ingameinfo\Sources\LoadingScreen\SummonerSpells\Flash.bmp")
        $Form_Img_SummonerSpells_10.Location = New-Object System.Drawing.Point(60,236) 
        $Form_Img_SummonerSpells_10.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    
    #######################################################
    #ShowTime_01
        $Form_Img_ShowTime_01 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_ShowTime_01.Size = New-Object System.Drawing.Size(150,20)
        $Form_Img_ShowTime_01.Image = [System.Drawing.Image]::FromFile($dir + "\Forms\ShowTime.bmp")
        $Form_Img_ShowTime_01.Location = New-Object System.Drawing.Point(80,20) 
        $Form_Img_ShowTime_01.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    #$Form_Img_ShowTime_01.BorderStyle = BorderStyle.Fixed3D
    #$Form_Img_ShowTime_01.Controls.AddRange($Label)
    
    #######################################################
    #BackGround_01
        $Form_Img_BackGround_01 = New-Object System.Windows.Forms.PictureBox
        $Form_Img_BackGround_01.Size = New-Object System.Drawing.Size(300,300)
        $Form_Img_BackGround_01.Image = [System.Drawing.Image]::FromFile($dir + "\Forms\BackGround.bmp")
        $Form_Img_BackGround_01.Location = New-Object System.Drawing.Point(0,0) 
        $Form_Img_BackGround_01.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
    #$Form_Img_ShowTime_01.BorderStyle = BorderStyle.Fixed3D
    #$Form_Img_ShowTime_01.Controls.AddRange($Label)
    
    #######################################################
    #MainForm
        $Time_Form = New-Object System.Windows.Forms.Form
        $Time_Form.Size = "257,313"
        $Time_Form.font = New-Object System.Drawing.Font("メイリオ",9)
        $Time_Form.StartPosition = "CenterScreen"
        $Time_Form.MinimizeBox = $False
        $Time_Form.MaximizeBox = $False
        $Time_Form.TopLevel = $True
        $Time_Form.Text = "サモスペ監視"
    
    #######################################################
    #Buttons
    $Button = New-Object System.Windows.Forms.Button
    $Button.Location = "10,70"
    $Button.Size = "70,50"
    $Button.Text = "開 始"
    $Click = {
        IF ( $Watch.IsRunning -eq $False ) {	#ストップウォッチが起動していない時 = 計測を開始
            $Timer.Start()
            $Watch.Start()
            $ResetButton.Enabled = $false
            $Button.Text = "停 止"
        }
        else { 					#ストップウォッチが起動している時 = 計測を停止
            $Timer.Stop()
            $Watch.Stop()
            $ResetButton.Enabled = $true
            $Button.Text = "再 開"
        }
    }
    $Button.Add_Click($Click)
    
    #ResetButton_01
    $ResetButton_01 = New-Object System.Windows.Forms.Button
    $ResetButton_01.Location = "166,20"
    $ResetButton_01.Size = "55,20"
    $ResetButton_01.Text = "リセット"
    $ResetButton_01.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_01.Enabled = $True
          $Reset_01 = {
       if($Watch_01.IsRunning -eq $False){
          $Watch_01.Start()
  }elseif($Watch_01.IsRunning -eq $True){
          $Watch_01.Reset()
          $Watch_01.Stop()
    }
       $ShowTIme_01.BackColor = "#ffffff"
    }
    $ResetButton_01.Add_Click($Reset_01)
    
    #ResetButton_02
    $ResetButton_02 = New-Object System.Windows.Forms.Button
    $ResetButton_02.Location = "166,40"
    $ResetButton_02.Size = "55,20"
    $ResetButton_02.Text = "リセット"
    $ResetButton_02.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_02.Enabled = $True
          $Reset_02 = {
       if($Watch_02.IsRunning -eq $False){
          $Watch_02.Start()
  }elseif($Watch_02.IsRunning -eq $True){
          $Watch_02.Reset()
          $Watch_02.Stop()
    }
       $ShowTIme_02.BackColor = "#ffffff"
    }
    $ResetButton_02.Add_Click($Reset_02)
    
    #ResetButton_03
    $ResetButton_03 = New-Object System.Windows.Forms.Button
    $ResetButton_03.Location = "166,68"
    $ResetButton_03.Size = "55,20"
    $ResetButton_03.Text = "リセット"
    $ResetButton_03.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_03.Enabled = $True
          $Reset_03 = {
       if($Watch_03.IsRunning -eq $False){
          $Watch_03.Start()
  }elseif($Watch_03.IsRunning -eq $True){
          $Watch_03.Reset()
          $Watch_03.Stop()
    }
       $ShowTIme_03.BackColor = "#ffffff"
    }
    $ResetButton_03.Add_Click($Reset_03)
    
    #ResetButton_04
    $ResetButton_04 = New-Object System.Windows.Forms.Button
    $ResetButton_04.Location = "166,88"
    $ResetButton_04.Size = "55,20"
    $ResetButton_04.Text = "リセット"
    $ResetButton_04.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_04.Enabled = $True
          $Reset_04 = {
       if($Watch_04.IsRunning -eq $False){
          $Watch_04.Start()
  }elseif($Watch_04.IsRunning -eq $True){
          $Watch_04.Reset()
          $Watch_04.Stop()
    }
       $ShowTIme_04.BackColor = "#ffffff"
    }
    $ResetButton_04.Add_Click($Reset_04)
    
    #ResetButton_05
    $ResetButton_05 = New-Object System.Windows.Forms.Button
    $ResetButton_05.Location = "166,118"
    $ResetButton_05.Size = "55,20"
    $ResetButton_05.Text = "リセット"
    $ResetButton_05.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_05.Enabled = $True
          $Reset_05 = {
       if($Watch_05.IsRunning -eq $False){
          $Watch_05.Start()
  }elseif($Watch_05.IsRunning -eq $True){
          $Watch_05.Reset()
          $Watch_05.Stop()
    }
       $ShowTIme_05.BackColor = "#ffffff"
    }
    $ResetButton_05.Add_Click($Reset_05)
    
    #ResetButton_06
    $ResetButton_06 = New-Object System.Windows.Forms.Button
    $ResetButton_06.Location = "166,138"
    $ResetButton_06.Size = "55,20"
    $ResetButton_06.Text = "リセット"
    $ResetButton_06.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_06.Enabled = $True
          $Reset_06 = {
       if($Watch_06.IsRunning -eq $False){
          $Watch_06.Start()
  }elseif($Watch_06.IsRunning -eq $True){
          $Watch_06.Reset()
          $Watch_06.Stop()
    }
       $ShowTIme_06.BackColor = "#ffffff"
    }
    $ResetButton_06.Add_Click($Reset_06)
    
    #ResetButton_07
    $ResetButton_07 = New-Object System.Windows.Forms.Button
    $ResetButton_07.Location = "166,167"
    $ResetButton_07.Size = "55,20"
    $ResetButton_07.Text = "リセット"
    $ResetButton_07.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_07.Enabled = $True
          $Reset_07 = {
       if($Watch_07.IsRunning -eq $False){
          $Watch_07.Start()
  }elseif($Watch_07.IsRunning -eq $True){
          $Watch_07.Reset()
          $Watch_07.Stop()
    }
       $ShowTIme_07.BackColor = "#ffffff"
    }
    $ResetButton_07.Add_Click($Reset_07)
    
    #ResetButton_08
    $ResetButton_08 = New-Object System.Windows.Forms.Button
    $ResetButton_08.Location = "166,187"
    $ResetButton_08.Size = "55,20"
    $ResetButton_08.Text = "リセット"
    $ResetButton_08.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_08.Enabled = $True
          $Reset_08 = {
       if($Watch_08.IsRunning -eq $False){
          $Watch_08.Start()
  }elseif($Watch_08.IsRunning -eq $True){
          $Watch_08.Reset()
          $Watch_08.Stop()
    }
       $ShowTIme_08.BackColor = "#ffffff"
    }
    $ResetButton_08.Add_Click($Reset_08)

    #ResetButton_09
    $ResetButton_09 = New-Object System.Windows.Forms.Button
    $ResetButton_09.Location = "166,216"
    $ResetButton_09.Size = "55,20"
    $ResetButton_09.Text = "リセット"
    $ResetButton_09.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_09.Enabled = $True
          $Reset_09 = {
       if($Watch_09.IsRunning -eq $False){
          $Watch_09.Start()
  }elseif($Watch_09.IsRunning -eq $True){
          $Watch_09.Reset()
          $Watch_09.Stop()
    }
       $ShowTIme_09.BackColor = "#ffffff"
    }
    $ResetButton_09.Add_Click($Reset_09)
    
    #ResetButton_10
    $ResetButton_10 = New-Object System.Windows.Forms.Button
    $ResetButton_10.Location = "166,236"
    $ResetButton_10.Size = "55,20"
    $ResetButton_10.Text = "リセット"
    $ResetButton_10.font = New-Object System.Drawing.Font("メイリオ",7)
    $ResetButton_10.Enabled = $True
          $Reset_10 = {
       if($Watch_10.IsRunning -eq $False){
          $Watch_10.Start()
  }elseif($Watch_10.IsRunning -eq $True){
          $Watch_10.Reset()
          $Watch_10.Stop()
    }
       $ShowTIme_10.BackColor = "#ffffff"
    }
    $ResetButton_10.Add_Click($Reset_10)
    
    #######################################################
    #AddControls
    #AddControl_Buttons
        $Time_Form.Controls.AddRange(@($ResetButton_01,$ResetButton_02,$ResetButton_03,$ResetButton_04,$ResetButton_05,$ResetButton_06,$ResetButton_07,$ResetButton_08,$ResetButton_09,$ResetButton_10))
    
    #AddControl_Splash_01~05
        $Time_Form.Controls.AddRange($Form_Img_SplashArt_01)
        $Time_Form.Controls.AddRange($Form_Img_SplashArt_02)
        $Time_Form.Controls.AddRange($Form_Img_SplashArt_03)
        $Time_Form.Controls.AddRange($Form_Img_SplashArt_04)
        $Time_Form.Controls.AddRange($Form_Img_SplashArt_05)

    #AddControl_SummonerSpells_01~10
        $Time_Form.Controls.AddRange(@($Form_Img_SummonerSpells_01,$Form_Img_SummonerSpells_02,$Form_Img_SummonerSpells_03,$Form_Img_SummonerSpells_04,$Form_Img_SummonerSpells_05,$Form_Img_SummonerSpells_06,$Form_Img_SummonerSpells_07,$Form_Img_SummonerSpells_08,$Form_Img_SummonerSpells_09,$Form_Img_SummonerSpells_10))
    
    #AddControl_ShowTime
        $Time_Form.Controls.AddRange(@($ShowTime_01,$ShowTime_02,$ShowTime_03,$ShowTime_04,$ShowTime_05,$ShowTime_06,$ShowTime_07,$ShowTime_08,$ShowTime_09,$ShowTime_10))
    
    #AddControl_BackGround
        $Time_Form.Controls.AddRange($Form_Img_BackGround_01)
    
    #ShowDialog
        $Time_Form.ShowDialog() 
    }
    