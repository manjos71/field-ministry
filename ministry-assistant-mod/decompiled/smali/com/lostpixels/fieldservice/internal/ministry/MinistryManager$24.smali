.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 1164
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1170
    throw v1
.end method
