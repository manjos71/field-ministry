.class Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->showSchoolsList()V
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

    .line 137
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 142
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0c0091

    .line 144
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 145
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    const v0, 0x7f1203be

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902a4

    .line 147
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 148
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900f5

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    return-void

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    const/16 p2, 0x50

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    const/16 p2, 0x19

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
