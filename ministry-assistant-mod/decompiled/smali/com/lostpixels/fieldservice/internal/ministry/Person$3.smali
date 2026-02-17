.class Lcom/lostpixels/fieldservice/internal/ministry/Person$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHidden(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$bHidden:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;->val$bHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;->val$bHidden:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    .line 499
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
