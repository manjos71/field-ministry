.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TerritoryArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

.field final items:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    const v0, 0x7f0c0123

    const/4 v1, 0x0

    .line 1209
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 1210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->context:Landroid/content/Context;

    .line 1211
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1217
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    const p2, 0x7f0c0123

    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1222
    new-instance p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;)V

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    const v0, 0x7f090291

    .line 1223
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 1224
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    const v0, 0x7f09034d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 1225
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    const v0, 0x7f09034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->streets:Landroid/widget/TextView;

    .line 1226
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    const v0, 0x7f09034c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 1227
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    .line 1233
    :goto_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->items:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1236
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 1237
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p3, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1239
    :cond_1
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p3, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1244
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1245
    const-string v2, ", "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :cond_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1249
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->streets:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p3, p3, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->calcStatsObject(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    move-result-object p1

    .line 1256
    iget-boolean p3, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsPhone:Z

    if-eqz p3, :cond_4

    .line 1257
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f080357

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1258
    :cond_4
    iget-boolean p3, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsRural:Z

    if-eqz p3, :cond_5

    .line 1259
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f080359

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1260
    :cond_5
    iget-boolean p3, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsBuilding:Z

    if-eqz p3, :cond_6

    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsStreet:Z

    if-eqz p1, :cond_6

    .line 1261
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f08035c

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_6
    if-eqz p3, :cond_7

    .line 1263
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f080354

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    .line 1265
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;->holder:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f08035b

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
