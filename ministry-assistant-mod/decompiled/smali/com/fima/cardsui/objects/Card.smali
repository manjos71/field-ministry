.class public abstract Lcom/fima/cardsui/objects/Card;
.super Lcom/fima/cardsui/objects/AbstractCard;
.source "SourceFile"


# instance fields
.field protected mCardLayout:Landroid/view/View;

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/fima/cardsui/objects/AbstractCard;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/fima/cardsui/objects/AbstractCard;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/fima/cardsui/objects/AbstractCard;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/fima/cardsui/objects/AbstractCard;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/fima/cardsui/objects/AbstractCard;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/fima/cardsui/objects/AbstractCard;->desc:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/fima/cardsui/objects/AbstractCard;->image:I

    return-void
.end method


# virtual methods
.method public OnSwipeCard()V
    .locals 0

    return-void
.end method

.method public abstract convert(Landroid/view/View;)Z
.end method

.method public abstract getCardContent(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected getCardLayout()I
    .locals 1

    .line 177
    sget v0, Lcom/fima/cardsui/R$layout;->item_card:I

    return v0
.end method

.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/fima/cardsui/objects/Card;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getFirstCardLayout()I
    .locals 1

    .line 189
    sget v0, Lcom/fima/cardsui/R$layout;->item_play_card_empty_first:I

    return v0
.end method

.method protected getId()I
    .locals 1

    .line 181
    sget v0, Lcom/fima/cardsui/R$id;->cardContent:I

    return v0
.end method

.method protected getLastCardLayout()I
    .locals 1

    .line 185
    sget v0, Lcom/fima/cardsui/R$layout;->item_card_empty_last:I

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fima/cardsui/objects/Card;->getCardLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/fima/cardsui/objects/Card;->mCardLayout:Landroid/view/View;

    .line 78
    :try_start_0
    sget v1, Lcom/fima/cardsui/R$id;->cardContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 79
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/Card;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 89
    invoke-static {p1, v2}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result p1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getViewFirst(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fima/cardsui/objects/Card;->getFirstCardLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/fima/cardsui/objects/Card;->mCardLayout:Landroid/view/View;

    .line 132
    :try_start_0
    sget v1, Lcom/fima/cardsui/R$id;->cardContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 133
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/Card;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 143
    invoke-static {p1, v2}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result p1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getViewLast(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fima/cardsui/objects/Card;->getLastCardLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/fima/cardsui/objects/Card;->mCardLayout:Landroid/view/View;

    .line 105
    :try_start_0
    sget v1, Lcom/fima/cardsui/R$id;->cardContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 106
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/Card;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 116
    invoke-static {p1, v2}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result p1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/fima/cardsui/objects/Card;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
