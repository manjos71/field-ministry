.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateCompare"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;)I
    .locals 0

    .line 642
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 640
    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;->compare(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;)I

    move-result p1

    return p1
.end method
