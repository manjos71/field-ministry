.class Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final mFloatingActionButton:Lcom/lostpixels/fieldservice/ui/Fab;

.field private mPrevPosition:I

.field private mPrevTop:I

.field private mUpdated:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/Fab;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mFloatingActionButton:Lcom/lostpixels/fieldservice/ui/Fab;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 p3, 0x0

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iget p4, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mPrevPosition:I

    const/4 v0, 0x1

    if-ne p4, p2, :cond_2

    .line 49
    iget p4, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mPrevTop:I

    sub-int v1, p4, p1

    if-ge p1, p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 51
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_4

    goto :goto_2

    :cond_2
    if-le p2, p4, :cond_3

    const/4 p3, 0x1

    :cond_3
    move p4, p3

    :goto_2
    const/4 p3, 0x1

    :cond_4
    if-eqz p3, :cond_5

    .line 55
    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mUpdated:Z

    if-eqz p3, :cond_5

    .line 56
    iget-object p3, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mFloatingActionButton:Lcom/lostpixels/fieldservice/ui/Fab;

    invoke-virtual {p3, p4}, Lcom/lostpixels/fieldservice/ui/Fab;->hide(Z)V

    .line 58
    :cond_5
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mPrevPosition:I

    .line 59
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mPrevTop:I

    .line 60
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/DirectionScrollListener;->mUpdated:Z

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
