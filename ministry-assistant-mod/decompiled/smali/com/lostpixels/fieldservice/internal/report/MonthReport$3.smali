.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->addSchoolItem(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$item:Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->val$item:Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstSchoolInfo(Lio/realm/RealmList;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->val$item:Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;-><init>(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    return-void
.end method
