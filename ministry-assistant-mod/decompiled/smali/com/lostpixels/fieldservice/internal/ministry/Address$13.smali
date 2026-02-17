.class Lcom/lostpixels/fieldservice/internal/ministry/Address$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;Landroid/content/Context;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 500
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 501
    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 509
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 510
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->sort()V

    .line 516
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setName(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$addressType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setAddressType(I)V

    .line 519
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$13;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setDate(Ljava/util/Date;)V

    :cond_3
    return-void
.end method
