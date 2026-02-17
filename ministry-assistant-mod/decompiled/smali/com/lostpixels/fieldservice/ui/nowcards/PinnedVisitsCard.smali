.class public Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field context:Landroid/content/Context;

.field final personID:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 33
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;)V

    .line 34
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->personID:J

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 7

    .line 54
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->personID:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    :cond_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const v3, 0x7f0905a0

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0901b3

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 64
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object v2

    :goto_1
    const v3, 0x7f0900a0

    .line 78
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getDateDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    const v3, 0x7f090598

    .line 81
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    const v6, 0x7f120558

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09026e

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v3

    if-nez v3, :cond_5

    const v1, 0x7f080100

    .line 86
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    const v1, 0x7f0800fb

    .line 88
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    const v1, 0x7f080117

    .line 90
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    const v1, 0x7f08010a

    .line 92
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v1, 0x7f0902a1

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    .line 107
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c004e

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    .line 113
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 39
    iget-object p1, p0, Lcom/fima/cardsui/objects/AbstractCard;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 41
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    const-class v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v2, "PersonID"

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->personID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string v2, "CreatedFromTerritory"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v2, "CreateNew"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/PinnedVisitsCard;->context:Landroid/content/Context;

    const v1, 0x7f120515

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
