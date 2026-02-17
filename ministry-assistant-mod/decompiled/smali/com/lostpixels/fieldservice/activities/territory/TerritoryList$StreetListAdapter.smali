.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreetListAdapter"
.end annotation


# instance fields
.field private final images:Ljava/util/List;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 4369
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p1, 0x1090011

    .line 4370
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4371
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 4377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 4378
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 4379
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4381
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 4380
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object p2
.end method
