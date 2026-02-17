.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mbHasBeenSent(Z)V

    .line 319
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$13;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    return-void
.end method
