.class public Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$GetAddressPositionTask;,
        Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureController;,
        Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;
    }
.end annotation


# instance fields
.field final ID_ADD_BOOK:I

.field final ID_ADD_BROSCHURE:I

.field final ID_ADD_DVD:I

.field final ID_ADD_MAGAZINE:I

.field final ID_ADD_OTHER:I

.field final ID_ADD_TO_CALENDAR:I

.field final ID_ADD_TRACT:I

.field final ID_CHANGE_DATE:I

.field final ID_CHANGE_TIME:I

.field final ID_LETTER:I

.field final ID_MEET_PERSON:I

.field final ID_NOT_AT_HOME:I

.field final ID_NOT_INTERESTED:I

.field final ID_NO_TIME:I

.field final ID_PER_PHONE:I

.field final ID_SHOW_VIDEO:I

.field private isFirstVisit:Z

.field private final mAddMagazineListener:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

.field private final mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

.field private final mAddVideoShowingsListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

.field private mDate:Ljava/util/Date;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mHidePersonInfo:Z

.field private mIsEditing:Z

.field private mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field private mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

.field private mScrptureItems:Ljava/util/List;

.field private mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

.field private mTagPerson:Z

.field private final mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mbShowVideo:Z

.field private mbSomethingChanged:Z

.field private mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private mchRV:Landroid/widget/CheckBox;

.field private mchStudy:Landroid/widget/CheckBox;

.field private medtContinue:Landroid/widget/EditText;

.field private medtMovies:Landroid/widget/EditText;

.field private medtNextTime:Landroid/widget/EditText;

.field private medtPublication:Landroid/widget/EditText;

.field private medtScripture:Landroid/widget/EditText;

.field private medtStudyPub:Landroid/widget/EditText;

.field private medtVisitInfo:Landroid/widget/EditText;

.field private mspinnerResults:Landroid/widget/Spinner;

.field private mtxtTimeForRV:Landroid/widget/TextView;

.field private rdHouseHolder:Landroid/widget/RadioGroup;

.field private reportDensity:I

