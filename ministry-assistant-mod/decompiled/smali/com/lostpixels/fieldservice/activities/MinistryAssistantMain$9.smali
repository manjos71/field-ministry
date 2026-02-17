.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testInvalidPersonIds()V
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

    .line 823
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 826
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$900(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "houseHolder"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 828
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1100(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$9;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1000(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 829
    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
