.class public Lcom/lostpixels/fieldservice/ui/CommandListActionItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/CommandListItem;


# instance fields
.field private final commandID:I

.field private final imageID:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->imageID:I

    .line 21
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->commandID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->title:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->imageID:I

    .line 15
    iput p3, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->commandID:I

    return-void
.end method


# virtual methods
.method public getCommandID()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->commandID:I

    return v0
.end method

.method public getImageID()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->imageID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
