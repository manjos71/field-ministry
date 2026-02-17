.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->set(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 242
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$11;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastGoalModified(Ljava/util/Date;)V

    return-void
.end method
