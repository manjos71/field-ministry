.class public abstract Lcom/fima/cardsui/objects/RecyclableCard;
.super Lcom/fima/cardsui/objects/Card;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/fima/cardsui/objects/Card;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/fima/cardsui/objects/Card;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/fima/cardsui/objects/Card;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/fima/cardsui/objects/Card;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected abstract applyTo(Landroid/view/View;)V
.end method

.method public convert(Landroid/view/View;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardLayoutId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->applyTo(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->applyTo(Landroid/view/View;)V

    return-object p1
.end method

.method protected abstract getCardLayoutId()I
.end method
