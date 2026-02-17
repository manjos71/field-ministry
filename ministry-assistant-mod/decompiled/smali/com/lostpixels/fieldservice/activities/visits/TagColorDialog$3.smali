.class abstract synthetic Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EColorBy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$3;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EColorBy:[I

    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$3;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EColorBy:[I

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
