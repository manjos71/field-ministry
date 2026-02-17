.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$sComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->val$sComment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->val$sComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 796
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 797
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
