.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->sortBookmarkList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 3

    .line 318
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 321
    :goto_0
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v1

    :cond_1
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 334
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 313
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$4;->compare(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p1

    return p1
.end method
