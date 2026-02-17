.class public Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field context:Landroid/content/Context;

.field errorSyncing:Z

.field listener:Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->listener:Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;

    .line 33
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->errorSyncing:Z

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090107

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f4

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->errorSyncing:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0905a0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    const v2, 0x7f120316

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901b3

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    const v3, 0x7f120285

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09059f

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    .line 87
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c0047

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    .line 93
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/fima/cardsui/objects/AbstractCard;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    const-string v2, "HelpDlgs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "NoBackupPlease"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f090107

    if-ne p1, v2, :cond_1

    .line 65
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->errorSyncing:Z

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->scheduleSync()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->scheduleBackup()V

    goto :goto_0

    .line 70
    :cond_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->errorSyncing:Z

    if-eqz p1, :cond_2

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "syncMode"

    const-string v1, "manual"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ScheduleBackup"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetEnableBackup()V

    .line 77
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->listener:Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;

    if-eqz p1, :cond_3

    .line 78
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/ui/nowcards/UpdateCardsInterface;->OnUpdateCards()V

    :cond_3
    return-void

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    const v0, 0x7f120515

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method scheduleBackup()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    const-string v1, "ScheduleFreq"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v1, "ScheduleFiles"

    const/16 v3, 0x1e

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x2

    .line 109
    const-string v3, "BackupLocations"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v1, "ScheduleBackup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "ScheduleTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupBackupSchedule(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    .line 119
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->fixBackupAccount()V

    :cond_0
    return-void
.end method

.method scheduleSync()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/EnableBackupsCard;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    .line 126
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->fixSyncAccount()V

    :cond_0
    return-void
.end method
