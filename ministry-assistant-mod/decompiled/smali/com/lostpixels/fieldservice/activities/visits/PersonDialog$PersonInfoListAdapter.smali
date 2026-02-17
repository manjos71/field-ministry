.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonInfoListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mInfo:Ljava/util/List;

.field mLayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/app/Activity;ILjava/util/List;)V
    .locals 0

    .line 1946
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    .line 1947
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1948
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mInfo:Ljava/util/List;

    .line 1949
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mLayoutID:I

    .line 1950
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method

.method private getHouseHolderImage(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f080384

    return p1

    :cond_0
    const p1, 0x7f08013c

    return p1

    :cond_1
    const p1, 0x7f0801e2

    return p1

    :cond_2
    const p1, 0x7f0801fd

    return p1

    :cond_3
    const p1, 0x7f080172

    return p1
.end method

.method private getVisitTypeImage(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f080182

    return p1

    :cond_0
    const p1, 0x7f0802ae

    return p1

    :cond_1
    const p1, 0x7f0800d1

    return p1

    :cond_2
    const p1, 0x7f0802dc

    return p1

    :cond_3
    const p1, 0x7f0801e8

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mInfo:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1964
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;
    .locals 1

    .line 1976
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mInfo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1937
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->getItem(I)Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1999
    :try_start_0
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;

    invoke-direct {p3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;-><init>()V

    .line 2000
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2001
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mLayoutID:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090625

    .line 2003
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strVisitInfo:Landroid/widget/TextView;

    const v0, 0x7f0905ea

    .line 2004
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strScriptures:Landroid/widget/TextView;

    const v0, 0x7f090629

    .line 2005
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strPublications:Landroid/widget/TextView;

    const v0, 0x7f090618

    .line 2006
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strMovies:Landroid/widget/TextView;

    const v0, 0x7f09061b

    .line 2007
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strNextTime:Landroid/widget/TextView;

    const v0, 0x7f09031a

    .line 2008
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strTitle:Landroid/widget/TextView;

    const v0, 0x7f090356

    .line 2009
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strYears:Landroid/widget/TextView;

    const v0, 0x7f09027e

    .line 2010
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    const v0, 0x7f09030d

    .line 2012
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewVisit:Landroid/view/View;

    const v0, 0x7f0902df

    .line 2013
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewScripture:Landroid/view/View;

    const v0, 0x7f090302

    .line 2014
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewPublication:Landroid/view/View;

    const v0, 0x7f0902fc

    .line 2015
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewMovies:Landroid/view/View;

    const v0, 0x7f0902fe

    .line 2016
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewNextTime:Landroid/view/View;

    .line 2017
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 2019
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;

    .line 2022
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mInfo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 2024
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strYears:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2026
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2027
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->getVisitTypeImage(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2028
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 2029
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strYears:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2030
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2031
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->getHouseHolderImage(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2032
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strYears:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getAge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2034
    :cond_2
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strYears:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2035
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->imgHouseHolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2038
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEEE"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .line 2040
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 2042
    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2043
    iget-object v3, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2046
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2047
    iget-object v3, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strVisitInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2048
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewVisit:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2049
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2050
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strVisitInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewVisit:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2053
    :cond_4
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewVisit:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2055
    :goto_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getScriptures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2056
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2057
    iget-object v3, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strScriptures:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2058
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewScripture:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2060
    :cond_5
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewScripture:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    :goto_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getPublications()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2063
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2064
    iget-object v3, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strPublications:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2065
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewPublication:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2067
    :cond_6
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewPublication:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    :goto_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getMovies()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2070
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2071
    iget-object v3, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strMovies:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2072
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewMovies:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2074
    :cond_7
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewMovies:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2076
    :goto_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getNextTime()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2077
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2078
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->strNextTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2079
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewNextTime:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 2081
    :cond_8
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;->viewNextTime:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 2083
    :goto_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getView"

    invoke-static {p3, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :goto_7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
