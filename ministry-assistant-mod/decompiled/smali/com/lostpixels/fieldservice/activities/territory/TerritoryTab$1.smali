.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eq p3, p2, :cond_7

    const/4 p4, 0x2

    if-eq p3, p4, :cond_5

    const/4 p4, 0x3

    if-eq p3, p4, :cond_3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    .line 125
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 127
    :goto_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fputmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;I)V

    goto :goto_2

    .line 118
    :cond_1
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p3

    if-eq p4, p3, :cond_2

    const/4 p1, 0x1

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p2, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fputmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;I)V

    :goto_1
    move p2, p1

    goto :goto_2

    .line 113
    :cond_3
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p3

    if-eq p4, p3, :cond_4

    const/4 p1, 0x1

    .line 115
    :cond_4
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p2, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fputmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;I)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p3

    if-eq p4, p3, :cond_6

    const/4 p1, 0x1

    .line 110
    :cond_6
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p2, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fputmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;I)V

    goto :goto_1

    .line 103
    :cond_7
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p3

    if-eq p2, p3, :cond_8

    const/4 p1, 0x1

    .line 105
    :cond_8
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p3, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fputmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;I)V

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_9

    .line 132
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmTerritoryTabFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmeTerritoryDisplayType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->setDisplayType(I)V

    .line 133
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$msaveCurrentPage(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)V

    .line 134
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->-$$Nest$fgetmTerritoryTabFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->updateList()V

    :cond_9
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
