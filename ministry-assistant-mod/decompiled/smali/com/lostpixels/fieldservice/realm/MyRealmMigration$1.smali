.class Lcom/lostpixels/fieldservice/realm/MyRealmMigration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmObjectSchema$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/realm/MyRealmMigration;->migrate(Lio/realm/DynamicRealm;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/realm/MyRealmMigration;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/realm/MyRealmMigration;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$1;->this$0:Lcom/lostpixels/fieldservice/realm/MyRealmMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/realm/DynamicRealmObject;)V
    .locals 8

    .line 54
    const-string v0, "suburbs"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 55
    const-string v1, "suburbs_temp"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 57
    :goto_0
    const-string v6, "string"

    if-ge v5, v3, :cond_0

    .line 58
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {v1, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 63
    const-string v1, "cities_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object p1

    .line 64
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_1

    .line 66
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/DynamicRealmObject;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
