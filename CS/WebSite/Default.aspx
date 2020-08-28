<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSplitter" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxLoadingPanel" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to show the ASPxLoadingPanel during the ASPxSplitter initialization</title>
    <style type="text/css">
        .splitterContainer 
        {
        	position: relative;
        	width: 100%;
        	height: 100%;
        	top: -10000px;
        	left: -10000px;
        }
    </style>

    <script type="text/javascript">
        function OnSplitterInit() {
            loadingPanel.Hide();
            document.getElementById("splitterContainer").style.position = "static";
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="0" cellspacing="0" border="0" style="border: solid 1px black;
                width: 100%">
                <tr style="height: 100px">
                    <td style="text-align: left;">
                        Top-left corner</td>
                    <td style="text-align: center;">
                        Top edge</td>
                    <td style="text-align: right;">
                        Top-right corner</td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="width: 70%">
                        <div id="loadingContainer" style="width: 100%; height: 300px">
                            <dx:ASPxLoadingPanel ID="loadingPanel" runat="server" ClientInstanceName="loadingPanel"
                                Modal="true">
                            </dx:ASPxLoadingPanel>

                            <script type="text/javascript">
                            loadingPanel.ShowInElementByID("loadingContainer");
                            </script>

                            <div id="splitterContainer" class="splitterContainer">
                                <dx:ASPxSplitter ID="splitter" runat="server" Width="100%" Height="100%">
                                    <Panes>
                                        <dx:SplitterPane>
                                            <Panes>
                                                <dx:SplitterPane>
                                                    <ContentCollection>
                                                        <dx:SplitterContentControl ID="SplitterContentControl1" runat="server" SupportsDisabledAttribute="True">
                                                        </dx:SplitterContentControl>
                                                    </ContentCollection>
                                                </dx:SplitterPane>
                                                <dx:SplitterPane>
                                                    <ContentCollection>
                                                        <dx:SplitterContentControl ID="SplitterContentControl2" runat="server" SupportsDisabledAttribute="True">
                                                        </dx:SplitterContentControl>
                                                    </ContentCollection>
                                                </dx:SplitterPane>
                                            </Panes>
                                            <ContentCollection>
                                                <dx:SplitterContentControl ID="SplitterContentControl3" runat="server" SupportsDisabledAttribute="True">
                                                </dx:SplitterContentControl>
                                            </ContentCollection>
                                        </dx:SplitterPane>
                                        <dx:SplitterPane>
                                            <Panes>
                                                <dx:SplitterPane>
                                                    <ContentCollection>
                                                        <dx:SplitterContentControl ID="SplitterContentControl4" runat="server" SupportsDisabledAttribute="True">
                                                        </dx:SplitterContentControl>
                                                    </ContentCollection>
                                                </dx:SplitterPane>
                                                <dx:SplitterPane>
                                                    <ContentCollection>
                                                        <dx:SplitterContentControl ID="SplitterContentControl5" runat="server" SupportsDisabledAttribute="True">
                                                        </dx:SplitterContentControl>
                                                    </ContentCollection>
                                                </dx:SplitterPane>
                                            </Panes>
                                            <ContentCollection>
                                                <dx:SplitterContentControl ID="SplitterContentControl6" runat="server" SupportsDisabledAttribute="True">
                                                </dx:SplitterContentControl>
                                            </ContentCollection>
                                        </dx:SplitterPane>
                                        <dx:SplitterPane>
                                            <ContentCollection>
                                                <dx:SplitterContentControl ID="SplitterContentControl7" runat="server" SupportsDisabledAttribute="True">
                                                </dx:SplitterContentControl>
                                            </ContentCollection>
                                        </dx:SplitterPane>
                                    </Panes>
                                    <ClientSideEvents Init="OnSplitterInit" />
                                </dx:ASPxSplitter>
                            </div>
                        </div>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr style="height: 100px">
                    <td style="text-align: left;">
                        Bottom-left corner</td>
                    <td style="text-align: center;">
                        Bottom edge</td>
                    <td style="text-align: right;">
                        Bottom-right corner</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
