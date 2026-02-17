.class Lcom/lostpixels/fieldservice/internal/ministry/Address$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->clearVisit()V
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

    .line 236
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->delete()V

    return-void
.end method
