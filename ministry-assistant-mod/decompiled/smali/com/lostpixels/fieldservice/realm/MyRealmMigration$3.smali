.class Lcom/lostpixels/fieldservice/realm/MyRealmMigration$3;
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

    .line 112
    iput-object p1, p0, Lcom/lostpixels/fieldservice/realm/MyRealmMigration$3;->this$0:Lcom/lostpixels/fieldservice/realm/MyRealmMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/realm/DynamicRealmObject;)V
    .locals 8

    .line 115
    const-string v0, "marrBooks"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 116
    const-string v1, "marrBooks_temp"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 118
    :goto_0
    const-string v6, "string"

    if-ge v5, v3, :cond_0

    .line 119
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-virtual {v1, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "marrVideos"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 124
    const-string v1, "marrVideos_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 127
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v1, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 131
    :cond_1
    const-string v0, "marrBroschures"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 132
    const-string v1, "marrBroschures_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 135
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {v1, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 139
    :cond_2
    const-string v0, "marrTracts"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 140
    const-string v1, "marrTracts_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    .line 143
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v1, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    :cond_3
    const-string v0, "marrOther"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 148
    const-string v1, "marrOther_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_4

    .line 151
    invoke-virtual {v0, v5}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v1, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 155
    :cond_4
    const-string v0, "marrMovies"

    invoke-virtual {p1, v0}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object v0

    .line 156
    const-string v1, "marrMovies_temp"

    invoke-virtual {p1, v1, v2}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;

    move-result-object p1

    .line 157
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v1

    :goto_5
    if-ge v4, v1, :cond_5

    .line 159
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/DynamicRealmObject;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
