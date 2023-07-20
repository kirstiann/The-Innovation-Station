Public Class InnovationStation
    Dim myArray(2000) As Integer

    Private Sub Form_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim i As Integer
        For i = 0 To 2000
            myArray(i) = 0
        Next
    End Sub

    Private Sub GenerateRandom(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGenerate.Click
        For x = 0 To 2000
            myArray(x) = Math.Round(Rnd() * 2000)
        Next
        lblRandomNumber.Text = myArray
    End Sub
End Class