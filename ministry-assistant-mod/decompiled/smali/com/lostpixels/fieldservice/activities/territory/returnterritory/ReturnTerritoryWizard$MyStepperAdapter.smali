.class public Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;
.super Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyStepperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    .line 391
    invoke-direct {p0, p2, p3}, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createStep(I)Lcom/stepstone/stepper/Step;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->getFragment(I)Lcom/stepstone/stepper/Step;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFragment(I)Lcom/stepstone/stepper/Step;
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fputkeepVisitsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;)V

    .line 446
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetkeepVisitsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;

    move-result-object p1

    .line 447
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardKeepVisits;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-object p1

    .line 455
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fputnewTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    .line 456
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetnewTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->setAddNew()V

    .line 457
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetnewTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-object p1

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fputupdateTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V

    .line 451
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetupdateTHPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    move-result-object p1

    .line 452
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-object p1

    .line 438
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fputoptionsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;)V

    .line 439
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetoptionsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->deleteTerritory:Z

    if-eqz v1, :cond_4

    .line 441
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetoptionsPage(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->setDeleteTerritory()V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->listOfPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getViewModel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel;
    .locals 2

    .line 419
    new-instance v0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    iget-object v1, p0, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const p1, 0x7f12005a

    .line 421
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonLabel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 422
    invoke-virtual {p1, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonStartDrawableResId(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    goto :goto_0

    :cond_0
    const p1, 0x7f12020d

    .line 424
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonLabel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object p1

    const v1, 0x7f080264

    .line 425
    invoke-virtual {p1, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonStartDrawableResId(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    .line 427
    :goto_0
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    .line 428
    invoke-virtual {v0}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->create()Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object p1

    return-object p1
.end method
