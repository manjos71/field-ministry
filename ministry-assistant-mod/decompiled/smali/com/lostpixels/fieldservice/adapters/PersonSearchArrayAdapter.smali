.class public Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final inflater:Landroid/view/LayoutInflater;

.field private final items:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    iput-object p2, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->items:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->getItem(I)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c010f

    invoke-virtual {p2, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;-><init>()V

    const v2, 0x7f09052f

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    const v2, 0x7f090441

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    const v2, 0x7f0902d9

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strDate:Landroid/widget/TextView;

    const v2, 0x7f09066c

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    const v2, 0x7f090273

    .line 68
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v2, 0x7f090283

    .line 69
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    const v2, 0x7f090275

    .line 70
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    const v2, 0x7f090621

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strNumVisits:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/16 v2, 0x8

    if-eqz p1, :cond_b

    .line 79
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strNumVisits:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v5, p3, v4

    const-string v5, "%d"

    invoke-static {v5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p3

    .line 87
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120367

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    iget-object v5, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 94
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 95
    iget-object v5, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v5, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 98
    :cond_5
    iget-object v5, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v3, :cond_6

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 101
    iget-object v3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 104
    :cond_6
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 107
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    .line 109
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 111
    :cond_8
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;->context:Landroid/content/Context;

    const v3, 0x7f120456

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 113
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 115
    :cond_9
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_5
    iget-object p3, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/UIHelpers;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 119
    iget-object p1, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    .line 121
    :cond_a
    iget-object p1, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    .line 123
    :cond_b
    iget-object p1, v1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method
