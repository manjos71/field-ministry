.class Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->convertHoursToMinutes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$update1:Z

.field final synthetic val$update2:Z

.field final synthetic val$update3:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;Lio/realm/Realm;ZZZ)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$realm:Lio/realm/Realm;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update1:Z

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update2:Z

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update3:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 266
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update1:Z

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom1(I)V

    .line 268
    :cond_1
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update2:Z

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom2(I)V

    .line 270
    :cond_2
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;->val$update3:Z

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom3(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
