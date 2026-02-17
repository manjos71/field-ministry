.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuburbArrayAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final miLayout:I

.field private textColor:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    .line 1107
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 1104
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->textColor:I

    .line 1108
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->mContext:Landroid/content/Context;

    .line 1109
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->miLayout:I

    .line 1110
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 1111
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x7f040014

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p1, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1112
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_0

    const/16 p3, 0x1f

    if-gt p2, p3, :cond_0

    .line 1113
    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->textColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1122
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;-><init>()V

    .line 1123
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 1124
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->miLayout:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090560

    .line 1126
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->text:Landroid/widget/TextView;

    .line 1127
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090278

    .line 1128
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->imgDelete:Landroid/widget/ImageView;

    .line 1130
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_0
    if-nez p1, :cond_1

    .line 1150
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->imgDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const v3, 0x7f120136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1153
    :cond_1
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->imgDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1154
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :goto_1
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;->imgDelete:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method
