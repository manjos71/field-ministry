.class public Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;
    }
.end annotation


# instance fields
.field mListener:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;

.field mStartDate:Ljava/util/Date;

.field mchSameWeekDay:Landroid/widget/CheckBox;

.field mrdDuplicateGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 124
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mListener:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 127
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnDuplicateButtonListner"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 44
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    const-string v0, "StartDate"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 49
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09045e

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mrdDuplicateGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09013a

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mchSameWeekDay:Landroid/widget/CheckBox;

    const v1, 0x7f0900ff

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEEE"

    iget-object v4, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;-><init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;Lcom/lostpixels/fieldservice/ui/SpinnerButton;)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;-><init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;)V

    const v2, 0x7f120050

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$2;-><init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;)V

    const v2, 0x7f12004b

    .line 108
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12015d

    .line 112
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mListener:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method
