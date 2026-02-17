.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TerritoryListArrayAdapter"
.end annotation


# instance fields
.field df:Ljava/text/DateFormat;

.field private final mContext:Landroid/content/Context;

.field private final miLayout:I

.field private final textColor:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    .line 1053
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 1048
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->textColor:I

    const/4 p1, 0x3

    .line 1050
    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->df:Ljava/text/DateFormat;

    .line 1054
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->mContext:Landroid/content/Context;

    .line 1055
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->miLayout:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1064
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;-><init>()V

    .line 1065
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 1066
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->miLayout:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09055f

    .line 1068
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    const v0, 0x7f09023f

    .line 1069
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->header:Landroid/widget/TextView;

    const v0, 0x7f0901a3

    .line 1070
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->date:Landroid/widget/TextView;

    .line 1072
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 1077
    :goto_0
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->header:Landroid/widget/TextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    .line 1079
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1090
    :cond_1
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1082
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 1084
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1086
    :cond_4
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    :goto_2
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    :goto_3
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;->date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;->df:Ljava/text/DateFormat;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
