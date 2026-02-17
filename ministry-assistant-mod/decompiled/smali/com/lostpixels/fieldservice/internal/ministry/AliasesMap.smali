.class public Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_AliasesMapRealmProxyInterface;


# instance fields
.field public alias:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 20
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmSet$alias(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmSet$id(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmSet$alias(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmSet$id(I)V

    return-void
.end method


# virtual methods
.method public realmGet$alias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->id:I

    return v0
.end method

.method public realmSet$alias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->alias:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->id:I

    return-void
.end method
