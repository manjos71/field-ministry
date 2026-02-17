.class public abstract Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sListViewItemHeights:Ljava/util/Dictionary;

.field private static sRecyclerViewItemHeights:Ljava/util/Dictionary;

.field private static sTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sTypedValue:Landroid/util/TypedValue;

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sListViewItemHeights:Ljava/util/Dictionary;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sRecyclerViewItemHeights:Ljava/util/Dictionary;

    return-void
.end method

.method public static getScrollY(Landroid/widget/AbsListView;)I
    .locals 5

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    .line 73
    sget-object v4, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sListViewItemHeights:Ljava/util/Dictionary;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_3

    .line 88
    sget-object p0, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sListViewItemHeights:Ljava/util/Dictionary;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 89
    sget-object p0, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->sListViewItemHeights:Ljava/util/Dictionary;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v3, p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method
