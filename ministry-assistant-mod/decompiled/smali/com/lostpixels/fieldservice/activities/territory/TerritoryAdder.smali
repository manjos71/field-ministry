.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbViewHolder;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryViewHolder;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;

.field adapterCity:Landroid/widget/ArrayAdapter;

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private createType:I

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mbIsUpdating:Z

.field private mbSomethingChanged:Z

.field private mchkSortTerritory:Landroid/widget/CheckBox;

.field private miLastSelectedCity:I

.field private miLastSelectedNeighbourhood:I

.field private mlstCities:Ljava/util/ArrayList;

.field private mlstSuburbs:Ljava/util/ArrayList;

.field private msTerritoryCard:Ljava/lang/String;

.field private territoryCard:Landroid/widget/ImageView;

.field private territoryCardPlaceholder:Landroid/view/View;

.field private urlInDialog:Landroid/widget/EditText;

.field private viewTerritoryName:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$KapGulH7rdGRgP9n2cXsUj3aFIM(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIkUKtoD4rrBQaFU1FSpAddK0nk(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/view/View;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->showImportList()V

    return-void
.end method

.method public static synthetic $r8$lambda$hzVP975B5BNrqUicsyqFn4mJbfw(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    const/16 v1, 0xe

    .line 281
    invoke-virtual {p1, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setRequestCode(I)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 282
    const-string v1, "QR_CODE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    const v1, 0x7f12031e

    .line 283
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 284
    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 286
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public static synthetic $r8$lambda$qvr8wFV9J7dhpmMl8fcBfKmIVr4(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 291
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->urlInDialog:Landroid/widget/EditText;

    .line 291
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 293
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "territoryassistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 297
    invoke-direct {p0, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->downloadTerritory(Ljava/lang/String;Landroid/app/ProgressDialog;)V

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    const-string p1, "Invalid Territory Adder URL"

    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 299
    :goto_1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetalertDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcitiesAlertDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsUpdating(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmiLastSelectedNeighbourhood(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createCityList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSuburbList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createSuburbList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createTerritory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdownloadTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->downloadTerritory(Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setCitySelection(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSuburbSelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setSuburbSelection(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msomethingChanged(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->somethingChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFromTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateFromTerritory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTerritoryCard(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateTerritoryCard()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c014f

    .line 137
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapterCity:Landroid/widget/ArrayAdapter;

    .line 108
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapter:Landroid/widget/ArrayAdapter;

    .line 110
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 112
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 114
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->viewTerritoryName:Landroid/widget/EditText;

    .line 116
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCardPlaceholder:Landroid/view/View;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    const/4 v0, 0x1

    .line 133
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private createCityList()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    const v2, 0x7f120542

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 479
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method private createSuburbList()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 490
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    const v2, 0x7f120542

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createTerritory()V
    .locals 10

    .line 828
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->viewTerritoryName:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setName(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->removeEmptyStreets()V

    .line 831
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    const-wide/16 v1, 0x0

    if-lez v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setRegion(Ljava/lang/String;)V

    .line 833
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 835
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 837
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 838
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 840
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 841
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    .line 842
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setSuburb(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mchkSortTerritory:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setShouldSort(Z)V

    .line 851
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    if-lez v0, :cond_7

    .line 852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setCity(Ljava/lang/String;)V

    .line 853
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-eqz v0, :cond_7

    .line 854
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 855
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 856
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 857
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 858
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 859
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 860
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 861
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-eqz v8, :cond_6

    .line 862
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    goto :goto_1

    .line 870
    :cond_7
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-nez v0, :cond_8

    .line 871
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_2

    .line 873
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 875
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 876
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    const-string v3, "Territory"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 877
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 878
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private downloadTerritory(Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 1

    .line 361
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->downloadUrl(Ljava/lang/String;Landroid/app/Activity;Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;)V

    return-void
.end method

.method private selectImage()V
    .locals 6

    .line 751
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120527

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08030b

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204c8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08030d

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120387

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08030a

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1203b4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08030c

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120460

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080192

    const/16 v5, 0xb

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1201b0

    .line 761
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 762
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 763
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 765
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 767
    :goto_0
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, p0, v1}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 768
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 769
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 770
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 821
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 822
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private setCitySelection(I)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 461
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 465
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    return-void
.end method

.method private setSuburbSelection(I)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 449
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 452
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 453
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    return-void

    .line 455
    :cond_2
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    return-void
.end method

.method private setupCities()V
    .locals 10

    .line 584
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createCityList()V

    .line 588
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 590
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120587

    .line 591
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 592
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 593
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 597
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;

    const v8, 0x7f090560

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstCities:Ljava/util/ArrayList;

    const v7, 0x7f0c0138

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$CityArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v4, v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapterCity:Landroid/widget/ArrayAdapter;

    .line 598
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x5

    .line 599
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 602
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 626
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 664
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 665
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setupSuburbs()V
    .locals 10

    .line 496
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createSuburbList()V

    .line 500
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 502
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120565

    .line 503
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 504
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 505
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 509
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;

    const v8, 0x7f090560

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mlstSuburbs:Ljava/util/ArrayList;

    const v7, 0x7f0c0138

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$SuburbArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v4, v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->adapter:Landroid/widget/ArrayAdapter;

    .line 510
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x5

    .line 511
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 514
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$7;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 539
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 579
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 580
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private showImportList()V
    .locals 2

    .line 257
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->showImportTerritoryAssistant()V

    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->showImportListTerritoryHelper()V

    return-void
.end method

.method private showImportListTerritoryHelper()V
    .locals 2

    .line 309
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203d2

    .line 311
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 314
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 316
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;)V

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/download/UrlDownloader;->downloadTerritoryList(Landroid/app/Activity;Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;)V

    return-void
.end method

.method private showImportTerritoryAssistant()V
    .locals 5

    .line 264
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203d2

    .line 266
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c016a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 272
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12031e

    .line 273
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0901e5

    .line 277
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->urlInDialog:Landroid/widget/EditText;

    const v1, 0x7f0904ae

    .line 278
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;)V

    const v0, 0x7f12004d

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 302
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda3;-><init>()V

    const v1, 0x7f12004b

    invoke-virtual {v3, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private somethingChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    return-void
.end method

.method private updateFromTerritory()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->viewTerritoryName:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 240
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 242
    invoke-direct {p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setSuburbSelection(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v0

    .line 247
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 249
    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setCitySelection(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateTerritoryCard()V

    return-void
.end method

.method private updateTerritoryCard()V
    .locals 6

    .line 984
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 985
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 987
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 988
    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCard:Landroid/widget/ImageView;

    const v3, 0x7f080383

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 989
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCard:Landroid/widget/ImageView;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {p0, v5}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;-><init>(Landroid/widget/ImageView;I)V

    .line 994
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1001
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCardPlaceholder:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1004
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCardPlaceholder:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 884
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 887
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 895
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 896
    throw v0

    .line 895
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 903
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->somethingChanged()V

    const/4 v0, 0x7

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_b

    .line 905
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v0, :cond_b

    .line 906
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->msTerritoryCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 907
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateTerritoryCard()V

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    .line 911
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 914
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->urlInDialog:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1
    if-eqz p3, :cond_b

    .line 916
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 917
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 919
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->urlInDialog:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_5

    .line 964
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v0, :cond_5

    .line 965
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TerriotryPoints"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 968
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    invoke-direct {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    .line 971
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    const-string v1, "TerriotryCard"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 973
    :cond_5
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateTerritoryCard()V

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    if-ne p2, v1, :cond_b

    .line 976
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setupSuburbs()V

    goto/16 :goto_5

    :cond_7
    :goto_1
    if-ne p2, v1, :cond_b

    .line 925
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v0, :cond_b

    .line 926
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 928
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 929
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 933
    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 934
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 935
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v0, 0x0

    .line 939
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 941
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 943
    :goto_3
    const-string v1, "."

    if-eqz v0, :cond_9

    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 945
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p0, v2, v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNewTerritoryImageFile(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 947
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    goto :goto_4

    .line 950
    :cond_9
    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p0, v1, v0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNewTerritoryImageFile(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 955
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 960
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateTerritoryCard()V

    .line 980
    :cond_b
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090559

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090558

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    if-ne p1, v0, :cond_1

    .line 717
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    if-ne p1, v0, :cond_2

    .line 719
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void

    .line 710
    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->selectImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera 1"

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1200b9

    .line 713
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, p1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 145
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    const-string v2, "IsEditing"

    const-string v3, "CreateType"

    const-string v4, "Territory"

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 153
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    .line 156
    :cond_1
    const-string v0, "SomethingChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    .line 160
    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 163
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    :cond_5
    :goto_0
    const p1, 0x7f0900f0

    .line 166
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 167
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    if-ne v0, v5, :cond_6

    const v0, 0x7f09029c

    .line 168
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    const v0, 0x7f120115

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_1
    const v0, 0x7f0900f3

    .line 172
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v0, 0x7f0900e8

    .line 173
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 174
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090559

    .line 176
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCardPlaceholder:Landroid/view/View;

    .line 177
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090558

    .line 178
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->territoryCard:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090204

    .line 180
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->viewTerritoryName:Landroid/widget/EditText;

    const v0, 0x7f09016c

    .line 181
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mchkSortTerritory:Landroid/widget/CheckBox;

    .line 182
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mchkSortTerritory:Landroid/widget/CheckBox;

    .line 185
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-eqz v0, :cond_8

    const v0, 0x7f1203d9

    goto :goto_2

    :cond_8
    const v0, 0x7f120584

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 195
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setupSuburbs()V

    .line 196
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setSuburbSelection(I)V

    .line 198
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setupCities()V

    .line 199
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setCitySelection(I)V

    .line 201
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_9

    .line 202
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 204
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mchkSortTerritory:Landroid/widget/CheckBox;

    invoke-virtual {p1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    .line 207
    :cond_9
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->updateFromTerritory()V

    .line 209
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mchkSortTerritory:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->shouldSort()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 214
    :goto_3
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    if-eqz p1, :cond_a

    .line 215
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->somethingChanged()V

    .line 217
    :cond_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->viewTerritoryName:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7f1201a5

    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 404
    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-eqz p2, :cond_0

    const p2, 0x7f1204bf

    goto :goto_0

    :cond_0
    const p2, 0x7f1203b5

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 1013
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 1014
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$13;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$13;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 1019
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$12;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$12;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1025
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1026
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 1029
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1204bf

    goto :goto_0

    :cond_1
    const v1, 0x7f1203b5

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12055b

    .line 425
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12045b

    .line 431
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$5;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 440
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 417
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 413
    :cond_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createTerritory()V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 443
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 744
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 746
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdderPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 683
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 688
    const-string v0, "IsEditing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    .line 689
    const-string v0, "Suburb"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    if-lez v0, :cond_0

    .line 691
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setSuburbSelection(I)V

    .line 693
    :cond_0
    const-string v0, "TerritoryImage"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->msTerritoryCard:Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    .line 696
    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 698
    :cond_1
    const-string v0, "SomethingChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    .line 700
    const-string v0, "City"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    if-lez p1, :cond_2

    .line 702
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setSuburbSelection(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 670
    const-string v0, "Suburb"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedNeighbourhood:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string v0, "IsEditing"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbIsUpdating:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    const-string v0, "TerritoryImage"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->msTerritoryCard:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "Territory"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 674
    const-string v0, "SomethingChanged"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mbSomethingChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 675
    const-string v0, "City"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->miLastSelectedCity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v0, "CreateType"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->createType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 678
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method takePicture()V
    .locals 3

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "jpg"

    invoke-static {p0, v1, v2}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNewTerritoryImageFile(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->msTerritoryCard:Ljava/lang/String;

    .line 730
    const-string v2, "com.lostpixels.fieldservice.fileprovider"

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 731
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x7

    .line 734
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f120279

    const/4 v2, 0x0

    .line 736
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 737
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
