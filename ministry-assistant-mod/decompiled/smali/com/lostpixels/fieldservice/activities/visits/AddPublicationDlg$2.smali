.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/widget/NumberPicker$IOnLongpress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f120151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f12012e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 214
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;

    invoke-direct {v3, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;I)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
