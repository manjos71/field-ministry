.class Lcom/lostpixels/fieldservice/internal/report/YearReport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/YearReport;->setInfirmPioneer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

.field final synthetic val$infirmPioneer:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;Z)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;->val$infirmPioneer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;->val$infirmPioneer:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$infirmPioneer(Z)V

    .line 75
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    return-void
.end method
