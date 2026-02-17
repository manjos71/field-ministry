.class public Lcom/fima/cardsui/StackAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStacks:Ljava/util/ArrayList;

.field private mSwipeable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fima/cardsui/StackAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/fima/cardsui/StackAdapter;->mStacks:Ljava/util/ArrayList;

    .line 23
    iput-boolean p3, p0, Lcom/fima/cardsui/StackAdapter;->mSwipeable:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/fima/cardsui/StackAdapter;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/fima/cardsui/objects/CardStack;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/fima/cardsui/StackAdapter;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fima/cardsui/objects/CardStack;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/StackAdapter;->getItem(I)Lcom/fima/cardsui/objects/CardStack;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/StackAdapter;->getItem(I)Lcom/fima/cardsui/objects/CardStack;

    move-result-object p3

    .line 45
    invoke-virtual {p3, p0}, Lcom/fima/cardsui/objects/CardStack;->setAdapter(Lcom/fima/cardsui/StackAdapter;)V

    .line 46
    invoke-virtual {p3, p1}, Lcom/fima/cardsui/objects/CardStack;->setPosition(I)V

    .line 49
    iget-object p1, p0, Lcom/fima/cardsui/StackAdapter;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/fima/cardsui/StackAdapter;->mSwipeable:Z

    invoke-virtual {p3, p1, p2, v0}, Lcom/fima/cardsui/objects/CardStack;->getView(Landroid/content/Context;Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setItems(Lcom/fima/cardsui/objects/CardStack;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/fima/cardsui/StackAdapter;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/fima/cardsui/StackAdapter;->mStacks:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/fima/cardsui/StackAdapter;->mSwipeable:Z

    return-void
.end method
