.class Lcom/lostpixels/fieldservice/internal/report/YearReport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

.field final synthetic val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 115
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$2;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    return-void
.end method
