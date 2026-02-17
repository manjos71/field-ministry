.class Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepbot/datetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;

.field private mLegalKeys:[I

.field final synthetic this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;


# direct methods
.method public varargs constructor <init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 934
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canReach(I)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;
    .locals 6

    .line 951
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 954
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    .line 955
    invoke-virtual {v4, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_2
    return-object v1
.end method

.method public containsKey(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 942
    :goto_0
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 943
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
