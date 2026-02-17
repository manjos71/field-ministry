.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# instance fields
.field private mPosition:Lcom/google/android/gms/maps/model/LatLng;

.field private mPreferredStreet:Ljava/lang/String;

.field private mTagCheck:Landroid/widget/CheckBox;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryID:J

.field mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field mbHasLocation:Z

.field private mbHideAddButton:Z

.field private mbShouldExit:Z

.field private medtAreaName:Landroid/widget/AutoCompleteTextView;

.field private medtAreaNumber:Landroid/widget/EditText;

.field private mlstStreets:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTagCheck:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbShouldExit(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbShouldExit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtAreaName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmbShouldExit(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbShouldExit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->setResult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHasLocation:Z

    .line 73
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private setResult()V
    .locals 3

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    const-string v1, "Territory"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 462
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 82
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v0, -0x1

    .line 86
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 88
    const-string v4, "Position"

    const-string v5, "HideAdd"

    const-string v6, "Streets"

    const-string v7, "PrefStreet"

    const-string v8, "TerritoryID"

    const-string v9, "Territory"

    if-eqz p1, :cond_6

    .line 89
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_2

    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    .line 93
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    .line 99
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHideAddButton:Z

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_c

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_7

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 105
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 106
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 107
    invoke-virtual {v2, v8, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    .line 108
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 110
    :cond_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez p1, :cond_9

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 111
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    .line 112
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 113
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    .line 114
    :cond_a
    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 115
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHideAddButton:Z

    .line 116
    :cond_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-nez p1, :cond_c

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 117
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 120
    :cond_c
    :goto_0
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbShouldExit:Z

    const p1, 0x7f0c0060

    .line 122
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0901e9

    .line 124
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaNumber:Landroid/widget/EditText;

    const p1, 0x7f0901e8

    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f090150

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTagCheck:Landroid/widget/CheckBox;

    const p1, 0x7f0900e2

    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 130
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHideAddButton:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_d

    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_e

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTagCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const p1, 0x7f0900eb

    .line 169
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 170
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 197
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 198
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    .line 207
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x109000a

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 209
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    :cond_f
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundAddressNumber()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundStreet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 215
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 216
    :cond_10
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    .line 219
    :cond_11
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 220
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaName:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 224
    :cond_12
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_13
    if-eqz v0, :cond_14

    .line 228
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_1
    if-eqz p1, :cond_15

    .line 232
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->medtAreaNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1204bd

    .line 240
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    .line 240
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->setResult()V

    .line 271
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 419
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 421
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialogPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;I[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    const-string v0, "TerritoryID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    .line 430
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "PrefStreet"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const-string v0, "Streets"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    .line 436
    :cond_3
    const-string v0, "HideAdd"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHideAddButton:Z

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_5

    const-string v0, "Position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 441
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 446
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritoryID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 447
    const-string v0, "Territory"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 449
    :cond_0
    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 450
    :goto_0
    const-string v0, "PrefStreet"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "Streets"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mlstStreets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 452
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 453
    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 454
    :cond_1
    const-string v0, "HideAdd"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHideAddButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 412
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 413
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 391
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 393
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 394
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$9;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Lpermissions/dispatcher/PermissionRequest;)V

    .line 395
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$8;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 400
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updatePosition()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 277
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mbHasLocation:Z

    .line 279
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 281
    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->buildAlertMessageNoGps(Landroid/app/Activity;)V

    return-void

    .line 285
    :cond_0
    new-instance v3, Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;-><init>()V

    .line 287
    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$7;

    invoke-direct {v4, p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;J)V

    const/16 v0, 0x32

    .line 311
    :try_start_0
    invoke-virtual {v3, p0, v4, v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->getLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1GetPositionTask;

    invoke-direct {v0, p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1GetPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    const v1, 0x7f1203f9

    .line 381
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
