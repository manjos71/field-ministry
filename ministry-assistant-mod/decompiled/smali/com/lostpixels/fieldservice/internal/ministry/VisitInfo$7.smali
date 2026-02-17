.class Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    return-void
.end method
