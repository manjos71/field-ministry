.class public Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;
    }
.end annotation


# instance fields
.field colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

.field isCreating:Z

.field private listener:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->isCreating:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 97
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnTagsColorListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Color"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    .line 42
    :goto_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0146

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090460

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 49
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 67
    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$3;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EColorBy:[I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f09046c

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :cond_2
    const v2, 0x7f09046b

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1
    const v1, 0x7f1204df

    .line 76
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;)V

    const v2, 0x7f12039e

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->isCreating:Z

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method
