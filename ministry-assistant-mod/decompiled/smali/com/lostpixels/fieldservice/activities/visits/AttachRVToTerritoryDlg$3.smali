.class Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 213
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
