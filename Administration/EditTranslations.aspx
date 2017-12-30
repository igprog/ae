<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="EditTranslations.aspx.cs" Inherits="Administration_EditTranslations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section>
<h3>Prijevodi</h3>

<div style="padding: 10px; margin: 10px; border-radius: 5px" class="boxShadow">
<label>TekstId </label>
<asp:TextBox ID="txtTranslationId" CssClass="form-control" runat="server"></asp:TextBox>
<label>Hrvatski </label>
<asp:TextBox ID="txtCroatian" CssClass="form-control" runat="server"></asp:TextBox>
<label>Engleski </label>
<asp:TextBox ID="txtEnglish" CssClass="form-control" runat="server"></asp:TextBox>
<label>Njemački </label>
<asp:TextBox ID="txtGerman" CssClass="form-control" runat="server"></asp:TextBox>
<div style="padding: 20px 0px 10px 0px">
<asp:Button ID="btnInsert" CssClass="btn btn-danger" runat="server" Text="Spremi" onclick="btnInsert_Click" />
</div>
</div>


       <asp:GridView ID="gvTranslations" runat="server" AllowSorting="True" 
           AutoGenerateColumns="False" DataKeyNames="Id" 
           DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           <Columns>
               <asp:CommandField ShowEditButton="True" ShowDeleteButton="False" EditText="UREDI" />
               <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                   ReadOnly="True" SortExpression="Id" />
               <asp:BoundField DataField="TranslationId" HeaderText="TranslationId" 
                   SortExpression="TranslationId" />
               <asp:BoundField DataField="Croatian" HeaderText="Croatian" 
                   SortExpression="Croatian" />
               <asp:BoundField DataField="English" HeaderText="English" 
                   SortExpression="English" />
               <asp:BoundField DataField="German" HeaderText="German" 
                   SortExpression="German" />
           </Columns>
           <EditRowStyle BackColor="#999999" />
           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#E9E7E2" />
           <SortedAscendingHeaderStyle BackColor="#506C8C" />
           <SortedDescendingCellStyle BackColor="#FFFDF8" />
           <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
       </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           DeleteCommand="DELETE FROM [Translations] WHERE [Id] = @Id" 
           InsertCommand="INSERT INTO [Translations] ([TranslationId], [Croatian], [English], [German]) VALUES (@TranslationId, @Croatian, @English, @German)" 
           SelectCommand="SELECT * FROM [Translations]" 
           UpdateCommand="UPDATE [Translations] SET [TranslationId] = @TranslationId, [Croatian] = @Croatian, [English] = @English, [German] = @German WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="TranslationId" Type="String" />
                 <asp:Parameter Name="Croatian" Type="String" />
                 <asp:Parameter Name="English" Type="String" />
                 <asp:Parameter Name="German" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="TranslationId" Type="String" />
                 <asp:Parameter Name="Croatian" Type="String" />
                 <asp:Parameter Name="English" Type="String" />
                 <asp:Parameter Name="German" Type="String" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
       </asp:SqlDataSource>



</section>
     

</asp:Content>

