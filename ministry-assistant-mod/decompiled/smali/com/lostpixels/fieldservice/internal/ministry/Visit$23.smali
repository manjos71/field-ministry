.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 1028
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$houseHolder()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 1035
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 1036
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$name(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 1038
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 1040
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    .line 1041
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 1042
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$syncDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    .line 1043
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v0

    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 1049
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitTypeList(Lio/realm/RealmList;)V

    .line 1051
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 1052
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;)V

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1056
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_2

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 1060
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$floorNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 1061
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$phoneNumber(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$cellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$cellNumber(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdFromTerritoryHelper()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdFromTerritoryHelper(J)V

    .line 1064
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$locationIdHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    :cond_5
    return-void
.end method
