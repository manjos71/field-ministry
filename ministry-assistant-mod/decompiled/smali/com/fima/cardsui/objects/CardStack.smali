.class public Lcom/fima/cardsui/objects/CardStack;
.super Lcom/fima/cardsui/objects/AbstractCard;
.source "SourceFile"


# instance fields
.field private cardBackgroundId:I

.field private final cards:Ljava/util/ArrayList;

.field private mAdapter:Lcom/fima/cardsui/StackAdapter;

.field private mContext:Landroid/content/Context;

.field private mPosition:I

.field private final mStack:Lcom/fima/cardsui/objects/CardStack;

.field private stackTitleColor:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/fima/cardsui/objects/AbstractCard;-><init>()V

    .line 35
    sget v0, Lcom/fima/cardsui/R$drawable;->card_background:I

    iput v0, p0, Lcom/fima/cardsui/objects/CardStack;->cardBackgroundId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    .line 39
    iput-object p0, p0, Lcom/fima/cardsui/objects/CardStack;->mStack:Lcom/fima/cardsui/objects/CardStack;

    return-void
.end method

.method static synthetic access$000(Lcom/fima/cardsui/objects/CardStack;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/objects/CardStack;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/fima/cardsui/objects/CardStack;->mStack:Lcom/fima/cardsui/objects/CardStack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/fima/cardsui/objects/CardStack;)Lcom/fima/cardsui/StackAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/fima/cardsui/objects/CardStack;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/fima/cardsui/objects/CardStack;Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fima/cardsui/objects/CardStack;->getAnimationListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/fima/cardsui/objects/CardStack;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/fima/cardsui/objects/CardStack;->cardBackgroundId:I

    return p0
.end method

.method static synthetic access$500(Lcom/fima/cardsui/objects/CardStack;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/fima/cardsui/objects/CardStack;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private convert(Landroid/view/View;)Z
    .locals 6

    .line 182
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "CardStack"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert view: num cards is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 187
    :cond_0
    sget v0, Lcom/fima/cardsui/R$id;->stackContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    .line 189
    const-string p1, "Can\'t convert view: can\'t find stackContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert view: child count is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fima/cardsui/objects/Card;

    .line 200
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/fima/cardsui/objects/Card;->getId()I

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v0, p1}, Lcom/fima/cardsui/objects/Card;->convert(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/fima/cardsui/objects/Card;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v0, v4, v3

    const-string p1, "Can\'t convert view: child Id is 0x%x, card Id is 0x%x"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getAnimationListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 6

    .line 344
    new-instance v0, Lcom/fima/cardsui/objects/CardStack$3;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fima/cardsui/objects/CardStack$3;-><init>(Lcom/fima/cardsui/objects/CardStack;ILandroid/widget/RelativeLayout;Landroid/view/View;Lcom/fima/cardsui/objects/CardStack;)V

    return-object v0
.end method

.method private getClickListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 235
    new-instance v0, Lcom/fima/cardsui/objects/CardStack$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/fima/cardsui/objects/CardStack$2;-><init>(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILcom/fima/cardsui/objects/CardStack;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/fima/cardsui/objects/Card;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected convertDpToPixel(F)F
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/fima/cardsui/Utils;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p1

    return p1
.end method

.method public getCards()Ljava/util/ArrayList;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/fima/cardsui/objects/CardStack;->mPosition:I

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;Z)Landroid/view/View;
    .locals 10

    .line 76
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 79
    const-string v0, "null"

    goto :goto_0

    :cond_0
    const-string v0, "not null"

    :goto_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Checking to recycle view. convertView is %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardStack"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v4, Lcom/fima/cardsui/R$id;->stackRoot:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v5, v6, v1

    const-string v0, "Checking types.  convertView is %d, need %d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 84
    invoke-direct {p0, p2}, Lcom/fima/cardsui/objects/CardStack;->convert(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 88
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/fima/cardsui/R$layout;->item_stack:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    sget v0, Lcom/fima/cardsui/R$id;->stackContainer:I

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 94
    sget v1, Lcom/fima/cardsui/R$id;->stackTitle:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack;->stackTitleColor:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/fima/cardsui/R$color;->card_title_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fima/cardsui/objects/CardStack;->stackTitleColor:Ljava/lang/String;

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack;->stackTitleColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_3
    sget v1, Lcom/fima/cardsui/R$id;->card_separator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v1, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_9

    .line 113
    iget-object v5, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fima/cardsui/objects/Card;

    .line 114
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez v4, :cond_4

    .line 122
    invoke-virtual {v5, p1}, Lcom/fima/cardsui/objects/Card;->getViewFirst(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_4
    if-ne v4, v2, :cond_5

    .line 125
    invoke-virtual {v5, p1}, Lcom/fima/cardsui/objects/Card;->getViewLast(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {v5, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    :goto_3
    if-ne v4, v2, :cond_6

    .line 133
    invoke-virtual {v5}, Lcom/fima/cardsui/objects/Card;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 136
    :cond_6
    invoke-direct {p0, p0, v0, v4}, Lcom/fima/cardsui/objects/CardStack;->getClickListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    if-lez v4, :cond_7

    const/high16 v8, 0x42340000    # 45.0f

    int-to-float v9, v4

    mul-float v9, v9, v8

    const/high16 v8, 0x41400000    # 12.0f

    sub-float/2addr v9, v8

    .line 141
    invoke-static {p1, v9}, Lcom/fima/cardsui/Utils;->convertDpToPixelInt(Landroid/content/Context;F)I

    move-result v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .line 144
    :goto_5
    invoke-virtual {v6, v3, v8, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_8

    .line 149
    new-instance v6, Lcom/fima/cardsui/SwipeDismissTouchListener;

    new-instance v8, Lcom/fima/cardsui/objects/CardStack$1;

    invoke-direct {v8, p0}, Lcom/fima/cardsui/objects/CardStack$1;-><init>(Lcom/fima/cardsui/objects/CardStack;)V

    invoke-direct {v6, v7, v5, v8}, Lcom/fima/cardsui/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/fima/cardsui/SwipeDismissTouchListener$OnDismissCallback;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    :cond_8
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-object p2
.end method

.method public remove(I)Lcom/fima/cardsui/objects/Card;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fima/cardsui/objects/Card;

    return-object p1
.end method

.method public setAdapter(Lcom/fima/cardsui/StackAdapter;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack;->mAdapter:Lcom/fima/cardsui/StackAdapter;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/fima/cardsui/objects/CardStack;->mPosition:I

    return-void
.end method

.method public setTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    sget p1, Lcom/fima/cardsui/R$drawable;->card_background:I

    iput p1, p0, Lcom/fima/cardsui/objects/CardStack;->cardBackgroundId:I

    return-void

    .line 61
    :cond_0
    sget p1, Lcom/fima/cardsui/R$drawable;->card_background_dark:I

    iput p1, p0, Lcom/fima/cardsui/objects/CardStack;->cardBackgroundId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack;->title:Ljava/lang/String;

    return-void
.end method
