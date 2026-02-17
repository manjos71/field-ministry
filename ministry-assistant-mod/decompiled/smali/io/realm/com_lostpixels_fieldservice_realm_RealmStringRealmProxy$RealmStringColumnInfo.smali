.class final Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmStringColumnInfo"
.end annotation


# instance fields
.field stringColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 50
    const-string v0, "RealmString"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 51
    const-string v0, "string"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;->stringColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 66
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;

    .line 67
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;

    .line 68
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;->stringColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_realm_RealmStringRealmProxy$RealmStringColumnInfo;->stringColKey:J

    return-void
.end method
