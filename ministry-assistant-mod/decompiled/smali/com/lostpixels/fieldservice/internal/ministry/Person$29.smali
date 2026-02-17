.class Lcom/lostpixels/fieldservice/internal/ministry/Person$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->addMagazine(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$date:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/util/Date;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 1241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1242
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 1243
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7e2

    const/4 v4, 0x2

    if-lt v2, v3, :cond_0

    .line 1244
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1245
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 1246
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 1247
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    .line 1248
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->-$$Nest$mremoveOldMagazines(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method
