.class public Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;
    }
.end annotation


# instance fields
.field private btnDelete:Landroid/view/View;

.field protected mContext:Landroidx/fragment/app/FragmentActivity;

.field private final mListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

.field private mMissingPubsTxt:Landroid/widget/TextView;

.field protected final mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

.field private mbCommentFieldVisible:Z

.field protected mckAddToReport:Landroid/widget/CheckBox;

.field protected mePubType:I

.field private medtComment:Landroid/widget/EditText;

.field protected miID:I

.field private mlstPublications:[Ljava/lang/String;

.field private pickerPublications:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtComment(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->medtComment:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->deletePublication(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPublicationList(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPublicationSelection(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationSelection(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    .line 67
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    .line 68
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->removeTitle(Landroid/content/Context;)V

    const p1, 0x7f0c002f

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 70
    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    .line 71
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    .line 72
    iput p4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    .line 73
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 74
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mbCommentFieldVisible:Z

    return-void
.end method

.method private deletePublication(I)V
    .locals 5

    .line 358
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublication(Landroid/content/Context;ILjava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationList(Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationSelection(I)V

    .line 363
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private removeTitle(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private setPublicationList(Z)V
    .locals 7

    .line 380
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getPublications(I)Ljava/util/List;

    move-result-object v1

    .line 382
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 383
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    goto :goto_0

    .line 385
    :cond_0
    array-length v3, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 386
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 389
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 394
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_5

    .line 395
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mMissingPubsTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->btnDelete:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/simonvt/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 402
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lnet/simonvt/widget/NumberPicker;->setMaxValue(I)V

    .line 404
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1, v3}, Lnet/simonvt/widget/NumberPicker;->setMinValue(I)V

    goto :goto_2

    .line 406
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mMissingPubsTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->btnDelete:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :goto_2
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method private setPublicationSelection(I)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mlstPublications:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-lt p1, v1, :cond_0

    .line 368
    array-length p1, v0

    sub-int/2addr p1, v2

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    .line 371
    :goto_0
    array-length p1, v0

    if-lez p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {p1, v2}, Lnet/simonvt/widget/NumberPicker;->setValue(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 114
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 115
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 119
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    .line 121
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    .line 124
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f120455

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f120481

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f120549

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f12053b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f120385

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v6, 0x7f120381

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v6, :cond_11

    const v0, 0x7f0900e3

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f09039a

    .line 146
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/simonvt/widget/NumberPicker;

    iput-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    const v6, 0x7f090615

    .line 147
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mMissingPubsTxt:Landroid/widget/TextView;

    const v6, 0x7f0900e1

    .line 148
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v8, 0x7f0900e6

    .line 149
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v9, 0x7f090268

    .line 150
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->btnDelete:Landroid/view/View;

    const v9, 0x7f0901ec

    .line 151
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->medtComment:Landroid/widget/EditText;

    const v9, 0x7f09015b

    .line 152
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    .line 153
    invoke-virtual {v9, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 154
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    const/high16 v10, 0x60000

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 155
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v9, v7}, Lnet/simonvt/widget/NumberPicker;->setEditEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 157
    const-string v10, "ReportDensity"

    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 158
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    if-nez v10, :cond_7

    const/16 v12, 0x8

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->btnDelete:Landroid/view/View;

    new-instance v12, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;

    invoke-direct {v12, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-boolean v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mbCommentFieldVisible:Z

    if-eqz v11, :cond_8

    .line 169
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->medtComment:Landroid/widget/EditText;

    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_8
    iget v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-ne v11, v5, :cond_9

    .line 172
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v11, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 174
    :cond_9
    invoke-direct {p0, v7}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationList(Z)V

    if-eqz p1, :cond_a

    .line 177
    const-string v1, "SelVal"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 180
    :cond_a
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-eqz p1, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_b

    const/4 p1, 0x0

    goto :goto_2

    .line 197
    :cond_b
    const-string p1, "LastMovie"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 194
    :cond_c
    const-string p1, "LastOther"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 188
    :cond_d
    const-string p1, "LastVideo"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 191
    :cond_e
    const-string p1, "LastTract"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 185
    :cond_f
    const-string p1, "LastBroschure"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 182
    :cond_10
    const-string p1, "LastBook"

    invoke-interface {v9, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 202
    :goto_2
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->setPublicationSelection(I)V

    .line 204
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V

    invoke-virtual {p1, v1}, Lnet/simonvt/widget/NumberPicker;->setOnLongPressHandler(Lnet/simonvt/widget/NumberPicker$IOnLongpress;)V

    .line 226
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;

    invoke-direct {p1, p0, v10}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$5;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_11
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    if-eqz p1, :cond_14

    .line 348
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 349
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-ne v0, v5, :cond_12

    const-string v1, "checkAddReportOther"

    goto :goto_3

    :cond_12
    const-string v1, "checkAddReport"

    :goto_3
    if-eq v0, v5, :cond_13

    goto :goto_4

    :cond_13
    const/4 v4, 0x0

    .line 351
    :goto_4
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 352
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_14
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    .line 92
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    .line 93
    const-string v0, "Comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mbCommentFieldVisible:Z

    .line 94
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    :cond_0
    const-string v1, "ID"

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v1, "Type"

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->pickerPublications:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v1

    const-string v2, "SelVal"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_1
    const-string v1, "Comment"

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mbCommentFieldVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public showCommentField()V
    .locals 2

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mbCommentFieldVisible:Z

    .line 84
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->medtComment:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
