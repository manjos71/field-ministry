.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$fgetunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$fputunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/List;)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$fgetunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
