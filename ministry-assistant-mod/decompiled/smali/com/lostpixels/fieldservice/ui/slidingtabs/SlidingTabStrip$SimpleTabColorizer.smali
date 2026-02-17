.class Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method varargs setIndicatorColors([I)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    return-void
.end method
