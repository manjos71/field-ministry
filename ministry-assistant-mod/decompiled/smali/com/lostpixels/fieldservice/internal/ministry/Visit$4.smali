.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->updateLocationIdHash(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$street:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;->val$street:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$4;->val$street:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->-$$Nest$mcreateLocationIdHash(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$locationIdHash(J)V

    return-void
.end method
