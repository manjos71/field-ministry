.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mData:Ljava/util/List;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const p1, 0x7f0c0112

    .line 367
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 368
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 369
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 377
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getSectionAbove(I)I
    .locals 1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 386
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionBelow(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 434
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0112

    invoke-virtual {v1, v2, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0103

    invoke-virtual {v1, v2, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x7f09055f

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 446
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 449
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isSection(I)Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    return p1
.end method
