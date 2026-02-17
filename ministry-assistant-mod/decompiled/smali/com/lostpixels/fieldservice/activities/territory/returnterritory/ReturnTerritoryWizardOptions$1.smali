.class Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    if-eq p2, v1, :cond_1

    .line 68
    iput-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    if-eqz p2, :cond_0

    .line 69
    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->hasInterestedPersons:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;->onUpdated(Z)V

    :cond_1
    return-void
.end method
