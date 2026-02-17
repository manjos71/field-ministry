.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$eProfile:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;->val$eProfile:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;->val$eProfile:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$meProfileMonth(I)V

    .line 88
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastMonthModified(Ljava/util/Date;)V

    return-void
.end method
