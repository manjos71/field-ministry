.class public Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;

.field private final nBookmarked:I

.field private final nMagRoute:I

.field private final nRV:I

.field private final nStudies:I

.field private final nTotal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;)V

    .line 27
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nTotal:I

    .line 28
    iput p3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nRV:I

    .line 29
    iput p4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nStudies:I

    .line 30
    iput p5, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nMagRoute:I

    .line 31
    iput p6, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nBookmarked:I

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0905a0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090670

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->context:Landroid/content/Context;

    const v2, 0x7f120539

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09062c

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nRV:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090639

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nStudies:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090611

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nMagRoute:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905eb

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->nBookmarked:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->context:Landroid/content/Context;

    .line 121
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c004a

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MinistryStatisticsCard;->context:Landroid/content/Context;

    .line 127
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
