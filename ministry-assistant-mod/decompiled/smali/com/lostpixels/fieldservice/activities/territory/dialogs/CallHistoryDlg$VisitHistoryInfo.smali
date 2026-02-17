.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisitHistoryInfo"
.end annotation


# instance fields
.field final date:Ljava/util/Date;

.field final info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

.field final item:Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->item:Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 144
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 149
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->item:Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 150
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->getDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    return-void
.end method