.field private spAge:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerson(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mScrptureItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbShowVideo(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbShowVideo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmchRV(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmchStudy(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtMovies(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtMovies:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtPublication(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtPublication:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtScripture(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtScripture:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrdHouseHolder(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/RadioGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDate(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mScrptureItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTimeButton(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->setTimeButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldAddPublications(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->shouldAddPublications()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 7

    const v0, 0x7f0c0085

    .line 210
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_BOOK:I

    const/4 v1, 0x1

    .line 90
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_BROSCHURE:I

    const/4 v2, 0x2

    .line 91
    iput v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_MAGAZINE:I

    const/4 v3, 0x3

    .line 92
    iput v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_OTHER:I

    const/4 v4, 0x4

    .line 93
    iput v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_CHANGE_TIME:I

    const/4 v5, 0x6

    .line 94
    iput v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_CHANGE_DATE:I

    const/4 v5, 0x5

    .line 95
    iput v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_TO_CALENDAR:I

    const/16 v6, 0x8

    .line 96
    iput v6, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_DVD:I

    const/16 v6, 0x9

    .line 97
    iput v6, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_ADD_TRACT:I

    const/16 v6, 0xa

    .line 98
    iput v6, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_SHOW_VIDEO:I

    .line 99
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_MEET_PERSON:I

    .line 100
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_NOT_AT_HOME:I

    .line 101
    iput v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_NOT_INTERESTED:I

    .line 102
    iput v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_NO_TIME:I

    .line 103
    iput v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_LETTER:I

    .line 104
    iput v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->ID_PER_PHONE:I

    const/4 v2, 0x0

    .line 105
    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 107
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    .line 108
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    .line 124
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    .line 135
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddMagazineListener:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    .line 150
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddVideoShowingsListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    .line 172
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 184
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 207
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    return p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    return p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private getHouseHolder()I
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x4

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x3

    return v0

    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09046a -> :sswitch_3
        0x7f09046d -> :sswitch_2
        0x7f090482 -> :sswitch_1
        0x7f090495 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHouseHolderID(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f090493

    return p1

    :cond_0
    const p1, 0x7f09046d

    return p1

    :cond_1
    const p1, 0x7f09046a

    return p1

    :cond_2
    const p1, 0x7f090482

    return p1

    :cond_3
    const p1, 0x7f090495

    return p1
.end method

.method private getVisitType()I
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    const/16 v0, 0x9

    return v0
.end method

.method private saveVisit(Z)V
    .locals 4

    .line 791
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbSomethingChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 793
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 795
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtScripture:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 797
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtPublication:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 799
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtMovies:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getMovies()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 801
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtNextTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 803
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtStudyPub:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 805
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtContinue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isNotEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 807
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v2

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getHouseHolder()I

    move-result v3

    if-eq v2, v3, :cond_7

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    .line 809
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getType()I

    move-result v2

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getHouseHolder()I

    move-result v3

    if-eq v2, v3, :cond_8

    goto/16 :goto_0

    :cond_8
    if-nez v0, :cond_9

    .line 811
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getAge()I

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    if-eq v2, v3, :cond_9

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    .line 813
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_a
    if-nez v0, :cond_b

    .line 815
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    .line 817
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->visitTypeChanged()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_0

    :cond_c
    :goto_1
    if-nez v0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_2

    .line 848
    :cond_d
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-nez p1, :cond_11

    const p1, 0x7f120468

    .line 849
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 821
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setInfo(Ljava/lang/String;)V

    .line 822
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtScripture:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setScriptures(Ljava/lang/String;)V

    .line 823
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtPublication:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setPublications(Ljava/lang/String;)V

    .line 824
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtMovies:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setMovies(Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtNextTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setNextTime(Ljava/lang/String;)V

    .line 826
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitDate(Ljava/util/Date;)V

    .line 827
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setAge(I)V

    .line 828
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getHouseHolder()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setType(I)V

    .line 829
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getVisitType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitType(I)V

    .line 830
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setCountStudy(Z)V

    .line 832
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 833
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtStudyPub:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setStudyPublication(Ljava/lang/String;)V

    .line 834
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtContinue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setContinueStudy(Ljava/lang/String;)V

    .line 837
    :cond_f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz p1, :cond_10

    .line 838
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    .line 840
    :cond_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 842
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 843
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    const-string v0, "VisitInfo"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 845
    const-string v0, "IsEditing"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    const-string v0, "ServiceSession"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 847
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 851
    :cond_11
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setTimeButton()V
    .locals 3

    .line 999
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setupAges()V
    .locals 4

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    const-string v1, "\u2013\u2013"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    const/4 v3, 0x5

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v3

    .line 931
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 935
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 936
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 937
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getAge()I

    move-result v1

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_2

    .line 940
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    div-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private setupResults()V
    .locals 3

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f120443

    .line 947
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120470

    .line 948
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120471

    .line 949
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12046d

    .line 950
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12042e

    .line 951
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120485

    .line 952
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 955
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 956
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 958
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 975
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 969
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 979
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private shouldAddPublications()Z
    .locals 1

    .line 121
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->reportDensity:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private visitTypeChanged()Z
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return v1

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    return v1

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    if-eq v0, v2, :cond_2

    return v1

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    if-eq v0, v3, :cond_3

    return v1

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public fillScriptureArray()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mScrptureItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 765
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mScrptureItems:Ljava/util/List;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getScriptures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mtxtTimeForRV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbSomethingChanged:Z

    .line 221
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 889
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->saveVisit(Z)V

    .line 890
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 283
    invoke-super/range {p0 .. p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 287
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 289
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 290
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    const-string v3, "ReportDensity"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->reportDensity:I

    .line 295
    iput-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbSomethingChanged:Z

    const v3, 0x7f090206

    .line 296
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    const v3, 0x7f0901ea

    .line 297
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtScripture:Landroid/widget/EditText;

    const v3, 0x7f090201

    .line 298
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtPublication:Landroid/widget/EditText;

    const v3, 0x7f0901f8

    .line 299
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtMovies:Landroid/widget/EditText;

    const v3, 0x7f0901fa

    .line 300
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtNextTime:Landroid/widget/EditText;

    const v3, 0x7f0904ed

    .line 301
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->spAge:Landroid/widget/Spinner;

    const v5, 0x7f0904f7

    .line 302
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mspinnerResults:Landroid/widget/Spinner;

    const v5, 0x7f090465

    .line 303
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    const v6, 0x7f0900ec

    .line 304
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v6, 0x7f090105

    .line 305
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v6, 0x7f09014a

    .line 306
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    const v6, 0x7f09014b

    .line 307
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    const v6, 0x7f0900f9

    .line 308
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const v7, 0x7f0900f8

    .line 309
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const v8, 0x7f0900f2

    .line 310
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    const v9, 0x7f090203

    .line 311
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtStudyPub:Landroid/widget/EditText;

    const v9, 0x7f0901ed

    .line 312
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtContinue:Landroid/widget/EditText;

    const v9, 0x7f09052d

    .line 313
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mtxtTimeForRV:Landroid/widget/TextView;

    const v9, 0x7f090482

    .line 316
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CompoundButton;

    invoke-static {v0, v10}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    const v10, 0x7f090495

    .line 317
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CompoundButton;

    invoke-static {v0, v10}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    const v10, 0x7f09046a

    .line 318
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CompoundButton;

    invoke-static {v0, v10}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    const v10, 0x7f09046d

    .line 319
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CompoundButton;

    invoke-static {v0, v10}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    const v10, 0x7f090493

    .line 320
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CompoundButton;

    invoke-static {v0, v10}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 322
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mtxtTimeForRV:Landroid/widget/TextView;

    new-instance v11, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$6;

    invoke-direct {v11, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f090106

    .line 332
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 333
    new-instance v11, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$7;

    invoke-direct {v11, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 344
    const-string v11, "IsFirstVisit"

    const-string v12, "HidePerson"

    const-string v13, "IsEditing"

    const-string v14, "ServiceSession"

    const-string v15, "Person"

    const-string v9, "VisitInfo"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 346
    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 347
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iput-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 348
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    .line 349
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    .line 350
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    goto :goto_0

    :cond_2
    if-eqz v10, :cond_9

    .line 353
    invoke-virtual {v10, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    invoke-virtual {v10, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 355
    :cond_3
    invoke-virtual {v10, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    invoke-virtual {v10, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 357
    :cond_4
    invoke-virtual {v10, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 358
    invoke-virtual {v10, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 359
    :cond_5
    invoke-virtual {v10, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 360
    invoke-virtual {v10, v13, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    .line 361
    :cond_6
    invoke-virtual {v10, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    .line 363
    :cond_7
    const-string v1, "TagPerson"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 364
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mTagPerson:Z

    if-eqz v1, :cond_8

    .line 366
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$GetAddressPositionTask;

    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v1, v0, v0, v9}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$GetAddressPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    new-array v9, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    :cond_8
    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    .line 371
    :cond_9
    :goto_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 373
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/16 v9, 0x8

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-nez v1, :cond_a

    const v1, 0x7f090307

    .line 374
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 375
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 376
    :cond_a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_c

    .line 377
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 378
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtStudyPub:Landroid/widget/EditText;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :cond_b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 380
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtContinue:Landroid/widget/EditText;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_c
    :goto_1
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    if-eqz v1, :cond_d

    const v1, 0x7f0905ff

    .line 384
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0905e2

    .line 386
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0904ed

    .line 387
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_d
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 393
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mtxtTimeForRV:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_e
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$8;

    invoke-direct {v5, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$9;

    invoke-direct {v5, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const-string v1, "showVideo"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbShowVideo:Z

    .line 410
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-nez v1, :cond_f

    .line 411
    const-string v1, "checkAddReport"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 412
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 414
    :cond_f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 415
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v1, :cond_10

    .line 416
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchRV:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_10
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 421
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v5, 0x7f120585

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 423
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    if-nez v1, :cond_11

    .line 424
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 426
    :cond_11
    const-string v1, "checkAutoCountStudies"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 427
    const-string v5, "checkCountVisitedStudies"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 428
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_12
    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    .line 429
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const/4 v4, 0x1

    :cond_14
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    .line 431
    :cond_15
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mchStudy:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 435
    :goto_3
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 436
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_16
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 438
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtScripture:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_17
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 440
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtPublication:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :cond_18
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 442
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtMovies:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getMovies()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_19
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 444
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtNextTime:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_1a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 446
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 448
    :cond_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtVisitInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$10;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->medtNextTime:Landroid/widget/EditText;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$11;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$14;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->setTimeButton()V

    .line 704
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->setupAges()V

    .line 705
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->setupResults()V

    .line 707
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    const v2, 0x7f090482

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 708
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_1c

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-nez v2, :cond_1c

    .line 709
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getHouseHolderID(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 710
    :cond_1c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    if-eqz v1, :cond_1d

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    if-eqz v2, :cond_1d

    .line 711
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->rdHouseHolder:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->getHouseHolderID(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1d
    :goto_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f1201a5

    .line 770
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080306

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 772
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 777
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 783
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->saveVisit(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 779
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->saveVisit(Z)V

    .line 786
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 910
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    const-string v1, "Date"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 916
    const-string v0, "Changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbSomethingChanged:Z

    .line 918
    const-string v0, "VisitInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 919
    const-string v0, "Person"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 920
    const-string v0, "ServiceSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 921
    const-string v0, "IsEditing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    .line 922
    const-string v0, "HidePerson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    .line 923
    const-string v0, "IsFirstVisit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "Date"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 897
    const-string v0, "Changed"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mbSomethingChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    const-string v0, "VisitInfo"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPersonInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 899
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 900
    const-string v0, "ServiceSession"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 901
    const-string v0, "IsEditing"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mIsEditing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    const-string v0, "HidePerson"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mHidePersonInfo:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    const-string v0, "IsFirstVisit"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->isFirstVisit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 905
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected showDialogs(I)V
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddVideoShowingsListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    const/16 v1, 0xa

    const/4 v2, 0x6

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 267
    :pswitch_2
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    const/16 v2, 0x9

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 264
    :pswitch_3
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 236
    :pswitch_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 237
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 238
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    const-string v1, "checkFirstDayOfWeek"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 241
    :cond_0
    invoke-virtual {p1, v3}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v0, 0x7c1

    const/16 v1, 0x7ec

    .line 243
    invoke-virtual {p1, v0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "datepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 228
    :pswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 230
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    move-result-object p1

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "timepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 273
    :pswitch_6
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 270
    :pswitch_7
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddMagazineListener:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    invoke-direct {p1, p0, v3, v0, v3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 261
    :pswitch_8
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    invoke-direct {p1, p0, v4, v0, v4}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 258
    :pswitch_9
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->mAddPublicationListener:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    invoke-direct {p1, p0, v2, v0, v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showEditScrptureDlg(Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;I)V
    .locals 11

    .line 716
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0080

    .line 718
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f120356

    .line 719
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901e6

    .line 721
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 722
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901de

    .line 723
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 724
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0904e9

    .line 726
    invoke-virtual {v9, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/CheckBox;

    .line 727
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 728
    const-string p2, "SortScriptures"

    const/4 v0, 0x0

    invoke-interface {v7, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const p2, 0x7f0900f5

    .line 730
    invoke-virtual {v9, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const v0, 0x7f0900e6

    .line 731
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 732
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    move v5, p4

    invoke-direct/range {v0 .. v9}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/BaseAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$16;

    invoke-direct {p1, p0, v9}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Landroid/app/Dialog;)V

    invoke-virtual {v10, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void
.end method
