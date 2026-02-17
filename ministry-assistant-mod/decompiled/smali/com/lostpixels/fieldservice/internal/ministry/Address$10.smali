.class Lcom/lostpixels/fieldservice/internal/ministry/Address$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->setName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$name(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
