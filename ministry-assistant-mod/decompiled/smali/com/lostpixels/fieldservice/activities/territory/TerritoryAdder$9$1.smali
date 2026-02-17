.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;I)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 611
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->access$400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->val$pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeCities(Landroid/content/Context;I)V

    .line 612
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    .line 613
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I

    move-result p1

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->val$pos:I

    if-ne p1, p2, :cond_0

    .line 614
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    .line 617
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapterCity:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
