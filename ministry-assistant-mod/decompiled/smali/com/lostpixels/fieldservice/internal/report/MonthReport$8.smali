.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeDailyItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$8;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    :cond_2
    return-void
.end method
