.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 77
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    const-string v1, "Street"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmAddress(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 86
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 87
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 93
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 94
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 96
    :cond_3
    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 97
    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmAddress(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmAddress(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    const-string v1, "Address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 106
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
