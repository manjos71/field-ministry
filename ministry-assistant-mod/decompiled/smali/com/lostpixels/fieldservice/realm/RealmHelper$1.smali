.class Lcom/lostpixels/fieldservice/realm/RealmHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/realm/RealmHelper;->clearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/lostpixels/fieldservice/realm/RealmHelper$1;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/lostpixels/fieldservice/realm/RealmHelper$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
