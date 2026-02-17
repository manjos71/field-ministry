.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;
.super Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getCurrentLocations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Landroid/location/Location;)V

    .line 865
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Z)V

    return-void
.end method
