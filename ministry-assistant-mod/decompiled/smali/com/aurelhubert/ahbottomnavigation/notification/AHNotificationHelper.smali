.class public abstract Lcom/aurelhubert/ahbottomnavigation/notification/AHNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBackgroundColor(Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;I)I
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->getBackgroundColor()I

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static getTextColor(Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;I)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->getTextColor()I

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    return p0
.end method
