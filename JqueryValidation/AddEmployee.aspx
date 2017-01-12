<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="JqueryValidation.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript">
        function validate() {
            if ($('#txtEmployeeName').val() == "") {
                alert('Please enter Employee Name');
                return false;
            }
            if ($('#txtAge').val() == "") {
                alert('Please enter Age');
                return false;
            }
            var radios = document.getElementsByName('Gender');
            var radioselected = '';
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    // do whatever you want with the checked radio
                    radioselected = radios[i].value;

                    // only one radio can be logically checked, don't check the rest
                    break;
                }
            }
            if(radioselected =="")
            {
                alert('Please select Gender');
                return false;
            }
            if ($('#ddlCity').val() == "--Select--") {
                alert('Please select city');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <table border="0" cellspacing="2" cellpadding="2">
                <tr>
                    <td>Employee Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Age
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender
                    </td>
                    <td>
                        <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Gender"  Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td>City
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server">
                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                            <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                            <asp:ListItem Text="Madurai" Value="Madurai"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return validate();" OnClick="btnSave_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
