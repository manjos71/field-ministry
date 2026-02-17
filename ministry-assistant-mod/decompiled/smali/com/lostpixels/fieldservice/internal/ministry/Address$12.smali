.class Lcom/lostpixels/fieldservice/internal/ministry/Address$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->sort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Address$VisitComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address$VisitComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
