.class public Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"


# instance fields
.field final ahead:Z

.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;->time:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;->ahead:Z

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0905a0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090598

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901b3

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fima/cardsui/objects/AbstractCard;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getCardLayoutId()I
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ReportGoalCard;->ahead:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0050

    return v0

    :cond_0
    const v0, 0x7f0c004f

    return v0
.end method
