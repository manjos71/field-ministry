.class Lcom/lostpixels/fieldservice/internal/ministry/Person$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->removeOldMagazines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$31;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 8

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 1271
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1273
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x7e2

    if-lt v2, v5, :cond_0

    .line 1274
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/2addr v6, v4

    sub-int/2addr v2, v6

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_3

    .line 1278
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-gt v7, v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt v7, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    .line 1281
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, -0x2

    .line 1279
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->add(II)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1284
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v3, v1

    .line 1287
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$31;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1288
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v3, :cond_4

    .line 1289
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1293
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    .line 1294
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$31;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-void
.end method
