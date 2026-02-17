.class Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->setMagazineAlias(ZZLjava/util/Date;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

.field final synthetic val$bAwake:Z

.field final synthetic val$bWatchTower:Z

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$sAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/Date;ZZLjava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$date:Ljava/util/Date;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bWatchTower:Z

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bAwake:Z

    iput-object p5, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$sAlias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 183
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bWatchTower:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bAwake:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x7e2

    const/4 v5, 0x2

    if-lt v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 186
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x7e6

    if-lt v0, v2, :cond_2

    if-eqz v1, :cond_2

    mul-int/lit8 v3, v3, 0x64

    .line 190
    :cond_2
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bWatchTower:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bAwake:Z

    if-eqz v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mremoveOld(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;I)V

    .line 193
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$sAlias:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mremoveOld(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;I)V

    .line 196
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$sAlias:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_4
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$bAwake:Z

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mremoveOld(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;I)V

    .line 199
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->val$sAlias:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
