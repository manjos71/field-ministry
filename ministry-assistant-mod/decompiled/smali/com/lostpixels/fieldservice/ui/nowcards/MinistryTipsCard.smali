.class public Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"


# instance fields
.field private final tips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p3}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;->tips:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0905a0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09059f

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryTipsCard;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901b3

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fima/cardsui/objects/AbstractCard;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c004b

    return v0
.end method
