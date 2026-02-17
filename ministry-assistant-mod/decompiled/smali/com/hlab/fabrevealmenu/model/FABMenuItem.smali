.class public Lcom/hlab/fabrevealmenu/model/FABMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enabled:Z

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->enabled:Z

    .line 19
    iput p1, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->id:I

    .line 20
    iput-object p2, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->title:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->enabled:Z

    return v0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->id:I

    return-void
.end method
