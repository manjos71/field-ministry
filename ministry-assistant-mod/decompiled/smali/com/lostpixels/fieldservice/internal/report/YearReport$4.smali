.class Lcom/lostpixels/fieldservice/internal/report/YearReport$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPublisher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/YearReport;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mePioneer(I)V

    .line 148
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/YearReport$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/YearReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmSet$mLastModified(Ljava/util/Date;)V

    return-void
.end method
