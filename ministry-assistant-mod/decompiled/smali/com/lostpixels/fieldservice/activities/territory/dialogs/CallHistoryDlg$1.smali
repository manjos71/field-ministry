.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
