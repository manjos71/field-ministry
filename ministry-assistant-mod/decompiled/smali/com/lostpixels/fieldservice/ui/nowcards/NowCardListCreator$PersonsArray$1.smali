.class Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;-><init>(Lio/realm/Realm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;Lio/realm/Realm;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->this$0:Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 1353
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p2

    .line 1354
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1349
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$PersonsArray$1;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
