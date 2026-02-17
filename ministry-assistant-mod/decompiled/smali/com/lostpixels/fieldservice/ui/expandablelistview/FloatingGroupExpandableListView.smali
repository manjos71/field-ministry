.class public Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I


# instance fields
.field private mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

.field private mClearSelectorOnTapAction:Ljava/lang/Runnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDrawSelectorOnTop:Z

.field private mFloatingGroupEnabled:Z

.field private mFloatingGroupPosition:I

.field private mFloatingGroupScrollY:I

.field private mFloatingGroupView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandledByOnInterceptTouchEvent:Z

.field private mHandledByOnTouchEvent:Z

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mOnClickAction:Ljava/lang/Runnable;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPositionSelectorOnTapAction:Ljava/lang/Runnable;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorEnabled:Z

.field private mSelectorPosition:I

.field private final mSelectorRect:Landroid/graphics/Rect;

.field private mShouldPositionSelector:Z

.field private mViewAttachInfo:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingGroupEnabled(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnClickAction(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnClickAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnGroupClickListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnScrollListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->createFloatingGroupView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpositionSelectorOnFloatingGroup(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->positionSelectorOnFloatingGroup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 32
    new-array v1, v0, [I

    sput-object v1, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->EMPTY_STATE_SET:[I

    const v2, 0x10100a8

    .line 35
    filled-new-array {v2}, [I

    move-result-object v3

    sput-object v3, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    const v4, 0x10100a9

    .line 38
    filled-new-array {v4}, [I

    move-result-object v5

    sput-object v5, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 41
    filled-new-array {v2, v4}, [I

    move-result-object v2

    sput-object v2, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v4, 0x4

    .line 44
    new-array v4, v4, [[I

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    sput-object v4, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->GROUP_STATE_SETS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    .line 86
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->init()V

    return-void
.end method

.method private createFloatingGroupView(I)V
    .locals 8

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    .line 356
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 358
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const v4, 0x7f09021b

    if-ge v2, v3, :cond_1

    .line 359
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 361
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 362
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-virtual {v3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 374
    :cond_2
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_4

    .line 377
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 378
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-lt v2, v3, :cond_3

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 383
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 388
    :cond_4
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    const/4 v2, 0x1

    if-ltz v0, :cond_6

    .line 389
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v3, v0, v4, v5, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 392
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    .line 393
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$7;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$7;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 401
    :cond_5
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    .line 404
    :goto_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->loadAttachInfo()V

    .line 405
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-nez v0, :cond_7

    :goto_2
    return-void

    .line 412
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 413
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 415
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_8

    .line 416
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    :cond_8
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 423
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    add-int/2addr v0, v2

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_9

    .line 426
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_9

    .line 427
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_9

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    .line 434
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 436
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 437
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 438
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4, p1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 440
    iput v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupScrollY:I

    return-void
.end method

.method private drawDefaultSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .line 478
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 480
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorPosition:I

    if-eq v1, v0, :cond_1

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawFloatingGroupIndicator(Landroid/graphics/Canvas;)V
    .locals 6

    .line 512
    const-string v0, "mGroupIndicator"

    const-class v1, Landroid/widget/ExpandableListView;

    invoke-static {v1, v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 515
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v2

    .line 516
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    .line 517
    sget-object v3, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 519
    const-string v2, "mIndicatorLeft"

    invoke-static {v1, v2, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 520
    const-string v3, "mIndicatorRight"

    invoke-static {v1, v3, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 522
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 524
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 525
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawFloatingGroupSelector(Landroid/graphics/Canvas;)V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 491
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorPosition:I

    if-ne v1, v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 5

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 507
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 95
    new-instance v0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    new-instance v0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnClickAction:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$3;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private loadAttachInfo()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 448
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-static {v0, v1, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private positionSelectorOnFloatingGroup()V
    .locals 6

    .line 468
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 469
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupPosition:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    const/4 v2, 0x2

    .line 470
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Landroid/view/View;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object v4, v2, v5

    const-class v0, Landroid/widget/AbsListView;

    const-string v4, "positionSelector"

    invoke-static {v0, v4, v3, p0, v2}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 473
    :cond_0
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 474
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAttachInfo(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mViewAttachInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 457
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-static {v1, v2, p1, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 460
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 461
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v1, Landroid/widget/AbsListView;

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const/4 v3, 0x0

    .line 209
    iput v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorPosition:I

    goto :goto_0

    .line 211
    :cond_0
    const-string v3, "mSelectorPosition"

    invoke-static {v1, v3, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorPosition:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    const-string v2, "mSelectorRect"

    invoke-static {v1, v2, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_2

    .line 219
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawDefaultSelector(Landroid/graphics/Canvas;)V

    .line 222
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 225
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_3

    .line 226
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawFloatingGroupSelector(Landroid/graphics/Canvas;)V

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 231
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 234
    :cond_4
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawFloatingGroupIndicator(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    if-eqz v0, :cond_5

    .line 238
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawDefaultSelector(Landroid/graphics/Canvas;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->drawFloatingGroupSelector(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 249
    :cond_0
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    .line 250
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    .line 251
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 255
    :cond_1
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    .line 256
    new-array v2, v2, [I

    .line 257
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 258
    new-instance v3, Landroid/graphics/RectF;

    aget v4, v2, v1

    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v6, v2, v5

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v1, v2, v1

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v1, v7

    int-to-float v1, v1

    aget v2, v2, v5

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-direct {v3, v4, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelectorEnabled:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->positionSelectorOnFloatingGroup()V

    .line 270
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 271
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mClearSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 264
    :cond_4
    iput-boolean v5, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mShouldPositionSelector:Z

    .line 265
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mPositionSelectorOnTapAction:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    .line 290
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 177
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onAttachedToWindow()V

    .line 179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$6;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$6;-><init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 191
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 199
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 295
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnInterceptTouchEvent:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 301
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mHandledByOnTouchEvent:Z

    return p1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 324
    instance-of v0, p1, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->setAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;)V

    return-void

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The adapter must be an instance of WrapperExpandableListAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;)V
    .locals 0

    .line 331
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 332
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mAdapter:Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setDrawSelectorOnTop(Z)V

    .line 319
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFloatingGroupEnabled(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 343
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnScrollFloatingGroupListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 307
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method
