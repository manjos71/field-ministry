.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testInvalidAddresses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 801
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$800(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$8;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$700(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 802
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 803
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 804
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    new-instance v4, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v4, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_0

    :cond_3
    return-void
.end method
