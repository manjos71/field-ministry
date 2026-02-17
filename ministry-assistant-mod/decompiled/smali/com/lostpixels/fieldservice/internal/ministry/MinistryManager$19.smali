.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 1097
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
