.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;
    }
.end annotation


# instance fields
.field private mBtnCreate:Landroid/widget/Button;

.field private mBtnStreetFromPos:Landroid/widget/ImageButton;

.field private mChNotAllLetters:Landroid/widget/CheckBox;

.field private mGPSlstStreets:Ljava/util/ArrayList;

.field private mLastAddressTime:Ljava/util/Date;

.field private mLocation:Landroid/location/Location;

.field private mNumberFrom:Landroid/widget/EditText;

.field private mNumberTo:Landroid/widget/EditText;

.field private mPreferredStreet:Ljava/lang/String;

.field private mStreetName:Landroid/widget/AutoCompleteTextView;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryID:J

.field private mbHasLocation:Z

.field private mbSomethingAdded:Z

.field private meType:I

.field private mlstStreets:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChNotAllLetters(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mChNotAllLetters:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/location/Location;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberFrom(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberTo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreetName(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbHasLocation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbSomethingAdded(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmeType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAddressTime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mLastAddressTime:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbHasLocation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmeType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayStreetList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->displayStreetList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getAddresses(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocations(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/utils/map/Position;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getLocations(Lcom/lostpixels/fieldservice/utils/map/Position;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    const/4 v0, 0x3

    .line 83
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Lio/realm/Realm;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private addMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V
    .locals 12

    .line 575
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 577
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    .line 579
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget v5, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v6, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object v7, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    .line 580
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v4, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letterFirst()Z

    move-result v10

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mChNotAllLetters:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    const/4 v9, 0x0

    move v3, v0

    move-object v4, v1

    .line 579
    invoke-static/range {v3 .. v11}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;IICCIZZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget v5, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v6, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v7, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    iget v8, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    const/4 v9, 0x0

    const/4 v3, 0x2

    move-object v4, v0

    invoke-static/range {v3 .. v9}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreetGerman(ILjava/lang/String;IIIII)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v4, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 584
    invoke-static {v0, v1, v3, v4, v2}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;III)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v1, v3, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz p3, :cond_2

    .line 588
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 592
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void

    .line 596
    :cond_4
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0091

    .line 597
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f1203bb

    .line 598
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a4

    .line 600
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f120425

    .line 601
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 603
    const-string v1, "1234567890"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 604
    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0900f5

    .line 605
    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    move-object v2, v0

    .line 606
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Landroid/widget/EditText;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZLandroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private displayStreetList()V
    .locals 7

    const/4 v0, 0x0

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1200d8

    .line 829
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 830
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 834
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 837
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/CharSequence;

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 840
    :cond_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1204ce

    .line 842
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 843
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 848
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 849
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 852
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private extractAddress(Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;)Ljava/lang/String;
    .locals 3

    .line 702
    :try_start_0
    iget-object v0, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    return-object p1

    .line 706
    :cond_0
    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->address:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 707
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 708
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lez v1, :cond_3

    .line 715
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAddresses(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 731
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 738
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/lostpixels/fieldservice/utils/map/Position;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 742
    :try_start_2
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v10

    iget-wide v12, v9, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    iget-wide v14, v9, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v16, 0x1

    move-object/from16 v11, p0

    .line 743
    :try_start_3
    invoke-virtual/range {v10 .. v16}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v9, 0x4

    .line 748
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v9, 0x5

    move-object/from16 v11, p0

    .line 750
    :try_start_6
    invoke-direct {v11, v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->extractAddress(Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 751
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 752
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v7, 0x5

    goto :goto_5

    :cond_1
    :goto_2
    const/4 v9, 0x6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    move v7, v9

    goto :goto_5

    :cond_2
    move-object/from16 v11, p0

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    const/4 v7, 0x4

    goto :goto_5

    :catch_3
    :goto_3
    nop

    goto :goto_4

    :catch_4
    move-object/from16 v11, p0

    goto :goto_3

    :goto_4
    const/4 v7, 0x3

    goto :goto_0

    :catch_5
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_5

    :cond_3
    move-object/from16 v11, p0

    const/16 v7, 0x8

    .line 760
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v11, p0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 762
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object v5, v2, v4

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "Error in getAddress, pos %d, time %d\n%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLocations(Lcom/lostpixels/fieldservice/utils/map/Position;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p1

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    new-instance v2, Lcom/lostpixels/fieldservice/utils/map/Position;

    iget-wide v3, v0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    iget-wide v5, v0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/utils/map/Position;-><init>(DD)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-wide v2, v0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    .line 679
    iget-wide v8, v0, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D

    mul-double v8, v8, v4

    div-double/2addr v8, v6

    const/16 v0, 0x32

    :goto_0
    const/16 v10, 0xc8

    if-gt v0, v10, :cond_1

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    mul-int/lit8 v11, v10, 0x2d

    int-to-double v11, v11

    mul-double v11, v11, v4

    div-double/2addr v11, v6

    .line 684
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    move-wide v15, v4

    int-to-double v4, v0

    const-wide v17, 0x415854a640000000L    # 6378137.0

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    .line 685
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    .line 686
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v13, v13, v17

    .line 684
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    .line 688
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v11, v11, v17

    .line 689
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v11, v11, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 690
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v4, v4, v17

    .line 688
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    .line 691
    new-instance v11, Lcom/lostpixels/fieldservice/utils/map/Position;

    mul-double v13, v13, v6

    div-double/2addr v13, v15

    mul-double v4, v4, v6

    div-double/2addr v4, v15

    invoke-direct {v11, v13, v14, v4, v5}, Lcom/lostpixels/fieldservice/utils/map/Position;-><init>(DD)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-wide v4, v15

    goto :goto_1

    :cond_0
    move-wide v15, v4

    add-int/lit8 v0, v0, 0x32

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private parseString(Ljava/lang/String;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 301
    :cond_0
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 302
    const-string v4, "\\d+[/]\\d+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 303
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\\d+"

    if-eqz v4, :cond_2

    .line 305
    :try_start_1
    iput-boolean v1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bIsGermanFormat:Z

    .line 306
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 307
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 309
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 311
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 314
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 315
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    if-eqz v2, :cond_1

    .line 319
    iget p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    :cond_1
    return-object v3

    .line 323
    :cond_2
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 324
    const-string v4, "\\d+[A-Za-z\u00c5\u00c4\u00d6\u00e5\u00e4\u00f6]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 325
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "[A-Za-z\u00c5\u00c4\u00d6\u00e5\u00e4\u00f6]"

    if-eqz v4, :cond_3

    .line 327
    :try_start_2
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 330
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 332
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 333
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 335
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 338
    iget p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    return-object v3

    .line 342
    :cond_3
    const-string v4, "[A-Za-z\u00c5\u00c4\u00d6\u00e5\u00e4\u00f6]\\d+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 343
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 345
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 346
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 347
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 348
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 350
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 351
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 353
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 356
    iget p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 358
    :cond_4
    iput-boolean v1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bLetterFirst:Z

    return-object v3

    .line 362
    :cond_5
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 363
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 365
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v2, :cond_7

    return-object v0

    .line 370
    :cond_6
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 371
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 373
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    if-eqz v2, :cond_7

    mul-int/lit8 p1, p1, -0x1

    .line 375
    iput p1, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    return-object v3

    :catch_0
    :cond_8
    return-object v0
.end method

.method private removeSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " "

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setResult()V
    .locals 3

    .line 979
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 980
    const-string v1, "Territory"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 981
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private shouldStreetsBeUpdated()Z
    .locals 5

    .line 277
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mLastAddressTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mLastAddressTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addStreets(ZZ)V
    .locals 33

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    const/4 v0, 0x4

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 528
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    .line 386
    iput-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    .line 388
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    iget-object v9, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 390
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    const-string v11, "OK"

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 391
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200d9

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 393
    invoke-virtual {v2, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$6;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 394
    invoke-virtual {v2, v11, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 406
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    const-string v13, ""

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 407
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 408
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 409
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 410
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v8, v9

    :goto_0
    invoke-direct {v2, v8, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 411
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v5, :cond_4

    .line 413
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_19

    .line 417
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    .line 418
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 421
    :cond_5
    invoke-direct {v1, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->parseString(Ljava/lang/String;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    move-result-object v10

    .line 422
    invoke-direct {v1, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->parseString(Ljava/lang/String;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    move-result-object v14

    if-eqz v10, :cond_6

    .line 423
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isOnlyLetter()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    if-eqz v14, :cond_7

    .line 424
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isOnlyLetter()Z

    move-result v16

    if-eqz v16, :cond_7

    :goto_2
    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_8

    .line 425
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v14, :cond_9

    .line 426
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    :goto_5
    if-eqz v10, :cond_a

    .line 427
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letterFirst()Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-eqz v14, :cond_b

    .line 428
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letterFirst()Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v29, 0x1

    goto :goto_7

    :cond_b
    const/16 v29, 0x0

    :goto_7
    if-eqz v10, :cond_c

    .line 429
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v30, 0x1

    goto :goto_8

    :cond_c
    const/16 v30, 0x0

    :goto_8
    if-eqz v14, :cond_d

    .line 430
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v31, 0x1

    goto :goto_9

    :cond_d
    const/16 v31, 0x0

    :goto_9
    if-eqz v10, :cond_e

    if-eqz v14, :cond_e

    if-eq v15, v7, :cond_e

    if-eqz v7, :cond_e

    .line 434
    iget v7, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iput v7, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/4 v7, 0x0

    const/16 v32, 0x1

    goto :goto_a

    :cond_e
    move/from16 v32, v18

    :goto_a
    if-nez v10, :cond_f

    .line 440
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    if-nez v14, :cond_11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    .line 441
    :cond_10
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200c8

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 443
    invoke-virtual {v2, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$7;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 444
    invoke-virtual {v2, v11, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_11
    if-eq v15, v7, :cond_12

    .line 456
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200b8

    .line 457
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 458
    invoke-virtual {v2, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$8;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 459
    invoke-virtual {v2, v11, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_12
    move/from16 v8, v32

    if-ne v0, v8, :cond_22

    move/from16 v0, v29

    if-ne v3, v0, :cond_22

    move/from16 v0, v30

    move/from16 v8, v31

    if-eq v0, v8, :cond_13

    goto/16 :goto_e

    :cond_13
    if-eqz v15, :cond_15

    if-eqz v7, :cond_15

    .line 489
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mChNotAllLetters:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    const/4 v7, 0x3

    invoke-static {v7, v0, v2, v3, v4}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;CCZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    .line 490
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v5, :cond_14

    .line 492
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    if-eqz v6, :cond_19

    .line 496
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    .line 497
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 500
    :cond_15
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    if-ne v0, v7, :cond_1a

    .line 502
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 503
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    iget v0, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v2, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object v4, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v24

    iget-object v4, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v25

    iget-object v4, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mChNotAllLetters:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v28

    const/16 v20, 0x2

    const/16 v26, 0x0

    move/from16 v22, v0

    move/from16 v23, v2

    move/from16 v27, v3

    invoke-static/range {v20 .. v28}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;IICCIZZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    goto :goto_b

    .line 504
    :cond_16
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 505
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    iget v0, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v2, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v3, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    iget v4, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    const/16 v21, 0x0

    const/4 v15, 0x2

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v15 .. v21}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreetGerman(ILjava/lang/String;IIIII)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    goto :goto_b

    .line 507
    :cond_17
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget v2, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v3, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v3, v12}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;III)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    .line 508
    :goto_b
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0, v12}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v5, :cond_18

    .line 510
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz v6, :cond_19

    .line 514
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    .line 515
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_19
    return-void

    .line 518
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 520
    iget v7, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    rem-int/lit8 v8, v7, 0x2

    const v9, 0x7f120362

    const v11, 0x7f1203bb

    if-nez v8, :cond_1c

    iget v8, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/16 v19, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1c

    const v7, 0x7f1203df

    .line 521
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget v7, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v8, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1b

    .line 524
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1b
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 529
    :cond_1c
    rem-int/lit8 v8, v7, 0x2

    const/4 v13, 0x1

    if-ne v8, v13, :cond_1e

    iget v8, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/16 v19, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-ne v8, v13, :cond_1e

    const v7, 0x7f120477

    .line 530
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget v7, v10, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v8, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1d

    .line 533
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_1d
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 539
    :cond_1e
    iget v8, v14, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1f

    .line 540
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1f
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 548
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_20

    .line 549
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_20
    const/4 v13, 0x1

    if-ne v2, v13, :cond_21

    .line 553
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->meType:I

    .line 554
    invoke-direct {v1, v10, v14, v5, v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V

    return-void

    .line 556
    :cond_21
    new-instance v8, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v8, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120476

    .line 557
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 558
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;

    move-object v2, v3

    move-object v3, v10

    move-object v4, v14

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V

    invoke-virtual {v8, v7, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 565
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 567
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 472
    :cond_22
    :goto_e
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200dd

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 474
    invoke-virtual {v2, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$9;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 475
    invoke-virtual {v2, v11, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method getCurrentLocations()V
    .locals 4

    .line 859
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;-><init>()V

    .line 861
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$15;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 870
    :try_start_0
    invoke-virtual {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->getLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const v1, 0x7f1203f9

    .line 971
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 972
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 974
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mBtnCreate:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 653
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    .line 657
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addStreets(ZZ)V

    return-void

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mBtnStreetFromPos:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 660
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->shouldStreetsBeUpdated()Z

    move-result p1

    if-nez p1, :cond_3

    .line 661
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->displayStreetList()V

    return-void

    .line 663
    :cond_3
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 664
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;->getCurrentLocationsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 119
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0c0155

    .line 122
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 126
    const-string v3, "Streets"

    const-string v4, "PrefStreet"

    const-string v5, "TerritoryID"

    const-string v6, "Territory"

    if-eqz p1, :cond_4

    .line 127
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_2

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    .line 131
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_5

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_6

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 141
    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    .line 142
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 144
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    if-nez p1, :cond_7

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 145
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    if-nez p1, :cond_8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    :cond_8
    :goto_0
    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mGPSlstStreets:Ljava/util/ArrayList;

    const p1, 0x7f0901fc

    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    const p1, 0x7f0901fd

    .line 155
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    const p1, 0x7f090202

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f090102

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mBtnStreetFromPos:Landroid/widget/ImageButton;

    .line 158
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09014e

    .line 159
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mChNotAllLetters:Landroid/widget/CheckBox;

    const p1, 0x7f09033b

    .line 160
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1201cc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 163
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x109000a

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 169
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 170
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mStreetName:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 174
    :cond_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 230
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900eb

    .line 256
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mBtnCreate:Landroid/widget/Button;

    .line 257
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 259
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 260
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e5

    .line 267
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 268
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberFrom:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mNumberTo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    if-eqz v0, :cond_2

    .line 821
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->setResult()V

    goto :goto_1

    .line 802
    :cond_1
    :goto_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1204bd

    .line 803
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 804
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$13;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$13;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 803
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 808
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 815
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 816
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 823
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1014
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1016
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 770
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    .line 773
    const-string v0, "SomethingAdded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    .line 774
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    const-string v0, "TerritoryID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    .line 778
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 781
    const-string v0, "PrefStreet"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 783
    const-string v0, "Streets"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 789
    const-string v0, "SomethingAdded"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mbSomethingAdded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritoryID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 791
    const-string v0, "Territory"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 793
    :cond_0
    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 794
    :goto_0
    const-string v0, "PrefStreet"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "Streets"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->mlstStreets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 796
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 1007
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 1008
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 986
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 988
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 989
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$17;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$17;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lpermissions/dispatcher/PermissionRequest;)V

    .line 990
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$16;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$16;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 995
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1000
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1001
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
