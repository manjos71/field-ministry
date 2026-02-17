.class Lcom/lostpixels/fieldservice/realm/MyRealmMigration$2;
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

    .line 79
    iput-object p1, p0, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$2;->this$0:Lcom/lostpixels/fieldservice/realm/MyRealmMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/realm/DynamicRealmObject;)V
    .locals 7

    .line 82
    const-string v0, "magazineList"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 83
    const-string v1, "magazineList_temp"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 86
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/DynamicRealmObject;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 87
    invoke-virtual {v1, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "customTags"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 91
    const-string v1, "customTags_temp"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    .line 94
    invoke-virtual {v0, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/DynamicRealmObject;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "string"

    invoke-virtual {v2, v4}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
