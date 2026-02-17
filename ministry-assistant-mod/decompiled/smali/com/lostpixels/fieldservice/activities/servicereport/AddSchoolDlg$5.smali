.class Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$fgetmdate(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;->onSchoolAdded(Ljava/lang/String;Ljava/util/Date;I)V

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
