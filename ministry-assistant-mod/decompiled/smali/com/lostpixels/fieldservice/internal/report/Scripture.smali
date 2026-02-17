.class public Lcom/lostpixels/fieldservice/internal/report/Scripture;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxyInterface;


# instance fields
.field public content:Ljava/lang/String;

.field public verse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmSet$verse(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmSet$content(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/Scripture;->content:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$verse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/Scripture;->verse:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/Scripture;->content:Ljava/lang/String;

    return-void
.end method

.method public realmSet$verse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/Scripture;->verse:Ljava/lang/String;

    return-void
.end method
