.class Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->-$$Nest$fgetmchkSendFiles(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    const v0, 0x7f120095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendErrorFilesAsEMail(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->-$$Nest$fgetmchkRestore(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
