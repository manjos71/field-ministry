.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TerritoryArrayAdapter"
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final items:Ljava/util/ArrayList;

.field final mlayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    .line 950
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 951
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->items:Ljava/util/ArrayList;

    .line 952
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->mlayoutID:I

    .line 954
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected getStreets(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;
    .locals 3

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1025
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1030
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 961
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 962
    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;

    invoke-direct {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;-><init>()V

    .line 963
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->mlayoutID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09034d

    .line 964
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblName:Landroid/widget/TextView;

    const v0, 0x7f09034c

    .line 965
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblDate:Landroid/widget/TextView;

    const v0, 0x7f09034e

    .line 966
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblStreets:Landroid/widget/TextView;

    const v0, 0x7f09061f

    .line 967
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblNumAddresses:Landroid/widget/TextView;

    const v0, 0x7f0905e1

    .line 968
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblAddressesLeft:Landroid/widget/TextView;

    const v0, 0x7f090620

    .line 969
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblNumInterested:Landroid/widget/TextView;

    const v0, 0x7f090624

    .line 970
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblPercentDone:Landroid/widget/TextView;

    const v0, 0x7f090285

    .line 971
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgMoreImage:Landroid/widget/ImageView;

    const v0, 0x7f090291

    .line 972
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    const v0, 0x7f090295

    .line 973
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryReturned:Landroid/widget/ImageView;

    .line 975
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgMoreImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ec

    .line 983
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 984
    iget-object v1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgMoreImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v5, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 987
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 989
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;

    .line 992
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v0, :cond_b

    .line 994
    iget-object v1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblStreets:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->getStreets(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->getTerritoryStatistics(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    move-result-object v1

    .line 998
    iget-object v2, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblNumAddresses:Landroid/widget/TextView;

    iget v3, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numAddresses:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v2, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblAddressesLeft:Landroid/widget/TextView;

    iget v3, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numAddressesLeft:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iget-object v2, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblNumInterested:Landroid/widget/TextView;

    iget v3, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->numInterested:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v2, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->lblPercentDone:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->percentDone:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v2, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgMoreImage:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1003
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryReturned:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    iget-boolean p1, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsPhone:Z

    if-eqz p1, :cond_3

    .line 1006
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z

    move-result p3

    if-eqz p3, :cond_2

    const p3, 0x7f080357

    goto :goto_2

    :cond_2
    const p3, 0x7f080358

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1007
    :cond_3
    iget-boolean p1, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsRural:Z

    if-eqz p1, :cond_5

    .line 1008
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f080359

    goto :goto_3

    :cond_4
    const p3, 0x7f08035a

    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1009
    :cond_5
    iget-boolean p1, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsBuilding:Z

    if-eqz p1, :cond_7

    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsStreet:Z

    if-eqz v0, :cond_7

    .line 1010
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x7f08035c

    goto :goto_4

    :cond_6
    const p3, 0x7f08035d

    :goto_4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_7
    if-eqz p1, :cond_9

    .line 1012
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z

    move-result p3

    if-eqz p3, :cond_8

    const p3, 0x7f080354

    goto :goto_5

    :cond_8
    const p3, 0x7f080355

    :goto_5
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1014
    :cond_9
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryViewHolder;->imgTerritoryType:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmbIsLightTheme(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Z

    move-result p3

    if-eqz p3, :cond_a

    const p3, 0x7f08035b

    goto :goto_6

    :cond_a
    const p3, 0x7f08035e

    :goto_6
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-object p2
.end method
