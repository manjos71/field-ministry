.class public Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$SuburrbArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$CityArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewHolder;
    }
.end annotation


# instance fields
.field adapterCity:Landroid/widget/ArrayAdapter;

.field adapterSuburb:Landroid/widget/ArrayAdapter;

.field private bSomethingChanged:Z

.field private btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private edtAddress:Landroid/widget/AutoCompleteTextView;

.field private edtApartment:Landroid/widget/EditText;

.field private edtCellPhone:Landroid/widget/EditText;

.field private edtCountry:Landroid/widget/EditText;

.field private edtGeneralInfo:Landroid/widget/EditText;

.field private edtHomePhone:Landroid/widget/EditText;

.field private edtLanguages:Landroid/widget/EditText;

.field private edtMail:Landroid/widget/EditText;

.field private edtMotherTongue:Landroid/widget/EditText;

.field private edtName:Landroid/widget/EditText;

.field private edtPostCode:Landroid/widget/EditText;

.field private edtVideoPhone:Landroid/widget/EditText;

.field private haveSavedInstantState:Z

.field private mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

.field private mbCreateNew:Z

.field private mchDay:Landroid/widget/CheckBox;

.field private mchEvening:Landroid/widget/CheckBox;

.field private mchFav:Landroid/widget/CheckBox;

.field private mchFriday:Landroid/widget/CheckBox;

.field private mchMagRoute:Landroid/widget/CheckBox;

.field private mchMonday:Landroid/widget/CheckBox;

.field private mchMorning:Landroid/widget/CheckBox;

.field private mchRV:Landroid/widget/CheckBox;

.field private mchSaturday:Landroid/widget/CheckBox;

.field private mchStudy:Landroid/widget/CheckBox;

.field private mchSunday:Landroid/widget/CheckBox;

.field private mchTagAddress:Landroid/widget/CheckBox;

.field private mchThursday:Landroid/widget/CheckBox;

.field private mchTuesday:Landroid/widget/CheckBox;

.field private mchWednesday:Landroid/widget/CheckBox;

.field private mchWeekend:Landroid/widget/CheckBox;

.field private miLastSelected:I

.field private miLastSelectedCity:I

.field private mlstCities:Ljava/util/ArrayList;

.field private mlstSuburbs:Ljava/util/ArrayList;

.field private mratingBar:Landroid/widget/RatingBar;

.field private person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field private rdMan:Landroid/widget/RadioButton;

.field private rdUnknown:Landroid/widget/RadioButton;

.field private rdWoman:Landroid/widget/RadioButton;

.field private spAge:Landroid/widget/Spinner;

