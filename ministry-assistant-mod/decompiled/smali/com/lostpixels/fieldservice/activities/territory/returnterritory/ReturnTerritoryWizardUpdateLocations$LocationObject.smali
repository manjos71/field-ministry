.class Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationObject"
.end annotation


# instance fields
.field streets:Ljava/util/List;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

.field visits:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->visits:Ljava/util/List;

    .line 362
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardUpdateLocations$LocationObject;->streets:Ljava/util/List;

    return-void
.end method
