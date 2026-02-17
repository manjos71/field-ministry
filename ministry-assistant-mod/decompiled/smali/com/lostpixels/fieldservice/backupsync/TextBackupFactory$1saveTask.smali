.class Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "saveTask"
.end annotation


# instance fields
.field bOK:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;

.field final synthetic val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;Ljava/io/File;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->this$0:Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->bOK:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 28

    move-object/from16 v1, p0

    .line 122
    const-string v0, "hhmm"

    const-string v2, "\n"

    const-string v3, "/////////////////////////////////////////////////////////////////////////\n"

    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v5

    .line 127
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$file:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x4

    .line 131
    :try_start_1
    new-array v7, v7, [Z

    fill-array-data v7, :array_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 133
    iget-object v8, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v9, 0x7f12052e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 134
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 135
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 137
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_0

    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 138
    iget-object v10, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-static {v5, v10, v9, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->getTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_12

    :catch_0
    move-exception v0

    :goto_1
    const/16 p1, 0x0

    goto/16 :goto_f

    .line 142
    :cond_0
    :try_start_4
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 143
    iget-object v7, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v8, 0x7f1204b7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 144
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 145
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 146
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v9, "-------------------------------------------------------------------------\n"

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 147
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 148
    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 149
    iget-object v9, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 153
    :cond_2
    :try_start_6
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 154
    iget-object v7, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v8, 0x7f120500

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 155
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 156
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 157
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_4

    :try_start_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 158
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 159
    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 160
    iget-object v11, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 164
    :cond_4
    :try_start_8
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 165
    iget-object v7, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v8, 0x7f120437

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 166
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 167
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 168
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_6

    :try_start_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 169
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 170
    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 171
    iget-object v11, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 175
    :cond_6
    :try_start_a
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    iget-object v7, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v8, 0x7f1203e6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 177
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 178
    const-string v7, "/////////////////////////////////////////////////////////////////////////"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 179
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_8

    :try_start_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 180
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 181
    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 182
    iget-object v11, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 187
    :cond_8
    :try_start_c
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 188
    iget-object v7, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    const v8, 0x7f1202f2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 189
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 190
    invoke-virtual {v6, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 191
    iget-object v3, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    const-string v7, "inputMode"

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 193
    const-string v0, "mileageKM"

    const/4 v7, 0x1

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 194
    const-string v0, "mileageInReport"

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 195
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v16

    .line 196
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v17

    .line 197
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v18

    .line 198
    const-string v0, "ReportDensity"

    invoke-interface {v3, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "LLLL yyyy"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v8

    .line 202
    :goto_6
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v12

    invoke-virtual {v12, v5, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 203
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v12

    invoke-virtual {v12, v5, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v12

    const/16 v13, 0xc

    const/16 v22, 0xc

    :goto_7
    if-lez v22, :cond_c

    .line 205
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v13

    .line 206
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v19, 0x1

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v7

    .line 207
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v20
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v20, :cond_b

    const/16 p1, 0x0

    .line 208
    :try_start_d
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 209
    invoke-virtual {v6, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v4, v6

    .line 210
    :try_start_e
    iget-object v6, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v13

    const/4 v10, 0x2

    if-eq v0, v10, :cond_9

    const/16 v20, 0x1

    :goto_8
    const/4 v10, 0x0

    goto :goto_9

    :cond_9
    const/16 v20, 0x0

    goto :goto_8

    :goto_9
    if-nez v0, :cond_a

    const/16 v21, 0x1

    :goto_a
    move/from16 v19, v13

    const/16 v23, 0x1

    goto :goto_b

    :cond_a
    const/16 v21, 0x0

    goto :goto_a

    :goto_b
    const/4 v13, 0x0

    move/from16 v24, v8

    const/4 v8, 0x1

    move-object/from16 v25, v9

    const/4 v9, 0x0

    const/16 v26, 0x0

    const/4 v10, 0x0

    move-object/from16 v27, v12

    const/4 v12, 0x0

    move/from16 v23, v0

    move-object/from16 v0, v25

    move-object/from16 v25, v2

    const/4 v2, 0x1

    invoke-static/range {v5 .. v21}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 211
    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_d

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    :goto_c
    move-object v6, v4

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object v4, v6

    goto/16 :goto_f

    :cond_b
    move/from16 v23, v0

    move-object/from16 v25, v2

    move-object v4, v6

    move/from16 v24, v8

    move-object v0, v9

    move-object/from16 v27, v12

    const/16 p1, 0x0

    const/4 v2, 0x1

    const/16 v26, 0x0

    :goto_d
    add-int/lit8 v22, v22, -0x1

    move-object v9, v0

    move-object v6, v4

    move/from16 v0, v23

    move/from16 v8, v24

    move-object/from16 v2, v25

    move-object/from16 v12, v27

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v4, v6

    goto/16 :goto_1

    :cond_c
    move/from16 v23, v0

    move-object/from16 v25, v2

    move-object v4, v6

    move/from16 v24, v8

    move-object v0, v9

    const/16 p1, 0x0

    const/4 v2, 0x1

    const/16 v26, 0x0

    .line 215
    invoke-virtual {v4, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v8, v24, -0x1

    move-object v9, v0

    move-object v6, v4

    move/from16 v0, v23

    move-object/from16 v2, v25

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_d
    move-object v4, v6

    const/16 p1, 0x0

    const/4 v2, 0x1

    .line 219
    iput-boolean v2, v1, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->bOK:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 228
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    .line 231
    :try_start_f
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 235
    :catch_4
    :cond_e
    :goto_e
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v4, v6

    const/16 p1, 0x0

    goto :goto_c

    :catchall_2
    move-exception v0

    const/16 p1, 0x0

    move-object/from16 v4, p1

    goto :goto_12

    :catch_6
    move-exception v0

    const/16 p1, 0x0

    move-object/from16 v6, p1

    .line 222
    :goto_f
    :try_start_10
    const-string v2, "TextBackupFactory.makeManualBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception cought: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_f
    const-string v4, ""

    :goto_10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "Stacktrace"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 228
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    if-eqz v6, :cond_e

    .line 231
    :try_start_11
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_e

    :goto_11
    return-object p1

    .line 228
    :goto_12
    invoke-virtual {v5}, Lio/realm/Realm;->close()V

    if-eqz v4, :cond_10

    .line 231
    :try_start_12
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 235
    :catch_7
    :cond_10
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->getFileLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 236
    throw v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 246
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$backupComplete:Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;

    if-eqz p1, :cond_0

    .line 247
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->bOK:Z

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;->onBackupComplete(Z)V

    .line 249
    :cond_0
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->bOK:Z

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 251
    const-string v0, "backupAddr"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->val$file:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendBackupAsEMail(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory$1saveTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
