.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TerritoryDateComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)I
    .locals 0

    .line 1036
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1034
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryDateComparator;->compare(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)I

    move-result p1

    return p1
.end method
