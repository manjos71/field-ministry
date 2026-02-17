.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;
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

    .line 2184
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->-$$Nest$mcompareSorting(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2184
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;->compare(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;)I

    move-result p1

    return p1
.end method
