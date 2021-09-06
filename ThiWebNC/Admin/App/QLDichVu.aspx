﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="QLDichVu.aspx.cs" Inherits="ThiWebNC.Admin.App.QLDichVu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:Panel ID="penalhead" runat="server">
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0 font-size-18">Dịch vụ</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Menu</a></li>
                            <li class="breadcrumb-item active">Quản lý Dịch vụ</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="penaltable" runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Thông tin dịch vụ</h4>
                        <div class="table-responsive">
                            <asp:GridView ID="dgvQLDichVu" runat="server" class="table mb-0" AutoGenerateColumns="false" HeaderStyle-HorizontalAlign="Center" AllowPaging="true" OnPageIndexChanging="dgvQLDichVu_PageIndexChanging" AlternatingRowStyle-BackColor="#eff2f7" AlternatingRowStyle-ForeColor="#495057">
                                <Columns>
                                    <asp:TemplateField HeaderText="STT" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                                <Columns>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            Hành động
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="linkEdit" runat="server" CssClass="bx-spin-hover" CommandArgument='<%# Eval("MaDichVu").ToString() %>' OnCommand="linkEdit_Command"><i class="bx bx-edit-alt" ></i></asp:LinkButton><span> |</span>
                                            <asp:LinkButton ID="linkDelete" runat="server" CssClass="bx-spin-hover" CommandArgument='<%# Eval("MaDichVu").ToString() %>' OnCommand="linkDelete_Command" OnClientClick="return checkValid()"><i class="bx bx-trash"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                                <Columns>
                                    <asp:BoundField DataField="MaDichVu" HeaderText="Mã dịch vụ" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="TenDichVu" HeaderText="Tên dịch vụ" ItemStyle-HorizontalAlign="Center" />
                                    <%--<asp:BoundField DataField="MoTaChiTiet" HeaderText="Mô tả chi tiết" ItemStyle-HorizontalAlign="Center" />--%>
                                    <%--<asp:BoundField DataField="Images" HeaderText="Ảnh" ItemStyle-HorizontalAlign="Center" />--%>
                                    <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="ThongTin" HeaderText="Thông tin" ItemStyle-HorizontalAlign="Center" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="Thêm" class="btn btn-success" OnCommand="btn_Save" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="panelform" runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title mb-4">Chỉnh sửa thông tin Dịch vụ</h4>
                        <div class="outer-repeater">
                            <div data-repeater-list="outer-group" class="outer">
                                <div data-repeater-item="" class="outer">
                                    <div class="form-group">
                                        <label for="formadattour">Mã dịch vu :</label>
                                        <asp:TextBox ID="txt_madichvu" runat="server" class="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="forsdt">Tên dịch vụ :</label>
                                        <asp:TextBox ID="txt_tendv" runat="server" class="form-control"></asp:TextBox>
                                    </div>


                                    <%--<div class="form-group">
                                        <label for="foremail">Mô tả chi tiết :</label>
                                        <asp:TextBox ID="txt_mota" runat="server" class="form-control"></asp:TextBox>
                                    </div>--%>

                                    <div class="form-group">
                                        <label for="formota">Mô tả chi tiết :</label>
                                        <textarea id="txt_mota" class="ckeditor" runat="server"></textarea>
                                    </div>

                                   <%-- <div class="form-group">
                                        <label for="fordiachi">Ảnh :</label>
                                        <asp:TextBox ID="txt_Images" runat="server" class="form-control"></asp:TextBox>
                                    </div>--%>

                                    <div class="form-group">
                                        <label for="forsotreem">Tình trạng :</label>
                                        <asp:TextBox ID="txt_tinhtrang" runat="server" class="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="forngaydi">Thông tin :</label>
                                        <asp:TextBox ID="txt_thongtin" runat="server"  class="form-control"></asp:TextBox>
                                    </div>

                                    <asp:Button ID="btnAdd" runat="server" Text="Lưu" class="btn btn-success" OnCommand="btn_Add" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" class="btn btn-danger " OnCommand="btn_Delete" OnClientClick="return checkValid()" />
                                    <asp:Button ID="btnOut" runat="server" Text="Quay lại" class="btn btn-light" OnCommand="btn_Out" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function checkValid() {
            if (confirm("Bạn có chắc muốn xóa không ??") == true) {
                return true;
            }
            return false;
        }
    </script>
    <script src="../ckeditor/ckeditor.js"></script>
    <script>
        window.onload = function () {
            CKEDITOR.replace("txt_mota");
        }
    </script>
</asp:Content>
