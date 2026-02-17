.class abstract synthetic Lio/codetail/animation/arcanimator/ArcMetric$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/arcanimator/ArcMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$codetail$animation$arcanimator$Side:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    invoke-static {}, Lio/codetail/animation/arcanimator/Side;->values()[Lio/codetail/animation/arcanimator/Side;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/codetail/animation/arcanimator/ArcMetric$1;->$SwitchMap$io$codetail$animation$arcanimator$Side:[I

    :try_start_0
    sget-object v1, Lio/codetail/animation/arcanimator/Side;->RIGHT:Lio/codetail/animation/arcanimator/Side;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/codetail/animation/arcanimator/ArcMetric$1;->$SwitchMap$io$codetail$animation$arcanimator$Side:[I

    sget-object v1, Lio/codetail/animation/arcanimator/Side;->LEFT:Lio/codetail/animation/arcanimator/Side;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
