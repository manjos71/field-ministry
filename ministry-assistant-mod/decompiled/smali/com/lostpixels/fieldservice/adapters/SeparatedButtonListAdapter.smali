.class public Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;
.super Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;
    }
.end annotation


# instance fields
.field private mListner:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;)Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->mListner:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    .line 33
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-nez v2, :cond_1

    .line 37
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    const-string p3, "Header"

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    const p3, 0x7f090241

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 42
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;-><init>(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2

    :cond_1
    if-ge v2, v5, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 53
    invoke-interface {v4, v2, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnButtonTapListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->mListner:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;

    return-void
.end method
