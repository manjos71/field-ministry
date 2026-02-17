.class abstract Lezvcard/Ezvcard$WriterChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/Ezvcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WriterChain"
.end annotation


# instance fields
.field final this_:Ljava/lang/Object;

.field final vcards:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput-object p0, p0, Lezvcard/Ezvcard$WriterChain;->this_:Ljava/lang/Object;

    .line 1331
    iput-object p1, p0, Lezvcard/Ezvcard$WriterChain;->vcards:Ljava/util/Collection;

    return-void
.end method
