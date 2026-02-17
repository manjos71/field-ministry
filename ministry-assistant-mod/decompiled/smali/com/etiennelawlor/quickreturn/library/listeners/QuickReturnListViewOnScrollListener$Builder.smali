.class public Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFooter:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mIsSnappable:Z

.field private mMinFooterTranslation:I

.field private mMinHeaderTranslation:I

.field private final mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;


# direct methods
.method public constructor <init>(Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mHeader:Landroid/view/View;

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mMinHeaderTranslation:I

    .line 225
    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mFooter:Landroid/view/View;

    .line 226
    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mMinFooterTranslation:I

    .line 227
    iput-boolean v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mIsSnappable:Z

    .line 230
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    return-void
.end method

.method static synthetic access$000(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mQuickReturnViewType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnViewType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Landroid/view/View;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)I
    .locals 0

    .line 218
    iget p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mMinHeaderTranslation:I

    return p0
.end method

.method static synthetic access$300(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Landroid/view/View;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)I
    .locals 0

    .line 218
    iget p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mMinFooterTranslation:I

    return p0
.end method

.method static synthetic access$500(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;)Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mIsSnappable:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;
    .locals 2

    .line 259
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;-><init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;)V

    return-object v0
.end method

.method public header(Landroid/view/View;)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method public isSnappable(Z)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mIsSnappable:Z

    return-object p0
.end method

.method public minHeaderTranslation(I)Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;
    .locals 0

    .line 239
    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$Builder;->mMinHeaderTranslation:I

    return-object p0
.end method
