.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameCompare"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 1625
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1625
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1627
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
