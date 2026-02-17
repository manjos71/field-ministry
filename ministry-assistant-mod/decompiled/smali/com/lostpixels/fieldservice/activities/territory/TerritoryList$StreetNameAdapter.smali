.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetNameAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreetNameAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 4241
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetNameAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    .line 4242
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4249
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x1020014

    .line 4250
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    .line 4251
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4252
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
