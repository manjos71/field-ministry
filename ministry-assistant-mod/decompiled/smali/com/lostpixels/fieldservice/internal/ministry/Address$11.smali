.class Lcom/lostpixels/fieldservice/internal/ministry/Address$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->updateIsBuilding()V
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

    .line 318
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    .line 322
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$addressType(I)V

    return-void
.end method
