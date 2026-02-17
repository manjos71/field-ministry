.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# instance fields
.field private mPreferredStreet:Ljava/lang/String;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryID:J

.field private medtCellNumber:Landroid/widget/EditText;

.field private medtName:Landroid/widget/EditText;

.field private medtPhoneNumber:Landroid/widget/EditText;

.field private medtStreet:Landroid/widget/AutoCompleteTextView;

.field private medtStreetNumber:Landroid/widget/EditText;

.field private mlstStreets:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$0BdjiYx5G4gA9RLj6ULhNJ7XPsE(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;Landroid/content/SharedPreferences;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const p2, 0x7f0902db

    .line 101
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 101
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "showPhoneAddressLayout"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$XIc-NVU0ywdzHm5tP-yqK1paeiE(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreetNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 116
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 117
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtName:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtCellNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtName:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtPhoneNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtStreetNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreetNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->setResult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lio/realm/Realm;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lio/realm/Realm;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private setResult()V
    .locals 3

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    const-string v1, "Territory"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 235
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 56
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0c00fa

    .line 61
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    const-string v3, "Streets"

    const-string v4, "PrefStreet"

    const-string v5, "TerritoryID"

    const-string v6, "Territory"

    if-eqz p1, :cond_4

    .line 65
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_2

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    .line 69
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    goto :goto_0

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_5

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 77
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_6

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    .line 80
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    if-nez p1, :cond_7

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 83
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    .line 84
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    if-nez p1, :cond_8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    :cond_8
    :goto_0
    const p1, 0x7f0901fb

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreetNumber:Landroid/widget/EditText;

    const p1, 0x7f090202

    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f0901f9

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtName:Landroid/widget/EditText;

    const p1, 0x7f0901fe

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    const p1, 0x7f0901ff

    .line 92
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    .line 94
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090538

    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 99
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const-string v1, "showPhoneAddressLayout"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const p1, 0x7f0900e2

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 107
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 125
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 126
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreetNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    const p1, 0x7f0900eb

    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 131
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 153
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 154
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 162
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x109000a

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 164
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->medtCellNumber:Landroid/widget/EditText;

    .line 171
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1204bd

    .line 173
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    .line 173
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->setResult()V

    .line 201
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    const-string v0, "TerritoryID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    .line 210
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 213
    const-string v0, "PrefStreet"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 215
    const-string v0, "Streets"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    .line 217
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 222
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritoryID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 223
    const-string v0, "Territory"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 225
    :cond_0
    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 226
    :goto_0
    const-string v0, "PrefStreet"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "Streets"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->mlstStreets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
