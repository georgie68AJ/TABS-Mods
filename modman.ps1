  $Form = New-Object system.Windows.Forms.Form 
    $Form.Text = "Coolest mod manager ever"
    $Form.TopMost = $true
    $Form.Width = 400
    $Form.Height = 250

    Function RadioButton
    {
        param(
            [int]$rBtnXAxis,
            [int]$rBtnYAxis,
            [string]$rBtnName
            #[string]$rBtnShortName
        )
        Write-Host = "Added: $_"
        $RadioButton = New-Object system.windows.Forms.RadioButton
        $RadioButton.Text = $rBtnName
        $RadioButton.AutoSize = $false
        $RadioButton.Width = 240
        $RadioButton.Height = 20
        $RadioButton.location = new-object system.drawing.point($rBtnXAxis,$rBtnYAxis)
        $RadioButton.Font = "Microsoft Sans Serif,10"
        $Form.controls.Add($RadioButton)

    }
    $rBtnArray = @()
    $rBtnArray += "Install Jlots mod"
    $rBtnArray += "Install Ferns mod"
    $rBtnArray += "Clear Mods"

    $rBtnXAxis = 20
    $rBtnYAxis = 10

    $rBtnArray | ForEach-Object {
        $rBtnYAxis = $rBtnYAxis + 20
        RadioButton $rBtnXAxis $rBtnYAxis $_
        }

    $btnStart = New-Object system.windows.Forms.Button 
    $btnStart.Text = "Do it!"
    $btnStart.Width = 200
    $btnStart.Height = 30
    $btnStart.location = new-object system.drawing.point(15,100)
    $btnStart.Font = "Microsoft Sans Serif,10"
    $Form.controls.Add($btnStart)
    $btnStart.add_Click({ Output })

    Function Output
        {
        Write-Host "Output Function Called"
        Write-Host "RadioButton01 Checked? " $RadioButton01.checked
        Write-Host "RadioButton02 Checked? " $RadioButton02.checked
        Write-Host "RadioButton03 Checked? " $RadioButton03.checked
        Write-Host "RadioButton04 Checked? " $RadioButton04.checked
        Write-Host "RadioButton05 Checked? " $RadioButton05.checked
        Write-Host "RadioButton06 Checked? " $RadioButton06.checked

        }

    [void]$Form.ShowDialog() 
    $Form.Dispose() 