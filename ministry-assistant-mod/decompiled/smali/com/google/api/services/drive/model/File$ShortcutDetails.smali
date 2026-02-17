.class public final Lcom/google/api/services/drive/model/File$ShortcutDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortcutDetails"
.end annotation


# instance fields
.field private targetId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private targetMimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3127
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 3127
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 3127
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 1

    .line 3187
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3127
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->clone()Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .line 3149
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetMimeType()Ljava/lang/String;
    .locals 1

    .line 3167
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 3127
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 3127
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ShortcutDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3182
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object p1
.end method

.method public setTargetId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3157
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetId:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 0

    .line 3176
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ShortcutDetails;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method
