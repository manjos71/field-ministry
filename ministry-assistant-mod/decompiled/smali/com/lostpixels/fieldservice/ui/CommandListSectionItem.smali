.class public Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/CommandListItem;


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
