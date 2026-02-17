.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistoryComparator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;)I
    .locals 0

    .line 166
    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 162
    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryComparator;->compare(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;)I

    move-result p1

    return p1
.end method
