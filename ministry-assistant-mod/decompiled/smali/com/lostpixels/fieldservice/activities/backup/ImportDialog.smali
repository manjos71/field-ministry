.class public Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;
    }
.end annotation


# instance fields
.field mCity:Landroid/widget/AutoCompleteTextView;

.field mImportInfo:Landroid/widget/TextView;

.field mInfotext:Landroid/widget/TextView;

.field mNeighborhood:Landroid/widget/AutoCompleteTextView;

.field mPersonInfoLayout:Landroid/view/View;

.field mProgress:Landroid/view/View;

.field mTerritoryHelperLayout:Landroid/view/View;

.field mTerritoryInfoLayout:Landroid/view/View;

.field mTerritoryName:Landroid/widget/EditText;

.field mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field mWebIcon:Landroid/widget/TextView;

.field mbFileLoaded:Z

.field mbtnCancel:Landroid/view/View;

.field mbtnOK:Landroid/view/View;

.field mchMergeTerritory:Landroid/widget/CheckBox;

.field private realm:Lio/realm/Realm;


# direct methods
.method static bridge synthetic -$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportDataFromIntent(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/io/InputStream;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportDataFromVCard(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreFileFromIntent(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreFromBackupFile(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;ZLjava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFromBackupFile(ZLjava/io/InputStream;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->saveAndQuit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpAutoCompleteViews(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->setUpAutoCompleteViews()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mterritoryExists(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->territoryExists(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mPersonInfoLayout:Landroid/view/View;

    .line 112
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryHelperLayout:Landroid/view/View;

    .line 114
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryInfoLayout:Landroid/view/View;

    .line 116
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mProgress:Landroid/view/View;

    .line 118
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    .line 120
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    .line 122
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnCancel:Landroid/view/View;

    .line 129
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 131
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    return-void
.end method

.method private downloadFileFromInternet(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    .line 1079
    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fillPersonInfo(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 7

    const v0, 0x7f090441

    .line 1153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09052f

    .line 1154
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902d9

    .line 1155
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09027e

    .line 1156
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09066a

    .line 1157
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09066c

    .line 1158
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1160
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1169
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f120456

    .line 1171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1175
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const p1, 0x7f0801fd

    goto :goto_2

    :cond_3
    const p1, 0x7f080384

    goto :goto_2

    :cond_4
    const p1, 0x7f08013c

    goto :goto_2

    :cond_5
    const p1, 0x7f080172

    .line 1196
    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1198
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mPersonInfoLayout:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private fillTerritoryInfo(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 8

    .line 1100
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    if-eqz v0, :cond_0

    .line 1101
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    .line 1104
    :cond_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->territoryExists(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f09034d

    .line 1111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09034c

    .line 1112
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09034e

    .line 1113
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090291

    .line 1114
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1117
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1118
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1120
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1126
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :cond_3
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1129
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->calcStatsObject(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;

    move-result-object p1

    .line 1136
    iget-boolean v0, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsPhone:Z

    if-eqz v0, :cond_5

    const p1, 0x7f080357

    .line 1137
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1138
    :cond_5
    iget-boolean v0, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsRural:Z

    if-eqz v0, :cond_6

    const p1, 0x7f080359

    .line 1139
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1140
    :cond_6
    iget-boolean v0, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsBuilding:Z

    if-eqz v0, :cond_7

    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/internal/ministry/TerritoryStatistics;->bIsStreet:Z

    if-eqz p1, :cond_7

    const p1, 0x7f08035c

    .line 1141
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    const p1, 0x7f080354

    .line 1143
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    const p1, 0x7f08035b

    .line 1145
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1147
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryInfoLayout:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private importDataFromIntent(Ljava/io/InputStream;Z)V
    .locals 8

    .line 833
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 835
    const-string v0, "Stacktrace"

    const-string v1, ""

    const-string v2, "importDataFromIntent"

    const/high16 v3, -0x10000

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 836
    :try_start_0
    new-instance p2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 838
    :cond_0
    new-instance p2, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {p2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 839
    :goto_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v4

    .line 840
    const-string p1, "ImportDialog 3"

    invoke-static {p0, v4, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExportedDataFileTemp(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 844
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedTerritoryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_1

    .line 846
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7f120421

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 848
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedTerritoryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->fillTerritoryInfo(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 849
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    invoke-direct {v5, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 933
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedPersonList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 935
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7f12041f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 938
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedPersonList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 939
    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->fillPersonInfo(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 940
    invoke-virtual {p2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHidden(Z)V

    .line 944
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;

    invoke-direct {v5, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 959
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f1200c5

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz v4, :cond_7

    .line 980
    :try_start_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 983
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 972
    :goto_2
    :try_start_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7f12041c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 974
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cought: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 974
    invoke-static {v2, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_7

    .line 980
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 965
    :goto_4
    :try_start_4
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7f1200bf

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileVersionException: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 968
    invoke-static {v2, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    :goto_5
    return-void

    :goto_6
    if-eqz v4, :cond_8

    .line 980
    :try_start_5
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p2

    .line 983
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 985
    :cond_8
    :goto_7
    throw p1
.end method

.method private importDataFromVCard(Ljava/io/InputStream;)V
    .locals 9

    const/4 v0, 0x0

    .line 728
    :try_start_0
    invoke-static {p1}, Lezvcard/Ezvcard;->parse(Ljava/io/InputStream;)Lezvcard/Ezvcard$ParserChainTextReader;

    move-result-object p1

    invoke-virtual {p1}, Lezvcard/Ezvcard$ParserChainTextReader;->first()Lezvcard/VCard;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 730
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    const/4 v2, 0x1

    .line 731
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 734
    invoke-virtual {p1}, Lezvcard/VCard;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 735
    invoke-virtual {p1}, Lezvcard/VCard;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezvcard/property/Address;

    .line 736
    invoke-virtual {v3}, Lezvcard/property/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 738
    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 739
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lezvcard/property/Address;->getStreetAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 741
    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 742
    :cond_1
    invoke-virtual {v3}, Lezvcard/property/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 744
    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPostalCode(Ljava/lang/String;)V

    .line 748
    :cond_2
    invoke-virtual {p1}, Lezvcard/VCard;->getGender()Lezvcard/property/Gender;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 750
    invoke-virtual {v3}, Lezvcard/property/Gender;->isMale()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setType(I)V

    .line 753
    :cond_3
    invoke-virtual {p1}, Lezvcard/VCard;->getGeo()Lezvcard/property/Geo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 755
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lezvcard/property/Geo;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3}, Lezvcard/property/Geo;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 758
    :cond_4
    invoke-virtual {p1}, Lezvcard/VCard;->getStructuredName()Lezvcard/property/StructuredName;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    invoke-virtual {v3}, Lezvcard/property/StructuredName;->getFamily()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 762
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 763
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_5
    invoke-virtual {v3}, Lezvcard/property/StructuredName;->getGiven()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 768
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setName(Ljava/lang/String;)V

    .line 774
    :cond_7
    invoke-virtual {p1}, Lezvcard/VCard;->getEmails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 775
    invoke-virtual {p1}, Lezvcard/VCard;->getEmails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lezvcard/property/Email;

    invoke-virtual {v3}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setEmail(Ljava/lang/String;)V

    .line 777
    :cond_8
    invoke-virtual {p1}, Lezvcard/VCard;->getTelephoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezvcard/property/Telephone;

    .line 778
    invoke-virtual {v4}, Lezvcard/property/Telephone;->getText()Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-virtual {v4}, Lezvcard/property/Telephone;->getTypes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 780
    invoke-virtual {v4}, Lezvcard/property/Telephone;->getTypes()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lezvcard/parameter/TelephoneType;->CELL:Lezvcard/parameter/TelephoneType;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 781
    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCellPhone(Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_9
    invoke-virtual {v4}, Lezvcard/property/Telephone;->getTypes()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lezvcard/parameter/TelephoneType;->HOME:Lezvcard/parameter/TelephoneType;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 783
    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    goto :goto_1

    .line 784
    :cond_a
    invoke-virtual {v4}, Lezvcard/property/Telephone;->getTypes()Ljava/util/Set;

    move-result-object v4

    sget-object v6, Lezvcard/parameter/TelephoneType;->VIDEO:Lezvcard/parameter/TelephoneType;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 785
    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVideoPhone(Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :cond_b
    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    goto :goto_1

    .line 789
    :cond_c
    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    goto :goto_1

    .line 793
    :cond_d
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    .line 794
    invoke-virtual {p1}, Lezvcard/VCard;->getNotes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lezvcard/property/Note;

    .line 795
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;-><init>()V

    .line 796
    invoke-virtual {v4}, Lezvcard/property/SimpleProperty;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setInfo(Ljava/lang/String;)V

    .line 797
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 800
    :cond_e
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->fillPersonInfo(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 803
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7f12041f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 806
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-void

    :goto_3
    const v1, 0x7f1204b2

    .line 820
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_10
    const-string p1, ""

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 822
    const-string v0, "restoreFileFromIntent - 2"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mPersonInfoLayout:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryInfoLayout:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 586
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const v2, 0x7f1204b1

    .line 588
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120551

    .line 590
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const v2, 0x7f1205e0

    .line 593
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 596
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restoreFileFromIntent"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 599
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/lang/String;Ljava/io/InputStream;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private restoreFromBackupFile(ZLjava/io/InputStream;)V
    .locals 7

    .line 653
    const-string v0, "Stacktrace"

    const-string v1, ""

    const-string v2, "Exception cought: "

    const v3, 0x7f1204b2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 654
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 658
    new-instance v5, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 659
    :goto_1
    invoke-virtual {v5, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    .line 660
    invoke-static {}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->clearAll()V

    .line 661
    new-instance v5, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;

    invoke-direct {v5, p0, p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/fasterxml/jackson/core/JsonParser;)V

    xor-int/lit8 p1, p1, 0x1

    const-string v6, "ImportDialog 2"

    invoke-static {p0, p2, v5, p1, v6}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 707
    :goto_2
    :try_start_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 708
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 710
    const-string p2, "restoreFileFromIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_2
    move-object v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 710
    invoke-static {p2, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 695
    :catch_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1200bf

    .line 696
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const-string v5, "OK"

    new-instance v6, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$8;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    .line 697
    invoke-virtual {p2, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 703
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 717
    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 719
    const-string v1, "restoreFileFromIntent - 2"

    invoke-static {v1, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_5
    return-void
.end method

.method private saveAndQuit()V
    .locals 0

    .line 989
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setUpAutoCompleteViews()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    .line 253
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    .line 254
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v1

    const v2, 0x1090011

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 255
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    .line 256
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 257
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_1
    return-void
.end method

.method private showUnknownMimeTypeMessage()V
    .locals 4

    .line 537
    const-string v0, "\n"

    const v1, 0x7f120543

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 540
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v2, 0x7f120124

    .line 541
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 547
    const-string v3, "Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v3, "Action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v3, "Scheme: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 561
    const-string v3, "Path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 566
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 567
    const-string v3, "Categories: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    :cond_2
    const-string v0, "Unknown intent"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 577
    :goto_2
    const-string v1, "Logging intent"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private territoryExists(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 5

    .line 1084
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    .line 1088
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1089
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected handleIntent()V
    .locals 26

    move-object/from16 v1, p0

    .line 293
    const-string v2, "FileNotFound"

    const-string v3, "handleIntent"

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "file"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "application/vnd.mabackupbin"

    const-string v7, "application/vnd.ministryassistantbackup"

    const-string v8, "application/vnd.maexportbin"

    const-string v9, "application/vnd.ministryassistantexport"

    const-string v10, ".mytimedb"

    const-string v11, "text/x-vcard"

    const-string v12, ".vcf"

    const-string v13, ".maexport"

    const-string v14, ".mabackup"

    const-string v15, ".mab"

    const-string v4, ".mae"

    if-eqz v0, :cond_b

    .line 294
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 298
    :try_start_2
    invoke-direct {v1, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_12

    :catch_0
    move-object/from16 v18, v2

    :catch_1
    const v2, 0x7f12041c

    goto/16 :goto_10

    :catch_2
    move-object v5, v2

    :goto_0
    const v2, 0x7f12041c

    goto/16 :goto_11

    .line 299
    :cond_0
    :try_start_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 301
    invoke-direct {v1, v0, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :catch_3
    move-object v5, v2

    :goto_1
    const v2, 0x7f12041c

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    invoke-direct {v1, v5}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 304
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    invoke-direct {v1, v5}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 306
    :cond_3
    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 307
    :try_start_4
    invoke-direct {v1, v0, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_12

    .line 308
    :cond_4
    :try_start_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 309
    invoke-direct {v1, v0, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :cond_5
    const/4 v4, 0x1

    .line 310
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 311
    invoke-direct {v1, v0, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 312
    :cond_6
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    .line 313
    :try_start_6
    invoke-direct {v1, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_12

    .line 314
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 315
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 316
    invoke-direct {v1, v0, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 317
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 318
    :try_start_8
    invoke-direct {v1, v0, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_12

    .line 319
    :cond_9
    :try_start_9
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    .line 320
    invoke-direct {v1, v0, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 322
    :cond_a
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->showUnknownMimeTypeMessage()V

    goto/16 :goto_12

    .line 323
    :cond_b
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v5, "content"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v0, :cond_24

    .line 327
    :try_start_a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object v5, v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 329
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_c

    move-object/from16 v18, v2

    const v2, 0x7f12041c

    .line 332
    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    const/4 v4, 0x0

    :try_start_d
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_12

    :catch_5
    move-object/from16 v5, v18

    goto/16 :goto_1

    :catch_6
    move-object/from16 v5, v18

    goto/16 :goto_0

    :catch_7
    move-object/from16 v5, v18

    goto/16 :goto_2

    :cond_c
    move-object/from16 v18, v2

    .line 338
    :try_start_f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 339
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    const-string v2, "_display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_d

    .line 342
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_4

    :catch_8
    move-exception v0

    const/16 v19, 0x0

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    .line 344
    :goto_4
    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_6

    :catch_9
    move-exception v0

    move-object/from16 v19, v2

    .line 346
    :goto_5
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 348
    :goto_6
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v9, 0x0

    .line 349
    invoke-direct {v1, v5, v9}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 350
    :cond_e
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "application/maexport"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_a

    :cond_f
    if-eqz v2, :cond_10

    .line 353
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 354
    invoke-direct {v1, v5}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 355
    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    invoke-direct {v1, v5}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 357
    :cond_11
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v9, 0x0

    .line 358
    invoke-direct {v1, v2, v5, v9}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 359
    :cond_12
    const-string v0, "mytime/sqlite"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v9, 0x0

    .line 360
    invoke-direct {v1, v2, v5, v9}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 361
    :cond_13
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "application/mabackup"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 363
    :cond_15
    const-string v0, "application/octet-stream"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "application/x-gzip"

    .line 364
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_8

    .line 383
    :cond_16
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "*/*"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_7

    .line 403
    :cond_17
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->showUnknownMimeTypeMessage()V

    goto/16 :goto_12

    :cond_18
    :goto_7
    if-eqz v2, :cond_19

    .line 388
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    if-eqz v0, :cond_19

    const/4 v4, 0x0

    .line 389
    :try_start_12
    invoke-direct {v1, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_12

    :cond_19
    if-eqz v2, :cond_1a

    .line 391
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 392
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 393
    invoke-direct {v1, v0, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :cond_1a
    if-eqz v2, :cond_1b

    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    if-eqz v0, :cond_1b

    const/4 v4, 0x0

    .line 396
    :try_start_14
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_12

    :cond_1b
    if-eqz v2, :cond_1c

    .line 398
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v4, 0x1

    .line 399
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 401
    :cond_1c
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->showUnknownMimeTypeMessage()V

    goto/16 :goto_12

    :cond_1d
    :goto_8
    if-eqz v2, :cond_1e

    .line 366
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1

    if-eqz v0, :cond_1e

    const/4 v4, 0x0

    .line 367
    :try_start_16
    invoke-direct {v1, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_12

    :cond_1e
    if-eqz v2, :cond_1f

    .line 369
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 370
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 371
    invoke-direct {v1, v0, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :cond_1f
    if-eqz v2, :cond_20

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    if-eqz v0, :cond_20

    const/4 v4, 0x0

    .line 374
    :try_start_18
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_12

    :cond_20
    if-eqz v2, :cond_21

    .line 376
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v4, 0x1

    .line 377
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :cond_21
    if-eqz v2, :cond_22

    .line 379
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v4, 0x1

    .line 380
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 382
    :cond_22
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->showUnknownMimeTypeMessage()V

    goto/16 :goto_12

    .line 362
    :goto_9
    invoke-direct {v1, v2, v5, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    .line 351
    :cond_23
    :goto_a
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 352
    invoke-direct {v1, v0, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V

    goto/16 :goto_12

    :cond_24
    move-object/from16 v18, v2

    .line 405
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 406
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ftp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1

    if-eqz v0, :cond_2d

    .line 409
    :cond_25
    :try_start_1a
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "territoryhelper.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    const-string v2, "territoryassistant.com"

    if-nez v0, :cond_2a

    :try_start_1b
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_b

    .line 495
    :cond_26
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    const-string v2, "MinistryAssistantExport"

    if-eqz v0, :cond_27

    .line 496
    :try_start_1c
    new-instance v0, Ljava/io/File;

    .line 497
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v2, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_f

    .line 498
    :cond_27
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 499
    new-instance v0, Ljava/io/File;

    .line 500
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-static {v2, v15, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_d

    .line 501
    :cond_28
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 502
    new-instance v0, Ljava/io/File;

    .line 503
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-static {v2, v14, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    goto :goto_d

    .line 509
    :cond_29
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->showUnknownMimeTypeMessage()V

    goto :goto_c

    .line 410
    :cond_2a
    :goto_b
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 411
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mWebIcon:Landroid/widget/TextView;

    const v2, 0x7f08035f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 412
    :cond_2b
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mWebIcon:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 415
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mProgress:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryHelperLayout:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->downloadUrl(Ljava/lang/String;Landroid/app/Activity;Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;)V

    goto :goto_c

    .line 492
    :cond_2c
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_c
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_2d

    .line 514
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 515
    const-string v0, "%s://%s%s"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 516
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v7, v16

    const/16 v17, 0x1

    aput-object v4, v7, v17

    const/4 v2, 0x2

    aput-object v6, v7, v2

    .line 515
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-direct {v1, v0, v5, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->downloadFileFromInternet(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    goto :goto_12

    .line 524
    :goto_e
    :try_start_1d
    const-string v2, "HandleIntent"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 521
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Could not download file"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1

    .line 531
    :catch_c
    :goto_10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object/from16 v5, v18

    .line 532
    invoke-static {v3, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 528
    :goto_11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    invoke-static {v3, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    .line 141
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "ImportDialog"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "CurrentAtivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 145
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0c0090

    .line 147
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f09043f

    .line 151
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mPersonInfoLayout:Landroid/view/View;

    const v0, 0x7f09030e

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryHelperLayout:Landroid/view/View;

    const v0, 0x7f090456

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mProgress:Landroid/view/View;

    const v0, 0x7f09055b

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryInfoLayout:Landroid/view/View;

    const v0, 0x7f09056f

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    const v0, 0x7f090130

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    const v0, 0x7f09055d

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryName:Landroid/widget/EditText;

    const v0, 0x7f09055a

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f09055e

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f090671

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mWebIcon:Landroid/widget/TextView;

    const v0, 0x7f09029f

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mInfotext:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnCancel:Landroid/view/View;

    const v0, 0x7f0900f5

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mWebIcon:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 167
    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnCancel:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mPersonInfoLayout:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryInfoLayout:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    .line 247
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->setUpAutoCompleteViews()V

    goto :goto_2

    .line 199
    :cond_2
    :goto_1
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$4;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    invoke-virtual {v0, v2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ImportDialog 1"

    invoke-static {v0, p1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 241
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 277
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->handleIntent()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 287
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
