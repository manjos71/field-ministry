.class public Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"


# static fields
.field static miLastID:I = -0x1


# instance fields
.field context:Landroid/content/Context;

.field final goal:I

.field session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>()V

    .line 37
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->goal:I

    .line 38
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 13

    const v0, 0x7f090267

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090564

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 46
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->goal:I

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v3, 0x7f1203a5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 49
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v3, 0x7f1203a4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    const v6, 0x7f120320

    .line 50
    const-string v7, "%d %s"

    if-ne v1, v4, :cond_3

    .line 52
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 53
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f120382

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f12037f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_3
    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    .line 59
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 60
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f120386

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f120384

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_5
    const/4 v8, 0x4

    if-ne v1, v8, :cond_7

    .line 66
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 67
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f12043c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 69
    :cond_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f12043a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_2
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_7
    const/4 v8, 0x5

    if-ne v1, v8, :cond_9

    .line 73
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    if-le v1, v3, :cond_8

    .line 74
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f1204b9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f1204b6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_3
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_9
    const/4 v8, 0x6

    if-ne v1, v8, :cond_b

    .line 80
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    if-le v1, v3, :cond_a

    .line 81
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f1205f5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 83
    :cond_a
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f1205f4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_4
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_b
    const/4 v8, 0x7

    if-ne v1, v8, :cond_d

    .line 87
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const v1, 0x7f120418

    const-string v11, "%s %s"

    cmpl-double v12, v7, v9

    if-lez v12, :cond_c

    .line 88
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    aput-object v1, v4, v3

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 90
    :cond_c
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-static {v7, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    aput-object v1, v4, v3

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :goto_5
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    if-ne v1, v2, :cond_f

    .line 94
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v1

    if-le v1, v3, :cond_e

    .line 95
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f12031c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 97
    :cond_e
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    const v9, 0x7f12031b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v8, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_6
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_f
    :goto_7
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 102
    sget v1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_10

    const v1, 0x7f080365

    .line 103
    sput v1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    .line 104
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const p1, 0x7f08013a

    .line 127
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_1
    const p1, 0x7f080139

    .line 124
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_2
    const p1, 0x7f080138

    .line 121
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_3
    const p1, 0x7f080137

    .line 118
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_4
    const p1, 0x7f0802da

    .line 115
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_5
    const p1, 0x7f08011a

    .line 112
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    :pswitch_6
    const p1, 0x7f0802d9

    .line 109
    sput p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    goto :goto_8

    .line 106
    :pswitch_7
    sput v1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    .line 131
    :cond_10
    :goto_8
    sget p1, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->miLastID:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    .line 142
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c0046

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/CongratulationsCard;->context:Landroid/content/Context;

    .line 148
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
