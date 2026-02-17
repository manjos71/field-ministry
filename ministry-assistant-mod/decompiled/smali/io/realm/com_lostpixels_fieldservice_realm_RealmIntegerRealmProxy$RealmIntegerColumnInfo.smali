.class final Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmIntegerColumnInfo"
.end annotation


# instance fields
.field valueColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 50
    const-string v0, "RealmInteger"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 51
    const-string v0, "value"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;->valueColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 66
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;

    .line 67
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;

    .line 68
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;->valueColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmIntegerRealmProxy$RealmIntegerColumnInfo;->valueColKey:J

    return-void
.end method