.field private suburbAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnCities(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcitiesAlertDialog(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetedtAddress(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetedtPostCode(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtPostCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiLastSelected(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmiLastSelectedCity(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelectedCity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmratingBar(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/RatingBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mratingBar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuburbAlertDialog(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->suburbAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->createCityList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSuburbList(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->createSuburbList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setCitySelection(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSuburbSelection(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setSuburbSelection(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0081

    .line 148
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->adapterSuburb:Landroid/widget/ArrayAdapter;

    .line 93
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->adapterCity:Landroid/widget/ArrayAdapter;

    .line 95
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 98
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 100
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    .line 145
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->haveSavedInstantState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private createCityList()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    const v2, 0x7f120542

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method private createSuburbList()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    const v2, 0x7f120542

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private importPerson(Landroid/database/Cursor;)V
    .locals 12

    .line 547
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 548
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtName:Landroid/widget/EditText;

    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const-string v1, "has_phone_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const-string v1, "true"

    goto :goto_1

    .line 556
    :cond_0
    const-string v1, "false"

    .line 558
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "contact_id = "

    const-string v3, "data1"

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 561
    :goto_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    const-string v4, "data2"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 564
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCellPhone:Landroid/widget/EditText;

    .line 565
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 564
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 567
    :cond_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtHomePhone:Landroid/widget/EditText;

    .line 568
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 567
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 570
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 574
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 576
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 577
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMail:Landroid/widget/EditText;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 584
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 585
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    const-string v4, "data4"

    .line 586
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 585
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const-string v2, "data7"

    .line 588
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 587
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 589
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 590
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setCitySelection(I)V

    .line 595
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 598
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 600
    const-string v1, "vnd.android.cursor.item/note"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v7, "raw_contact_id = ? AND mimetype = ?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 604
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 605
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtGeneralInfo:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 609
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private savePerson()V
    .locals 5

    .line 614
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setName(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAge(I)V

    .line 616
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setEmail(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCellPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCellPhone(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtHomePhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtVideoPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVideoPhone(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtLanguages:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setLanguages(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtPostCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPostalCode(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtApartment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setApartment(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMotherTongue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMotherTounge(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCountry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCountry(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtGeneralInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setGeneralInfo(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchRV:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 629
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchStudy:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 630
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMagRoute:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 631
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFav:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 633
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMorning:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitMorning(Z)V

    .line 634
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchDay:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitDay(Z)V

    .line 635
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchEvening:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitEvening(Z)V

    .line 636
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWeekend:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitWeekend(Z)V

    .line 638
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMonday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitMonday(Z)V

    .line 639
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTuesday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitTuesday(Z)V

    .line 640
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWednesday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitWednesday(Z)V

    .line 641
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchThursday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitThursday(Z)V

    .line 642
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFriday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitFriday(Z)V

    .line 643
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSaturday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitSaturday(Z)V

    .line 644
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSunday:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitSunday(Z)V

    .line 646
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V

    .line 649
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelected:I

    if-lez v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setSuburb(Ljava/lang/String;)V

    .line 652
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelectedCity:I

    if-lez v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdMan:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setType(I)V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdWoman:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setType(I)V

    goto :goto_0

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdUnknown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setType(I)V

    goto :goto_0

    .line 662
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setType(I)V

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 667
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-ne v1, v4, :cond_5

    .line 668
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    goto :goto_1

    :cond_6
    move-wide v0, v2

    :goto_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 673
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "houseHolder"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_7

    .line 675
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 679
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    const-string v1, "Person"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTagAddress:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "TagPerson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 682
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setCitySelection(I)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 326
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 330
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelectedCity:I

    return-void
.end method

.method private setSuburbSelection(I)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 317
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 321
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelected:I

    return-void
.end method

.method private setupAges()V
    .locals 4

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    const-string v1, "\u2013\u2013"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    const/4 v3, 0x5

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v3

    .line 303
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 308
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 309
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    div-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->spAge:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private setupCities()V
    .locals 10

    .line 447
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->createCityList()V

    .line 451
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 453
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120587

    .line 454
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 455
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 456
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 460
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$CityArrayAdapter;

    const v8, 0x7f090560

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstCities:Ljava/util/ArrayList;

    const v7, 0x7f0c0138

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$CityArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v4, v5, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->adapterCity:Landroid/widget/ArrayAdapter;

    .line 461
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x5

    .line 462
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 465
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$5;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 489
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 528
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v5, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->citiesAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 529
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setupSuburbs()V
    .locals 10

    .line 361
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->createSuburbList()V

    .line 365
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12058c

    .line 368
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 369
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 370
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 374
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$SuburrbArrayAdapter;

    const v8, 0x7f090560

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mlstSuburbs:Ljava/util/ArrayList;

    const v7, 0x7f0c0138

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$SuburrbArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v4, v5, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->adapterSuburb:Landroid/widget/ArrayAdapter;

    .line 375
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x5

    .line 376
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 379
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$3;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 403
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$4;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 442
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v5, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->suburbAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 443
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getAddressFromPos()V
    .locals 4

    .line 728
    new-instance v0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    const v1, 0x7f12035d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DontShowAddressFromPos"

    invoke-direct {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->show()V

    .line 731
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203f8

    .line 732
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 734
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 735
    const-string v2, "checkNumberBeforeStreet"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 736
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;ZLandroid/app/ProgressDialog;)V

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getCurrentPosition(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;)V

    return-void
.end method

.method importPerson()V
    .locals 3

    .line 223
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const v0, 0x7f1200d3

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 534
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p1

    .line 539
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->importPerson(Landroid/database/Cursor;)V

    return-void

    :cond_0
    move-object v2, p0

    .line 542
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/4 p1, 0x1

    .line 695
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->bSomethingChanged:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 153
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "CreateNew"

    const-string v5, "Person"

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 160
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    .line 161
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->haveSavedInstantState:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 166
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    :cond_2
    :goto_0
    const p1, 0x7f090665

    .line 171
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 173
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Landroidx/viewpager/widget/ViewPager;)V

    .line 174
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0904e4

    .line 176
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    const v1, 0x7f0c0145

    const v4, 0x1020014

    .line 177
    invoke-virtual {v0, v1, v4}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setCustomTabView(II)V

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 183
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f12058a

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 187
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->bSomethingChanged:Z

    .line 189
    const-string p1, "CreatePersonDialog"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f12041d

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0801a7

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    const v0, 0x7f1201a5

    .line 196
    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080306

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->savePerson()V

    .line 690
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->importPersonWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->savePerson()V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 217
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 262
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "Person"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    :cond_0
    if-eqz p1, :cond_3

    .line 285
    const-string v0, "EditPos"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string v0, "Changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->bSomethingChanged:Z

    .line 287
    const-string v0, "Suburb"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelected:I

    if-lez v0, :cond_1

    .line 289
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setSuburbSelection(I)V

    .line 291
    :cond_1
    const-string v0, "City"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelectedCity:I

    if-lez v0, :cond_2

    .line 293
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setSuburbSelection(I)V

    .line 295
    :cond_2
    const-string v0, "CreateNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 267
    const-string v0, "Changed"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->bSomethingChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    const-string v0, "Suburb"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelected:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v0, "City"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->miLastSelectedCity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 270
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    const-string v0, "CreateNew"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setupFragmentAdvanced()Landroid/view/View;
    .locals 4

    .line 951
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0c0082

    .line 952
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901eb

    .line 954
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCellPhone:Landroid/widget/EditText;

    const v1, 0x7f0901f5

    .line 955
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtHomePhone:Landroid/widget/EditText;

    const v1, 0x7f090205

    .line 956
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtVideoPhone:Landroid/widget/EditText;

    const v1, 0x7f0901f0

    .line 957
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMail:Landroid/widget/EditText;

    const v1, 0x7f0901f6

    .line 958
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtLanguages:Landroid/widget/EditText;

    const v1, 0x7f0901f7

    .line 959
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMotherTongue:Landroid/widget/EditText;

    const v1, 0x7f0901ee

    .line 960
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCountry:Landroid/widget/EditText;

    const v1, 0x7f0901f4

    .line 961
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtGeneralInfo:Landroid/widget/EditText;

    const v1, 0x7f090132

    .line 962
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMorning:Landroid/widget/CheckBox;

    const v1, 0x7f090125

    .line 963
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchDay:Landroid/widget/CheckBox;

    const v1, 0x7f090128

    .line 964
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchEvening:Landroid/widget/CheckBox;

    const v1, 0x7f090142

    .line 965
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWeekend:Landroid/widget/CheckBox;

    const v1, 0x7f090131

    .line 967
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMonday:Landroid/widget/CheckBox;

    const v1, 0x7f090140

    .line 968
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTuesday:Landroid/widget/CheckBox;

    const v1, 0x7f090141

    .line 969
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWednesday:Landroid/widget/CheckBox;

    const v1, 0x7f09012a

    .line 970
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFriday:Landroid/widget/CheckBox;

    const v1, 0x7f09013f

    .line 971
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchThursday:Landroid/widget/CheckBox;

    const v1, 0x7f090137

    .line 972
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSaturday:Landroid/widget/CheckBox;

    const v1, 0x7f09013c

    .line 973
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSunday:Landroid/widget/CheckBox;

    .line 975
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCellPhone:Landroid/widget/EditText;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 976
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtHomePhone:Landroid/widget/EditText;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 977
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtVideoPhone:Landroid/widget/EditText;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 979
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtGeneralInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$16;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1018
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1019
    const-string v2, "checkShowVideoPhone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtVideoPhone:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCellPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtHomePhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtVideoPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVideoPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtLanguages:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtMotherTongue:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMotherTounge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtCountry:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtGeneralInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMorning:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMorning()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1034
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchDay:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitDay()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1035
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchEvening:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitEvening()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1036
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWeekend:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWeekend()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1038
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMonday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMonday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1039
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTuesday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitTuesday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1040
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchWednesday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWednesday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1041
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchThursday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitThursday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1042
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFriday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitFriday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1043
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSaturday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSaturday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1044
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchSunday:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSunday()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    return-object v0
.end method

.method setupFragmentBasic()Landroid/view/View;
    .locals 13

    .line 799
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0083

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 800
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904ed

    .line 802
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->spAge:Landroid/widget/Spinner;

    const v1, 0x7f090482

    .line 803
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdMan:Landroid/widget/RadioButton;

    const v2, 0x7f090495

    .line 804
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdWoman:Landroid/widget/RadioButton;

    const v4, 0x7f090493

    .line 805
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdUnknown:Landroid/widget/RadioButton;

    const v5, 0x7f09046d

    .line 806
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const v7, 0x7f0901f9

    .line 807
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtName:Landroid/widget/EditText;

    const v7, 0x7f090202

    .line 808
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    const v7, 0x7f0901e1

    .line 810
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtPostCode:Landroid/widget/EditText;

    const v7, 0x7f0901dd

    .line 811
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtApartment:Landroid/widget/EditText;

    const v7, 0x7f090465

    .line 812
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    const v8, 0x7f0900f3

    .line 813
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v8, 0x7f0900e8

    .line 814
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v8, 0x7f090450

    .line 816
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RatingBar;

    iput-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mratingBar:Landroid/widget/RatingBar;

    const v8, 0x7f09013d

    .line 818
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTagAddress:Landroid/widget/CheckBox;

    const v8, 0x7f090134

    .line 820
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchRV:Landroid/widget/CheckBox;

    const v9, 0x7f09013b

    .line 821
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchStudy:Landroid/widget/CheckBox;

    const v10, 0x7f09012e

    .line 822
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMagRoute:Landroid/widget/CheckBox;

    const v11, 0x7f090129

    .line 823
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFav:Landroid/widget/CheckBox;

    .line 826
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 827
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 828
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 829
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 831
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 832
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 833
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 834
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {p0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    const v1, 0x7f090102

    .line 837
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 838
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$10;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09028b

    .line 845
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 846
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$11;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09028a

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 854
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$12;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090289

    .line 862
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 863
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdMan:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 872
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupAges()V

    .line 873
    invoke-virtual {v7, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 875
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnNeighbourhood:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$14;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->btnCities:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$15;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupSuburbs()V

    const/4 v1, 0x0

    .line 891
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setSuburbSelection(I)V

    .line 893
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupCities()V

    .line 894
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setCitySelection(I)V

    .line 897
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 898
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 899
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 901
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 902
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 903
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 904
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 905
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0c007d

    invoke-direct {v4, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 907
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 908
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 910
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v2, :cond_8

    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->haveSavedInstantState:Z

    if-nez v4, :cond_8

    .line 911
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtName:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtAddress:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtPostCode:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->edtApartment:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdWoman:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 916
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 917
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->rdUnknown:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 918
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchRV:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 919
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchStudy:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 920
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchMagRoute:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 921
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchFav:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 922
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mratingBar:Landroid/widget/RatingBar;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 924
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getSuburbs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 925
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    .line 926
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 927
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    .line 928
    invoke-direct {p0, v5}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setSuburbSelection(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 932
    :cond_5
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 934
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 935
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 936
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 937
    invoke-direct {p0, v4}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setCitySelection(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 941
    :cond_7
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mbCreateNew:Z

    if-eqz v1, :cond_8

    .line 942
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->mchTagAddress:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_8
    return-object v0
.end method

.method showDeniedForContacts()V
    .locals 2

    .line 253
    const-string v0, "Permission denied"

    const-string v1, "READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 722
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 723
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForContacts(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 232
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120096

    .line 234
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    .line 236
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 241
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 701
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 703
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 704
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$8;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    .line 705
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 710
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
