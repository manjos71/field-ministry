.class public Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)I
    .locals 6

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 19
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, p1, :cond_0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    if-eq v3, p2, :cond_1

    sub-int/2addr p2, v3

    return p2

    :cond_1
    if-eq v5, v0, :cond_2

    sub-int/2addr v0, v5

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;->compare(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)I

    move-result p1

    return p1
.end method
