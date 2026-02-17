.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->transferMinutes(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$reportQuarters:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;ZLjava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$reportQuarters:Z

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 256
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$reportQuarters:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getRemaindingMinutesFromQuarters(I)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$moMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 262
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 263
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 264
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    .line 265
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    const-string v5, ", "

    if-lt v4, v0, :cond_3

    .line 266
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->substract(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 267
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$comment:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$comment:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    if-lez v3, :cond_1

    .line 274
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    sub-int/2addr v0, v3

    .line 275
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->substract(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 277
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$comment:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->val$comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$12;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastReportModified(Ljava/util/Date;)V

    return-void
.end method
