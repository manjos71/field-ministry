.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreetAdapter"
.end annotation


# instance fields
.field final street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 2

    .line 208
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const v0, 0x7f0c0112

    .line 209
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 210
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 218
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0112

    .line 219
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 222
    :cond_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p3

    .line 223
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_3

    .line 225
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    const p1, 0x7f09055f

    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
