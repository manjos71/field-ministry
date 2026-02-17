.class public abstract Lcom/lostpixels/fieldservice/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createChannels(Landroid/content/Context;)V
    .locals 4

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 22
    :cond_0
    const-string v0, "Ministry Assistant"

    const/4 v1, 0x3

    const-string v2, "MimmiChannel"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 25
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    const v2, -0xff0100

    .line 26
    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/NotificationChannel;I)V

    .line 27
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/NotificationChannel;I)V

    .line 29
    const-string v2, "notification"

    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 31
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 33
    const-string v0, "Ministry timer notification"

    const/4 v2, 0x2

    const-string v3, "MimmiTimerChannelNoSound"

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v2, 0x0

    .line 35
    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 36
    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    .line 37
    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/NotificationChannel;Z)V

    .line 38
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/NotificationUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/NotificationChannel;I)V

    .line 40
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method
