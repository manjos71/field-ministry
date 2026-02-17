.class Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setVisitDate(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

.field final synthetic val$visitDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/util/Date;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;->val$visitDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$8;->val$visitDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$visitDate(Ljava/util/Date;)V

    return-void
.end method
