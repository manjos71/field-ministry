.class Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 904
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v2

    const/4 v3, 0x0

    .line 907
    :goto_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 908
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 916
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 919
    :goto_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 920
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v2

    const/4 v3, 0x0

    .line 922
    :goto_4
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 923
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 931
    :cond_4
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 934
    :goto_6
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 935
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v2

    const/4 v3, 0x0

    .line 937
    :goto_7
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 938
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    if-ne v4, v2, :cond_6

    .line 939
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 946
    :cond_7
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 950
    :cond_8
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 951
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 952
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 953
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 954
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 957
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 958
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 959
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 960
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 961
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 964
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 965
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 966
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 967
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 968
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 971
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 972
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 973
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 974
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 975
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 978
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 979
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 980
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 981
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 982
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 985
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 986
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 987
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 988
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 989
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 991
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
