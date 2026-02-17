.class Lcom/lostpixels/fieldservice/internal/ministry/Address$VisitComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VisitComparator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 0

    .line 546
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 544
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address$VisitComparator;->compare(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result p1

    return p1
.end method
