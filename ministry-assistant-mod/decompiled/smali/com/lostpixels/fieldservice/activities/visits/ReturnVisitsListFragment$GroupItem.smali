.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupItem"
.end annotation


# instance fields
.field public final items:Ljava/util/List;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->name:Ljava/lang/String;

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    return-void
.end method
