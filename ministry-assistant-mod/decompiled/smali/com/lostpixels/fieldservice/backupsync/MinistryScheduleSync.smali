.class public abstract Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;
    }
.end annotation


# direct methods
.method public static syncMinistrySchedule(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;Landroid/content/Context;)V
    .locals 0

    .line 50
    new-instance p1, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$1GetAddressTask;-><init>(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
