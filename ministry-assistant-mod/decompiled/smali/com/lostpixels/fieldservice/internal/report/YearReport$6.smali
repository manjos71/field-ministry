.class Lcom/lostpixels/fieldservice/internal/report/YearReport$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/YearReport;->setMissionay(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

.field final synthetic val$b120h:Z

.field final synthetic val$iFirstMonth:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;ZI)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->val$b120h:Z

    iput p3, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->val$iFirstMonth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->val$b120h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    .line 170
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->val$iFirstMonth:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$miFirstPioneerMonth(I)V

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$6;->val$iFirstMonth:I

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->-$$Nest$mcheckMonth(Lcom/lostpixels/fieldservice/internal/report/YearReport;I)V

    return-void
.end method
