.class Lcom/lostpixels/fieldservice/internal/ministry/Person$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$38;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
