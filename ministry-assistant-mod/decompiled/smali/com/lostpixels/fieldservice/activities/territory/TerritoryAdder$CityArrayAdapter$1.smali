.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1198
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->access$800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeCities(Landroid/content/Context;I)V

    .line 1199
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    .line 1200
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1201
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    goto :goto_0

    .line 1203
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    .line 1204
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapterCity:Landroid/widget/ArrayAdapter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
