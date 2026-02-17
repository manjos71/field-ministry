.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeSchoolItem(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$iHours:I

.field final synthetic val$sName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;ILjava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->val$iHours:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->val$sName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 152
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v2

    iget v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->val$iHours:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->val$sName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstSchoolInfo()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v1}, Lio/realm/RealmObject;->deleteFromRealm()V

    .line 155
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mLastSchoolModified(Ljava/util/Date;)V

    :cond_1
    return-void
.end method
