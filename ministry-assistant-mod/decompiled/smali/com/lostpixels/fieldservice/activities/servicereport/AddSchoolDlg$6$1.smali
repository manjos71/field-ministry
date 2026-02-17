.class Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 156
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
