.class public Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;
    }
.end annotation


# instance fields
.field decreasing:Z

.field group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field isCreating:Z

.field private listener:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

.field sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->isCreating:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 186
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnTagsSortListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Group"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    .line 48
    :goto_0
    const-string v0, "Sort"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    goto :goto_1

    .line 51
    :cond_1
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    .line 53
    :goto_1
    const-string v0, "Dec"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->decreasing:Z

    goto :goto_2

    .line 56
    :cond_2
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->decreasing:Z

    .line 58
    :goto_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0148

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09014c

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 65
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->decreasing:Z

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f090462

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 74
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 95
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$5;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$ESort:[I

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    const v3, 0x7f09048d

    .line 103
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    :cond_4
    const v3, 0x7f09048c

    .line 100
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    :cond_5
    const v3, 0x7f09048b

    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    :goto_3
    const v1, 0x7f090461

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 108
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 141
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$5;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EGroupBy:[I

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const v3, 0x7f090484

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_1
    const v3, 0x7f090474

    .line 158
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_2
    const v3, 0x7f09047a

    .line 155
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_3
    const v3, 0x7f090478

    .line 152
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_4
    const v3, 0x7f090476

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_5
    const v3, 0x7f090475

    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :pswitch_6
    const v3, 0x7f090477

    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    :goto_4
    const v1, 0x7f1204f2

    .line 165
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V

    const v3, 0x7f12039e

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 172
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->isCreating:Z

    .line 173
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    .line 193
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method
