.class public Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/StepperLayout$StepperListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;
    }
.end annotation


# instance fields
.field deleteTerritory:Z

.field hasDeletedTerritory:Z

.field private keepVisitsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

.field listOfPages:Ljava/util/List;

.field private mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

.field private newTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

.field private optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

.field private territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field private updateTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;


# direct methods
.method static bridge synthetic -$$Nest$fgetkeepVisitsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->keepVisitsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnewTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->newTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->updateTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputkeepVisitsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->keepVisitsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnewTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->newTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoptionsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->updateTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0107

    .line 69
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    .line 61
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->hasDeletedTerritory:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method


# virtual methods
.method public onCompleted(Landroid/view/View;)V
    .locals 13

    .line 121
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->hasDeletedTerritory:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->hasDeletedTerritory:Z

    .line 125
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->deleteTerritory()Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->shouldReturnTerritory()Z

    move-result v11

    .line 127
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territoryWorked()Z

    move-result v8

    .line 128
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->getComment()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->keepVisitsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->getPersonsToKeep()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 135
    :goto_0
    new-instance v10, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;

    invoke-direct {v10, p0, v2, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Ljava/util/List;Z)V

    .line 168
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->updateTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->getLocations()Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->newTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->getLocations()Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;

    move-result-object v2

    move-object v12, v2

    goto :goto_2

    :cond_3
    move-object v12, v1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v12, :cond_4

    .line 299
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    iget-object v5, v12, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->streets:Ljava/util/List;

    iget-object v7, v12, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->streets:Ljava/util/List;

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;Z)V

    move-object v1, v2

    :cond_4
    if-eqz v1, :cond_7

    if-nez v11, :cond_6

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v12, :cond_7

    iget-object v0, v12, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 p1, 0x0

    .line 303
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 305
    :cond_7
    invoke-interface {v10, p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;->onFinished(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 78
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "delete"

    const-string v1, "id"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 82
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 86
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasInterestedPersons(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const p1, 0x7f090515

    .line 96
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stepstone/stepper/StepperLayout;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    .line 97
    invoke-virtual {p1, p0}, Lcom/stepstone/stepper/StepperLayout;->setListener(Lcom/stepstone/stepper/StepperLayout$StepperListener;)V

    .line 98
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/stepstone/stepper/StepperLayout;->setAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    const p1, 0x7f0901a0

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    if-eqz p1, :cond_4

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->updateTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    if-eqz p1, :cond_5

    .line 108
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->newTHPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    if-eqz p1, :cond_6

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 111
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->keepVisitsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    if-eqz p1, :cond_7

    .line 112
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    :cond_7
    return-void
.end method

.method public onReturn()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 310
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 313
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->optionsPage:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    if-eqz v0, :cond_0

    .line 314
    const-string v1, "delete"

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->deleteTerritory()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public onStepSelected(I)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    const v3, 0x7f1205ed

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f120337

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 342
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1201e2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(I)V

    goto :goto_1

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 338
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1201e3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(I)V

    goto :goto_1

    .line 326
    :cond_3
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f1200a6

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f12032a

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p1, :cond_5

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 349
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    return-void
.end method

.method public onUpdated(Z)V
    .locals 5

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 366
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 370
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 375
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 376
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v1, p1

    :goto_1
    if-eqz v1, :cond_5

    .line 383
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/stepstone/stepper/StepperLayout;->setAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    .line 384
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    invoke-virtual {p1}, Lcom/stepstone/stepper/StepperLayout;->getAdapter()Lcom/stepstone/stepper/adapter/StepAdapter;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
