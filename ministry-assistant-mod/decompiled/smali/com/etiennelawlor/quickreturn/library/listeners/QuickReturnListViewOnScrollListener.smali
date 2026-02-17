.class public Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;
    }
.end annotation


# instance fields
.field private mExtraOnScrollListenerList:Ljava/util/List;

.field private final mFooter:Landroid/view/View;

.field private mFooterDiffTotal:I

.field private final mHeader:Landroid/view/View;

.field private mHeaderDiffTotal:I

.field private final mIsSnappable:Z

.field private final mMinFooterTranslation:I

.field private final mMinHeaderTranslation:I

.field private mPrevScrollY:I

.field private final mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;


# direct methods
.method private constructor <init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 28
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 29
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    .line 35
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$000(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    .line 36
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$100(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    .line 37
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$200(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)I

    move-result v0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    .line 38
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$300(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    .line 39
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$400(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)I

    move-result v0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    .line 40
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->access$500(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsSnappable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;-><init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)V

    return-void
.end method

.method private doAnimation(Landroid/view/View;Ljava/lang/String;FF)V
    .locals 2

    const/4 v0, 0x2

    .line 116
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    .line 117
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getTransY(Landroid/view/View;)F
    .locals 0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1
.end method

.method private setTransY(Landroid/view/View;F)V
    .locals 0

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 146
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->getScrollY(Landroid/widget/AbsListView;)I

    move-result p1

    .line 149
    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    sub-int/2addr p2, p1

    if-eqz p2, :cond_b

    .line 157
    sget-object p3, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnViewType:[I

    iget-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p3, p4, :cond_9

    const/4 p4, 0x2

    if-eq p3, p4, :cond_7

    const/4 p4, 0x3

    if-eq p3, p4, :cond_5

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    goto/16 :goto_5

    :cond_1
    if-gez p2, :cond_3

    .line 190
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int p4, p3

    if-le p1, p4, :cond_2

    .line 191
    iget p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p4, p2

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 193
    :cond_2
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-le p1, p3, :cond_4

    .line 194
    iget p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p4, p2

    neg-int p2, p3

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_1

    .line 196
    :cond_3
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p3, p2

    iget p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 197
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 200
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    .line 201
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    goto/16 :goto_5

    :cond_5
    if-gez p2, :cond_6

    .line 178
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p3, p2

    iget p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 179
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_2

    .line 181
    :cond_6
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p3, p2

    iget p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 182
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 185
    :goto_2
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    .line 186
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    goto :goto_5

    :cond_7
    if-gez p2, :cond_8

    .line 169
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_3

    .line 171
    :cond_8
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 174
    :goto_3
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    goto :goto_5

    :cond_9
    if-gez p2, :cond_a

    .line 160
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_4

    .line 162
    :cond_a
    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 165
    :goto_4
    iget-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->setTransY(Landroid/view/View;F)V

    .line 207
    :cond_b
    :goto_5
    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 49
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_d

    .line 51
    iget-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsSnappable:Z

    if-eqz p1, :cond_d

    .line 53
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int p1, p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    .line 54
    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    div-int/2addr v0, p2

    .line 56
    sget-object v1, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnViewType:[I

    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "translationY"

    if-eq v1, v2, :cond_b

    if-eq v1, p2, :cond_9

    const/4 p2, 0x3

    if-eq v1, p2, :cond_5

    const/4 p2, 0x4

    if-eq v1, p2, :cond_1

    goto/16 :goto_3

    .line 93
    :cond_1
    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v1, p2

    if-lez v1, :cond_2

    neg-int v1, p2

    if-ge v1, p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 95
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_1

    :cond_2
    neg-int v1, p2

    .line 96
    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v2, v2

    if-ge v1, v2, :cond_3

    neg-int p2, p2

    if-lt p2, p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v5, p2, v1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 98
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 101
    :cond_3
    :goto_1
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p2, p1

    if-lez p2, :cond_4

    neg-int p2, p1

    if-ge p2, v0, :cond_4

    .line 102
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 103
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    :cond_4
    neg-int p2, p1

    .line 104
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge p2, v1, :cond_d

    neg-int p1, p1

    if-lt p1, v0, :cond_d

    .line 105
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v5, p2, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 106
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    .line 76
    :cond_5
    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v1, p2

    if-lez v1, :cond_6

    neg-int v1, p2

    if-ge v1, p1, :cond_6

    .line 77
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 78
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_2

    :cond_6
    neg-int v1, p2

    .line 79
    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v2, v2

    if-ge v1, v2, :cond_7

    neg-int p2, p2

    if-lt p2, p1, :cond_7

    .line 80
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v5, p2, v1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 81
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 84
    :cond_7
    :goto_2
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p2, p1

    if-lez p2, :cond_8

    neg-int p2, p1

    if-ge p2, v0, :cond_8

    .line 85
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 86
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    :cond_8
    neg-int p2, p1

    .line 87
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge p2, v1, :cond_d

    neg-int p1, p1

    if-lt p1, v0, :cond_d

    .line 88
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v5, p2, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 89
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    .line 67
    :cond_9
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int p2, p1

    if-lez p2, :cond_a

    neg-int p2, p1

    if-ge p2, v0, :cond_a

    .line 68
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 69
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    :cond_a
    neg-int p2, p1

    .line 70
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge p2, v1, :cond_d

    neg-int p1, p1

    if-lt p1, v0, :cond_d

    .line 71
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v5, p2, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 72
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return-void

    .line 58
    :cond_b
    iget p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v0, p2

    if-lez v0, :cond_c

    neg-int v0, p2

    if-ge v0, p1, :cond_c

    .line 59
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 60
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    return-void

    :cond_c
    neg-int v0, p2

    .line 61
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v1, v1

    if-ge v0, v1, :cond_d

    neg-int p2, p2

    if-lt p2, p1, :cond_d

    .line 62
    iget-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->getTransY(Landroid/view/View;)F

    move-result p2

    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v5, p2, v0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->doAnimation(Landroid/view/View;Ljava/lang/String;FF)V

    .line 63
    iget p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    :cond_d
    :goto_3
    return-void
.end method
