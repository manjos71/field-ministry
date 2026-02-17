.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionController"
.end annotation


# instance fields
.field private final mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

.field private mDivPosAbove:I

.field private mDivPosBelow:I

.field final mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mIsSection:Z

.field private mPos:I

.field private origHeight:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/mobeta/android/dslv/DragSortListView;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;)V
    .locals 1

    .line 246
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const p1, 0x7f09055f

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, p2, p1, v0, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    const/4 p1, -0x1

    .line 244
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->origHeight:I

    .line 248
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 249
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 250
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 3

    .line 268
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mPos:I

    .line 269
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->isSection(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mIsSection:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->getSectionAbove(I)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDivPosAbove:I

    .line 272
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->getSectionBelow(I)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDivPosBelow:I

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    .line 290
    iget v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->origHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->origHeight:I

    .line 294
    :cond_0
    iget v2, p3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 295
    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p3, v2

    .line 296
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 298
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->origHeight:I

    int-to-float v4, v3

    mul-float p3, p3, v4

    float-to-int p3, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :cond_1
    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mIsSection:Z

    if-eqz p3, :cond_5

    .line 304
    iget p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDivPosAbove:I

    const/4 v2, 0x0

    if-ltz p3, :cond_2

    .line 305
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int/2addr p3, v0

    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v2

    .line 307
    :goto_0
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDivPosBelow:I

    if-ltz v3, :cond_3

    .line 308
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_3
    if-eqz p3, :cond_4

    .line 311
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    .line 312
    iget p1, p2, Landroid/graphics/Point;->y:I

    if-le p1, p3, :cond_4

    .line 313
    iput p3, p2, Landroid/graphics/Point;->y:I

    :cond_4
    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v1

    .line 318
    iget p3, p2, Landroid/graphics/Point;->y:I

    if-ge p3, p1, :cond_5

    .line 319
    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_5
    return-void
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 255
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    div-int/lit8 v1, v1, 0x3

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
