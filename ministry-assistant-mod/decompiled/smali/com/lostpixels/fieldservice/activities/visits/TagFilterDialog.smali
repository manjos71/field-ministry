.class public Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;,
        Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;
    }
.end annotation


# static fields
.field private static final tagCouple:Ljava/lang/String;

.field private static final tagMan:Ljava/lang/String;

.field private static final tagWoman:Ljava/lang/String;


# instance fields
.field isCreating:Z

.field private listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

.field private mUpdateHandler:Landroid/os/Handler;

.field tagViewCouple:Lcom/lostpixels/fieldservice/ui/TagView;

.field tagViewMan:Lcom/lostpixels/fieldservice/ui/TagView;

.field tagViewWoman:Lcom/lostpixels/fieldservice/ui/TagView;

.field txtNumResults:Landroid/widget/TextView;

.field private final updateResultTask:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateHandler(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munselectIfGender(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->unselectIfGender(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMan:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagMan:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeWoman:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagWoman:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagCouple:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->isCreating:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->mUpdateHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->updateResultTask:Ljava/lang/Runnable;

    return-void
.end method

.method private unselectIfGender(Ljava/lang/String;)V
    .locals 2

    .line 283
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagMan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewWoman:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    .line 285
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewCouple:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagWoman:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewMan:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    .line 288
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewCouple:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    return-void

    .line 289
    :cond_1
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagCouple:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 290
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewWoman:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    .line 291
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewMan:Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 297
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 302
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 305
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnTagsSetListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 26

    move-object/from16 v0, p0

    .line 74
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f1200a4

    .line 77
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "selectedTheme"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 81
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0147

    const/4 v5, 0x0

    .line 85
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 87
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v6}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getAllTags()Ljava/util/List;

    move-result-object v6

    .line 88
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v7}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getAllNeighborhoodTags()Ljava/util/List;

    move-result-object v7

    .line 89
    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v8}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getAllCitiesTags()Ljava/util/List;

    move-result-object v8

    .line 90
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v9}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getSelectedTags()Ljava/util/Set;

    move-result-object v9

    .line 91
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v10}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getSelectedNeighborhoodTags()Ljava/util/Set;

    move-result-object v10

    .line 92
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v11}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getSelectedCitiesTags()Ljava/util/Set;

    move-result-object v11

    const v12, 0x7f090577

    .line 94
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->txtNumResults:Landroid/widget/TextView;

    const v12, 0x7f09053d

    .line 95
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TabHost;

    .line 96
    invoke-virtual {v12}, Landroid/widget/TabHost;->setup()V

    const/4 v13, 0x0

    .line 97
    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 99
    const-string v15, "Tab1"

    invoke-virtual {v12, v15}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    if-eqz v1, :cond_0

    const v16, 0x7f08019f

    const v5, 0x7f08019f

    goto :goto_0

    :cond_0
    const v16, 0x7f0801a0

    const v5, 0x7f0801a0

    .line 101
    :goto_0
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v13, ""

    invoke-virtual {v15, v13, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    const v5, 0x7f09053a

    .line 103
    invoke-virtual {v15, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 104
    invoke-virtual {v12, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 106
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v15, "tabsettings"

    move/from16 v17, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 107
    const-string v15, "tabInt"

    invoke-interface {v5, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 109
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    if-le v1, v15, :cond_2

    .line 110
    const-string v1, "Tab2"

    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    if-eqz v17, :cond_1

    const v19, 0x7f080245

    const v15, 0x7f080245

    goto :goto_1

    :cond_1
    const v19, 0x7f080246

    const v15, 0x7f080246

    .line 112
    :goto_1
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v1, v13, v15}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    const v15, 0x7f09053b

    .line 114
    invoke-virtual {v1, v15}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 115
    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 v1, 0x1

    if-ne v5, v1, :cond_3

    .line 117
    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v15

    sub-int/2addr v15, v1

    invoke-virtual {v12, v15}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    const v15, 0x7f09053b

    .line 119
    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    if-le v1, v15, :cond_5

    .line 122
    const-string v1, "Tab3"

    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    if-eqz v17, :cond_4

    const v15, 0x7f0801b6

    goto :goto_3

    :cond_4
    const v15, 0x7f0801b7

    .line 124
    :goto_3
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    const v13, 0x7f09053c

    .line 126
    invoke-virtual {v1, v13}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 127
    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 v1, 0x2

    if-ne v5, v1, :cond_6

    .line 129
    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_4

    :cond_5
    const v13, 0x7f09053c

    .line 131
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_6
    :goto_4
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$2;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    invoke-virtual {v12, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v1, 0x7f090556

    .line 147
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v5, 0x7f090555

    .line 148
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v12, 0x7f090554

    .line 149
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    const v13, 0x7f090553

    .line 150
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const v14, 0x7f090187

    .line 151
    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    const v15, 0x7f090186

    .line 152
    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v17, v2

    const v2, 0x7f090149

    .line 154
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v18, v4

    .line 155
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    invoke-interface {v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getShowArchived()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 156
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$3;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$4;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    .line 175
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$5;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    move-object/from16 v19, v15

    .line 183
    new-instance v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$6;

    invoke-direct {v15, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    move-object/from16 v21, v11

    move-object/from16 v22, v15

    const/4 v11, 0x0

    .line 193
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v23, v8

    const v8, 0x7f0c014a

    if-ge v11, v15, :cond_e

    const/4 v15, 0x0

    .line 194
    invoke-virtual {v3, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/ui/TagView;

    .line 195
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v15, v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipText(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->icon:I

    invoke-static {v15, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/lostpixels/fieldservice/ui/TagView;->setTag(Ljava/lang/String;)V

    .line 199
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->color:I

    invoke-virtual {v8, v3}, Lcom/lostpixels/fieldservice/ui/TagView;->setColor(I)V

    .line 200
    invoke-virtual {v8, v2}, Lcom/lostpixels/fieldservice/ui/TagView;->setOnTagChangedListener(Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;)V

    .line 201
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    .line 202
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->color:I

    if-eqz v3, :cond_a

    const/4 v15, 0x1

    if-eq v3, v15, :cond_9

    const/4 v15, 0x2

    if-eq v3, v15, :cond_8

    const/4 v15, 0x3

    if-eq v3, v15, :cond_7

    goto :goto_6

    .line 213
    :cond_7
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 207
    :cond_8
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 210
    :cond_9
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 204
    :cond_a
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    :goto_6
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/ui/TagView;->getTag()Ljava/lang/String;

    move-result-object v3

    sget-object v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagMan:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 219
    iput-object v8, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewMan:Lcom/lostpixels/fieldservice/ui/TagView;

    goto :goto_7

    .line 220
    :cond_b
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/ui/TagView;->getTag()Ljava/lang/String;

    move-result-object v3

    sget-object v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagWoman:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 221
    iput-object v8, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewWoman:Lcom/lostpixels/fieldservice/ui/TagView;

    goto :goto_7

    .line 222
    :cond_c
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/ui/TagView;->getTag()Ljava/lang/String;

    move-result-object v3

    sget-object v15, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagCouple:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 223
    iput-object v8, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->tagViewCouple:Lcom/lostpixels/fieldservice/ui/TagView;

    :cond_d
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v23

    move-object/from16 v3, v25

    goto/16 :goto_5

    :cond_e
    move-object/from16 v25, v3

    const/4 v1, 0x0

    .line 227
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 228
    new-instance v2, Lcom/lostpixels/fieldservice/ui/TagView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/ui/TagView;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipText(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v5, v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->icon:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/TagView;->setTag(Ljava/lang/String;)V

    .line 232
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->color:I

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/TagView;->setColor(I)V

    .line 233
    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/ui/TagView;->setOnTagChangedListener(Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;)V

    .line 235
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    .line 236
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 240
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    move-object/from16 v2, v25

    const/4 v15, 0x0

    .line 241
    invoke-virtual {v2, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/ui/TagView;

    move-object/from16 v4, v23

    .line 242
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipText(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v6, v6, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->icon:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/ui/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/ui/TagView;->setTag(Ljava/lang/String;)V

    .line 245
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget v5, v5, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->color:I

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/ui/TagView;->setColor(I)V

    move-object/from16 v5, v22

    .line 246
    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/ui/TagView;->setOnTagChangedListener(Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;)V

    .line 247
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    move-object/from16 v7, v21

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lostpixels/fieldservice/ui/Chip;->setSelected(Z)V

    move-object/from16 v6, v19

    .line 248
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_10
    const v1, 0x7f120365

    .line 251
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-object/from16 v1, v18

    .line 252
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$8;

    invoke-direct {v3, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    const v4, 0x7f12039e

    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$7;

    invoke-direct {v3, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V

    const v4, 0x7f12039c

    .line 256
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 266
    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->isCreating:Z

    .line 268
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->mUpdateHandler:Landroid/os/Handler;

    .line 269
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->updateResultTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->mUpdateHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->updateResultTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    .line 312
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->updateResultTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method
