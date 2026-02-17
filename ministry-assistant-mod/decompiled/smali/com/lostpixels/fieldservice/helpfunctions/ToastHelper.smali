.class public abstract Lcom/lostpixels/fieldservice/helpfunctions/ToastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/lostpixels/fieldservice/helpfunctions/ToastHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/ToastHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 22
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
