.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreListAdapter"
.end annotation


# instance fields
.field final mContext:Landroid/app/Activity;

.field private final mInfo:Ljava/util/ArrayList;

.field final mLayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    .line 407
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 408
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mInfo:Ljava/util/ArrayList;

    .line 409
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mLayoutID:I

    .line 410
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->getItem(I)Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getObject(I)Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 433
    new-instance p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;-><init>()V

    .line 434
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 435
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mLayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090619

    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->strName:Landroid/widget/TextView;

    const v1, 0x7f0905f6

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->strDate:Landroid/widget/TextView;

    const v1, 0x7f090296

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->imgType:Landroid/widget/ImageView;

    .line 440
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;->mInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    .line 446
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->strName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->strDate:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    aput-object v4, v2, p3

    const-string v3, "%s - %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget p1, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->type:I

    if-ne p1, p3, :cond_1

    .line 450
    iget-object p1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->imgType:Landroid/widget/ImageView;

    const p2, 0x7f080175

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0

    .line 452
    :cond_1
    iget-object p1, p2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;->imgType:Landroid/widget/ImageView;

    const p2, 0x7f080309

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method
