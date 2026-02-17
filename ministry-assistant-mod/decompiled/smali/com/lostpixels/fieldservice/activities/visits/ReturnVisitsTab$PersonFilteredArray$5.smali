.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;
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


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V
    .locals 0

    .line 2059
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I
    .locals 2

    .line 2062
    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v0

    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-nez v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->-$$Nest$mcompareSorting(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2059
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;->compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I

    move-result p1

    return p1
.end method
