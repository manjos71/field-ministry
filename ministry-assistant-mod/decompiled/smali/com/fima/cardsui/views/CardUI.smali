.class public Lcom/fima/cardsui/views/CardUI;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fima/cardsui/views/CardUI$OnRenderedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/fima/cardsui/StackAdapter;

.field private mColumnNumber:I

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mListView:Lcom/fima/cardsui/views/QuickReturnListView;

.field private mMinRawY:I

.field private mPlaceholderView:Landroid/view/View;

.field private mQuickReturnView:Landroid/view/ViewGroup;

.field private mStacks:Ljava/util/ArrayList;

.field private mState:I

.field private mSwipeable:Z

.field private mTableLayout:Landroid/widget/TableLayout;

.field protected renderedCardsStacks:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/fima/cardsui/views/CardUI;->renderedCardsStacks:I

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    .line 54
    iput v0, p0, Lcom/fima/cardsui/views/CardUI;->mMinRawY:I

    .line 55
    iput v0, p0, Lcom/fima/cardsui/views/CardUI;->mState:I

    .line 58
    iput-boolean v0, p0, Lcom/fima/cardsui/views/CardUI;->mSwipeable:Z

    const/4 v0, 0x0

    .line 79
    const-string v2, "columnCount"

    invoke-interface {p2, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    .line 80
    invoke-direct {p0, p1}, Lcom/fima/cardsui/views/CardUI;->initData(Landroid/content/Context;)V

    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    .line 96
    iget v0, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    sget v0, Lcom/fima/cardsui/R$layout;->cards_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    sget v0, Lcom/fima/cardsui/R$id;->listView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fima/cardsui/views/QuickReturnListView;

    iput-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mListView:Lcom/fima/cardsui/views/QuickReturnListView;

    goto :goto_0

    .line 102
    :cond_0
    sget v0, Lcom/fima/cardsui/R$layout;->cards_view_multicolumn:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    sget v0, Lcom/fima/cardsui/R$id;->tableLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mTableLayout:Landroid/widget/TableLayout;

    .line 107
    :goto_0
    sget v0, Lcom/fima/cardsui/R$layout;->header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mHeader:Landroid/view/View;

    .line 108
    sget p1, Lcom/fima/cardsui/R$id;->sticky:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mQuickReturnView:Landroid/view/ViewGroup;

    .line 109
    iget-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mHeader:Landroid/view/View;

    sget v0, Lcom/fima/cardsui/R$id;->placeholder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mPlaceholderView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addStack(Lcom/fima/cardsui/objects/CardStack;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/fima/cardsui/views/CardUI;->addStack(Lcom/fima/cardsui/objects/CardStack;Z)V

    return-void
.end method

.method public addStack(Lcom/fima/cardsui/objects/CardStack;Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/fima/cardsui/views/CardUI;->refresh()V

    :cond_0
    return-void
.end method

.method public clearCards()V
    .locals 1

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/fima/cardsui/views/CardUI;->renderedCardsStacks:I

    .line 371
    invoke-virtual {p0}, Lcom/fima/cardsui/views/CardUI;->refresh()V

    return-void
.end method

.method public getLastCardStackPosition()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getOnRenderedListener()Lcom/fima/cardsui/views/CardUI$OnRenderedListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollView()Lcom/fima/cardsui/views/QuickReturnListView;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mListView:Lcom/fima/cardsui/views/QuickReturnListView;

    return-object v0
.end method

.method public refresh()V
    .locals 12

    .line 318
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    if-nez v0, :cond_6

    .line 319
    new-instance v0, Lcom/fima/cardsui/StackAdapter;

    iget-object v1, p0, Lcom/fima/cardsui/views/CardUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/fima/cardsui/views/CardUI;->mSwipeable:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/fima/cardsui/StackAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    .line 320
    iget-object v1, p0, Lcom/fima/cardsui/views/CardUI;->mListView:Lcom/fima/cardsui/views/QuickReturnListView;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mTableLayout:Landroid/widget/TableLayout;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 324
    :goto_0
    iget-object v4, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    invoke-virtual {v4}, Lcom/fima/cardsui/StackAdapter;->getCount()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ge v2, v4, :cond_4

    .line 326
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/fima/cardsui/views/CardUI;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 327
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 328
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 331
    :goto_1
    iget v8, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    if-ge v4, v8, :cond_3

    add-int v8, v2, v4

    .line 332
    iget-object v9, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    invoke-virtual {v9}, Lcom/fima/cardsui/StackAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 333
    iget-object v9, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    invoke-virtual {v9, v8, v0, v3}, Lcom/fima/cardsui/StackAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 334
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 335
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v9, v10, v11, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 337
    :cond_1
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v9, v7, v6, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :goto_2
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 342
    :cond_3
    iget-object v4, p0, Lcom/fima/cardsui/views/CardUI;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 324
    iget v4, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 346
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    invoke-virtual {v0}, Lcom/fima/cardsui/StackAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/fima/cardsui/views/CardUI;->mColumnNumber:I

    rem-int/2addr v0, v1

    :goto_3
    if-lez v0, :cond_5

    .line 349
    new-instance v1, Landroid/widget/Space;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v7, v6, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    return-void

    .line 360
    :cond_6
    iget-boolean v1, p0, Lcom/fima/cardsui/views/CardUI;->mSwipeable:Z

    invoke-virtual {v0, v1}, Lcom/fima/cardsui/StackAdapter;->setSwipeable(Z)V

    .line 361
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    iget-object v1, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fima/cardsui/StackAdapter;->setItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setCurrentStackTitle(Ljava/lang/String;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mStacks:Ljava/util/ArrayList;

    .line 376
    invoke-virtual {p0}, Lcom/fima/cardsui/views/CardUI;->getLastCardStackPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fima/cardsui/objects/CardStack;

    .line 377
    invoke-virtual {v0, p1}, Lcom/fima/cardsui/objects/CardStack;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mPlaceholderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/fima/cardsui/views/CardUI;->mListView:Lcom/fima/cardsui/views/QuickReturnListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object p1, p0, Lcom/fima/cardsui/views/CardUI;->mQuickReturnView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setOnRenderedListener(Lcom/fima/cardsui/views/CardUI$OnRenderedListener;)V
    .locals 0

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/fima/cardsui/views/CardUI;->mSwipeable:Z

    return-void
.end method
