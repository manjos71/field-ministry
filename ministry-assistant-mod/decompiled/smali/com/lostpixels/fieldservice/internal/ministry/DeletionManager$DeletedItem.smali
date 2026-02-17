.class Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeletedItem"
.end annotation


# instance fields
.field eDeleteType:I

.field iID:J

.field lDate:J

.field sString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 591
    iput v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    return-void
.end method
