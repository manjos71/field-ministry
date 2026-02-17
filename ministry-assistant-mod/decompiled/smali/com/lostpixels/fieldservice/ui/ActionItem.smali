.class public Lcom/lostpixels/fieldservice/ui/ActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionId:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private sticky:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->title:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 32
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->actionId:I

    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->actionId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSticky()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/ActionItem;->sticky:Z

    return v0
.end method
