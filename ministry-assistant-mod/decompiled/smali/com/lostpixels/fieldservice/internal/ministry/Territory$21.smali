.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    return-void
.end method
