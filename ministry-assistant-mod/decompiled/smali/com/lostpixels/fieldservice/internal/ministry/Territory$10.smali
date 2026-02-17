.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateStreetName(Lio/realm/Realm;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$iIndex:I

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$sNewName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;ILjava/lang/String;Lio/realm/Realm;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$iIndex:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$sNewName:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$iIndex:I

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 601
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$iIndex:I

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    .line 602
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$sNewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$10;->val$realm:Lio/realm/Realm;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-void
.end method
