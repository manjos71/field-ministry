.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

.field final synthetic val$aWeekAgo:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;Ljava/util/Date;)V
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I
    .locals 3

    .line 2265
    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object p1

    .line 2266
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2270
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {v2, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2271
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    .line 2272
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 2274
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 2277
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 2279
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->val$aWeekAgo:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2262
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;->compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I

    move-result p1

    return p1
.end method
