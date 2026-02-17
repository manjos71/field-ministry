.class Lcom/lostpixels/fieldservice/internal/ministry/Person$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCellPhone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$sPhone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/lang/String;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->val$sPhone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 1340
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->val$sPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    .line 1345
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$32;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
