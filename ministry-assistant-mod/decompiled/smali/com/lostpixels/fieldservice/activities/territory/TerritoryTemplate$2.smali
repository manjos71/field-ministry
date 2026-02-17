.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_4

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    if-eqz p1, :cond_4

    .line 224
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->onEditorAction(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x42

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 206
    invoke-virtual {p3, p2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unfocucsable view....."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 p2, 0x82

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 213
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unfocucsable view..."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
