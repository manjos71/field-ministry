.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# instance fields
.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-super/range {p0 .. p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->mbRestart:Z

    if-eqz v2, :cond_0

    return-void

    .line 40
    :cond_0
    const-string v2, "TerritoryID"

    if-eqz v1, :cond_1

    .line 41
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v3, :cond_2

    .line 42
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v1, :cond_2

    .line 45
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    :cond_2
    :goto_0
    const v1, 0x7f0c0152

    .line 48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 49
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    const-string v2, "langPref"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090031

    .line 52
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;

    .line 53
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 54
    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->setShowAmPm(Z)V

    const v1, 0x7f09050f

    .line 55
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09050d

    .line 56
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09050e

    .line 57
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090510

    .line 58
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f5

    .line 59
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 61
    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog$1;

    invoke-direct {v7, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 72
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v10

    .line 74
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 75
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 76
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 77
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    add-int/lit8 v8, v8, 0x1

    .line 79
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v13

    const/16 v15, 0xc

    const-wide/16 v16, 0x0

    cmp-long v18, v13, v16

    if-nez v18, :cond_7

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    if-ne v13, v15, :cond_8

    :cond_7
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/lit8 v7, v7, 0x1

    .line 83
    :cond_8
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v13

    cmp-long v18, v13, v16

    if-nez v18, :cond_9

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    if-eqz v13, :cond_9

    .line 84
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_9

    .line 85
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_9

    .line 86
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_9

    .line 87
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    .line 88
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    if-eq v13, v15, :cond_9

    .line 89
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/16 v14, 0xe

    if-eq v13, v14, :cond_9

    .line 90
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/16 v14, 0x11

    if-eq v13, v14, :cond_9

    .line 91
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_a

    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 94
    :cond_a
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 100
    :cond_b
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v6

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getDateCreated()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v1, "%)"

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v10, " ("

    const-string v11, "###.#"

    if-lez v3, :cond_c

    .line 102
    new-instance v12, Ljava/text/DecimalFormat;

    invoke-direct {v12, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v7, v7

    int-to-float v14, v3

    div-float/2addr v7, v14

    mul-float v7, v7, v6

    float-to-double v14, v7

    .line 104
    invoke-virtual {v12, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 106
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (0%)"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-lez v8, :cond_d

    .line 109
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v3, v8, v3

    sub-int/2addr v3, v9

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v3

    int-to-float v9, v8

    div-float/2addr v3, v9

    mul-float v3, v3, v6

    float-to-double v9, v3

    .line 111
    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 113
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v2, v8, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (100%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 121
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
