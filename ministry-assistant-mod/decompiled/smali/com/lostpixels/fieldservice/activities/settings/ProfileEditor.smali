.class public Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arrMonthProfiles:[I

.field private aux30Color:I

.field private aux50Color:I

.field private auxPioneerSetAutomatically:Z

.field private bChanged:Z

.field private bInitialized:Z

.field private checkInfirmPioneer:Landroid/widget/CheckBox;

.field private checkRemotheBethelite:Landroid/widget/CheckBox;

.field private checkShowLDC:Landroid/widget/CheckBox;

.field final colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private editName:Landroid/widget/EditText;

.field private imageProfile:Landroid/widget/ImageView;

.field private materialMenu:Lcom/balysv/materialmenu/MaterialMenuDrawable;

.field private month1:Landroid/widget/ImageView;

.field private month10:Landroid/widget/ImageView;

.field private month11:Landroid/widget/ImageView;

.field private month12:Landroid/widget/ImageView;

.field private month2:Landroid/widget/ImageView;

.field private month3:Landroid/widget/ImageView;

.field private month4:Landroid/widget/ImageView;

.field private month5:Landroid/widget/ImageView;

.field private month6:Landroid/widget/ImageView;

.field private month7:Landroid/widget/ImageView;

.field private month8:Landroid/widget/ImageView;

.field private month9:Landroid/widget/ImageView;

.field private monthPickerLayout:Landroid/view/View;

.field public profilePicture:Landroid/graphics/Bitmap;

.field private selectedImageUri:Landroid/net/Uri;

.field shortDateFormat:Ljava/text/SimpleDateFormat;

.field private spinnerMonths:Landroid/widget/Spinner;

.field private spinnerProfile:Landroid/widget/Spinner;

.field private themeBackground:Landroid/view/View;

.field private themeBaseRadioGroup:Landroid/widget/RadioGroup;

.field private themeColor:Ljava/lang/String;

.field private themeColorView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetarrMonthProfiles(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckShowLDC(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkShowLDC:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageProfile(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth1(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth10(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month10:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth11(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month11:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth12(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month12:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth2(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth3(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month3:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth4(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month4:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth5(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month5:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth6(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month6:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth7(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month7:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth8(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month8:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth9(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month9:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmonthPickerLayout(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspinnerProfile(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/Spinner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeBackground(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBackground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeColorView(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputthemeColor(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayouts(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateLayouts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0c0101

    .line 136
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLL"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 98
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void
.end method

.method private buildMonthProfileArray(Z)V
    .locals 8

    .line 400
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 401
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_0

    const/4 p1, -0x1

    .line 404
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 406
    :cond_0
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 409
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result p1

    const v3, 0x3f333333    # 0.7f

    invoke-static {p1, v3}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->manipulateColor(IF)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux50Color:I

    .line 410
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux30Color:I

    const/4 p1, 0x1

    :goto_0
    const/16 v3, 0xc

    if-gt p1, v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthProfile()I

    move-result v5

    aput v5, v3, v4

    .line 415
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10

    .line 861
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 862
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 869
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x1

    .line 872
    :goto_0
    div-int/lit8 v2, v2, 0x2

    const/16 v5, 0xc8

    if-lt v2, v5, :cond_1

    div-int/lit8 v0, v0, 0x2

    if-ge v0, v5, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 882
    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 883
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 884
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 889
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 890
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 891
    const-string v0, "Orientation"

    invoke-virtual {v3, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x10e

    goto :goto_2

    :cond_3
    const/16 v0, 0x5a

    goto :goto_2

    :cond_4
    const/16 v0, 0xb4

    :goto_2
    if-nez v0, :cond_5

    .line 906
    const-string v1, "orientation"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 907
    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 909
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 910
    aget-object v0, v6, v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 915
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, v0

    invoke-static {v2, p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_6
    return-object v2

    .line 918
    :goto_4
    const-string v0, "Rotate image"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private initProfileSpinners()V
    .locals 5

    .line 926
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 927
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 928
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    .line 929
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isBethelite(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 931
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 933
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary15(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 935
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 937
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary30(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 938
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 939
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 941
    :cond_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 942
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 943
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 945
    :cond_3
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer90()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 946
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 947
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 949
    :cond_4
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer100()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 950
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 951
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 953
    :cond_5
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 954
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 955
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 957
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary90()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 958
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 959
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 961
    :cond_7
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary100()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 962
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 963
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 966
    :cond_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 967
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_9
    return-void
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 143
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private saveProfile()V
    .locals 5

    .line 537
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090481

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 538
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 539
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 540
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, "selectedThemeColor"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 543
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 544
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setThemeColor(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 547
    :sswitch_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    sget-object v3, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeLight:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    invoke-virtual {v0, p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V

    goto :goto_2

    .line 553
    :sswitch_1
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    sget-object v3, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDefault:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    invoke-virtual {v0, p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V

    goto :goto_2

    .line 550
    :sswitch_2
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    sget-object v3, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDark:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    invoke-virtual {v0, p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V

    .line 558
    :goto_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->setProfile()V

    .line 561
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reportName"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 566
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->profilePicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 567
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->saveProfilePicture(Landroid/graphics/Bitmap;)Z

    :cond_5
    if-eqz v1, :cond_6

    .line 572
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 574
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :catch_0
    :cond_6
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimeBehind()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09046e -> :sswitch_2
        0x7f09046f -> :sswitch_1
        0x7f090481 -> :sswitch_0
    .end sparse-switch
.end method

.method private saveProfilePicture(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    .line 833
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 834
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 835
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->updateProfileImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 844
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 840
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 844
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 848
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p1, 0x0

    return p1

    :goto_2
    if-eqz v0, :cond_1

    .line 844
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 850
    :cond_1
    :goto_3
    throw p1
.end method

.method private setProfile()V
    .locals 14

    .line 974
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v0

    .line 976
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 1059
    :pswitch_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xb

    invoke-static {v1, v0, v2, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto/16 :goto_4

    .line 1056
    :pswitch_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xa

    invoke-static {v1, v0, v2, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto/16 :goto_4

    .line 1053
    :pswitch_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto/16 :goto_4

    .line 1050
    :pswitch_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1, v0, v5, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto/16 :goto_4

    .line 1047
    :pswitch_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1, v0, v4, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto/16 :goto_4

    .line 1011
    :pswitch_5
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 1012
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v9, 0x3

    invoke-static {v8, v0, v9, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    .line 1013
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    .line 1016
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1017
    invoke-virtual {v8, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1018
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_0

    const/4 v5, -0x1

    .line 1019
    invoke-virtual {v8, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 1021
    :cond_0
    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v0, v1

    .line 1022
    invoke-virtual {v8, v6, v0}, Ljava/util/Calendar;->add(II)V

    :goto_0
    if-ge v0, v3, :cond_9

    .line 1025
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 1026
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v11, v11, v0

    const/16 v12, 0x9

    if-eq v11, v9, :cond_1

    .line 1036
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v11

    iget-object v13, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v11, v13, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isProfileNone()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1037
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v8, v12, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_1

    .line 1029
    :cond_1
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1030
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v8, v10, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_1

    .line 1031
    :cond_2
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v11

    iget-object v13, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v11, v13, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isProfileNone()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1032
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v8, v12, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    .line 1041
    :cond_3
    :goto_1
    invoke-virtual {v8, v6, v1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :pswitch_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 986
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    .line 989
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 990
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v8, v8, v2

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v6, :cond_4

    goto :goto_3

    .line 992
    :cond_4
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary15(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 993
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v0, v1, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_3

    .line 996
    :cond_5
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary30(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 997
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v0, v6, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_3

    .line 1000
    :cond_6
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isBethelite(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 1001
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPublisher()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1002
    :cond_7
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v5, v0, v7, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    .line 1006
    :cond_8
    :goto_3
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 981
    :pswitch_7
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x6

    invoke-static {v1, v0, v2, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    goto :goto_4

    .line 978
    :pswitch_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1, v0, v7, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;IIZ)V

    .line 1063
    :cond_9
    :goto_4
    const-string v0, "MyPrefsSettings"

    invoke-virtual {p0, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkShowLDC:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "whenShowRBC"

    if-eqz v1, :cond_b

    .line 1065
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v4, :cond_a

    const-string v1, "pioneer"

    goto :goto_5

    :cond_a
    const-string v1, "always"

    :goto_5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 1067
    :cond_b
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "never"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showProfilePicker(Landroid/content/Context;)V
    .locals 3

    .line 744
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const v1, 0x7f1204cc

    const v2, 0x7f120528

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120151

    .line 750
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 753
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 757
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12049c

    .line 758
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 759
    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$4;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Ljava/io/File;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 785
    :goto_1
    const-string v0, "showProfilePicker"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayouts()V
    .locals 16

    move-object/from16 v0, p0

    .line 421
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v14, 0x2

    if-eq v1, v14, :cond_0

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v10, :cond_1

    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 463
    :cond_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 464
    invoke-direct {v0, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->buildMonthProfileArray(Z)V

    .line 466
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    array-length v15, v1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_3

    aget v2, v1, v13

    if-ne v2, v10, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 473
    :goto_1
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month1:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v12, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 474
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month2:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v14, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 475
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month3:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v10, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 476
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month4:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v9, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 477
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month5:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v8, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 478
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month6:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v7, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 479
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month7:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v6, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 480
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month8:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v11, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 481
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month9:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v5, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 482
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month10:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v4, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 483
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month11:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v3, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 484
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month12:Landroid/widget/ImageView;

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v12}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 486
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 487
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 488
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isInfirmPioneer()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 489
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 491
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_4

    .line 494
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 496
    :cond_4
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_5
    const/4 v13, 0x0

    .line 499
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 422
    :goto_2
    invoke-direct {v0, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->buildMonthProfileArray(Z)V

    .line 423
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month1:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v12, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 430
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month2:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v14, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 431
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month3:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v10, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 432
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month4:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v9, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 433
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month5:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v8, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 434
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month6:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v7, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 435
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month7:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v6, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 436
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month8:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v11, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 437
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month9:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v5, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 438
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month10:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v4, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 439
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month11:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v3, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 440
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month12:Landroid/widget/ImageView;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 444
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    array-length v2, v1

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v2, :cond_9

    aget v3, v1, v13

    if-eq v3, v12, :cond_7

    if-ne v3, v14, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 451
    :cond_7
    :goto_4
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    goto :goto_a

    .line 452
    :cond_9
    :goto_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_a

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v2, v1, v12

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    goto :goto_8

    .line 454
    :cond_b
    :goto_6
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v14, :cond_c

    const/4 v2, 0x2

    goto :goto_7

    :cond_c
    const/4 v2, 0x1

    :goto_7
    aput v2, v1, v12

    .line 455
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month2:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-direct {v0, v1, v14, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 456
    iput-boolean v12, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    goto :goto_a

    .line 457
    :goto_8
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v1, v1, v13

    if-nez v1, :cond_f

    .line 458
    :cond_d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v14, :cond_e

    goto :goto_9

    :cond_e
    const/4 v14, 0x1

    :goto_9
    aput v14, v1, v13

    .line 459
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month1:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v12, v13}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    .line 460
    iput-boolean v12, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    .line 505
    :cond_f
    :goto_a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkShowLDC:Landroid/widget/CheckBox;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateMonthImage(Landroid/widget/ImageView;IZ)V
    .locals 5

    const/4 v0, -0x1

    add-int/2addr p2, v0

    .line 683
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 684
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    if-eqz p3, :cond_1

    .line 686
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/16 v4, 0x8

    if-ge p3, v4, :cond_0

    .line 687
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 689
    :cond_0
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 692
    :cond_1
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    .line 693
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget p2, p3, p2

    const/16 p3, 0xa

    if-ne p2, v2, :cond_2

    .line 694
    invoke-static {}, Ltext/drawable/mylibrary/TextDrawable;->builder()Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 695
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux30Color:I

    invoke-interface {p2, v0, v1, p3}, Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Ltext/drawable/mylibrary/TextDrawable;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_3

    .line 697
    invoke-static {}, Ltext/drawable/mylibrary/TextDrawable;->builder()Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 698
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux50Color:I

    invoke-interface {p2, v0, v1, p3}, Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Ltext/drawable/mylibrary/TextDrawable;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 700
    invoke-static {}, Ltext/drawable/mylibrary/TextDrawable;->builder()Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 701
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux50Color:I

    invoke-interface {p2, v0, v1, p3}, Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Ltext/drawable/mylibrary/TextDrawable;

    move-result-object p2

    goto :goto_0

    .line 703
    :cond_4
    invoke-static {}, Ltext/drawable/mylibrary/TextDrawable;->builder()Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 704
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v1, -0xbbbbbc

    invoke-interface {p2, v0, v1, p3}, Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Ltext/drawable/mylibrary/TextDrawable;

    move-result-object p2

    .line 707
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateMonthView(Landroid/widget/ImageView;I)V
    .locals 7

    add-int/lit8 v0, p2, -0x1

    .line 658
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 659
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v6, v1, v0

    if-ne v6, v5, :cond_0

    .line 660
    aput v4, v1, v0

    goto :goto_0

    .line 662
    :cond_0
    aput v5, v1, v0

    goto :goto_0

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 664
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v5, v1, v0

    if-ne v5, v3, :cond_2

    .line 665
    aput v4, v1, v0

    goto :goto_0

    .line 667
    :cond_2
    aput v3, v1, v0

    goto :goto_0

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 669
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    aget v6, v1, v0

    if-ne v6, v5, :cond_4

    .line 670
    aput v4, v1, v0

    goto :goto_0

    .line 672
    :cond_4
    aput v5, v1, v0

    .line 677
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthImage(Landroid/widget/ImageView;IZ)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 796
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 798
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "temp.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    .line 804
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->selectedImageUri:Landroid/net/Uri;

    .line 805
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->profilePicture:Landroid/graphics/Bitmap;

    .line 806
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 813
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 816
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->selectedImageUri:Landroid/net/Uri;

    .line 817
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->profilePicture:Landroid/graphics/Bitmap;

    .line 818
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const v1, 0x7f1200bb

    .line 823
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 827
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 532
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 586
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0902f4

    if-eq v1, v2, :cond_2

    const v2, 0x7f090308

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v1, v2, :cond_0

    const v0, 0x7f090452

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    return-void

    .line 638
    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 639
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 634
    :pswitch_1
    check-cast p1, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 635
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 630
    :pswitch_2
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 631
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 626
    :pswitch_3
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 627
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 622
    :pswitch_4
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 623
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 618
    :pswitch_5
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 619
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 614
    :pswitch_6
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v5}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 615
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 610
    :pswitch_7
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 611
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 650
    :pswitch_8
    check-cast p1, Landroid/widget/ImageView;

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 651
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 646
    :pswitch_9
    check-cast p1, Landroid/widget/ImageView;

    const/16 v1, 0xb

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 647
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 642
    :pswitch_a
    check-cast p1, Landroid/widget/ImageView;

    const/16 v1, 0xa

    invoke-direct {p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 643
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 606
    :pswitch_b
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v4}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateMonthView(Landroid/widget/ImageView;I)V

    .line 607
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->auxPioneerSetAutomatically:Z

    return-void

    .line 590
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getThemeColorList(Landroid/content/Context;)[I

    move-result-object p1

    .line 594
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const v1, 0x7f1204c4

    .line 591
    invoke-static {v1, p1, v0, v5, v3}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->newInstance(I[IIII)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 598
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "cal"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 603
    :cond_2
    invoke-direct {p0, p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->showProfilePicker(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09015e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 152
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v2, 0x7f1203d7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901a0

    .line 157
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 158
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const/4 v2, 0x0

    .line 160
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->bChanged:Z

    .line 161
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->bInitialized:Z

    if-eqz p1, :cond_0

    .line 164
    const-string v3, "changed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->bChanged:Z

    .line 166
    :cond_0
    new-instance v3, Lcom/balysv/materialmenu/MaterialMenuDrawable;

    const/4 v4, -0x1

    sget-object v5, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->REGULAR:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    invoke-direct {v3, p0, v4, v5}, Lcom/balysv/materialmenu/MaterialMenuDrawable;-><init>(Landroid/content/Context;ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;)V

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->materialMenu:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    .line 167
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->materialMenu:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    sget-object v3, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->X:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    invoke-virtual {v0, v3}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setIconState(Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;)V

    if-eqz p1, :cond_2

    .line 173
    const-string v0, "themeColor"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    .line 176
    :cond_1
    const-string v0, "profilePictureUri"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->selectedImageUri:Landroid/net/Uri;

    .line 179
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->profilePicture:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const p1, 0x7f0902f4

    .line 187
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBackground:Landroid/view/View;

    .line 188
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090452

    .line 191
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->profilePicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getProfileImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 197
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090308

    .line 202
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090597

    .line 203
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    .line 204
    sget-object p1, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$5;->$SwitchMap$com$lostpixels$fieldservice$ui$ThemeManager$ThemeMode:[I

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->getThemeMode(Landroid/content/Context;)Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    goto :goto_2

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f090481

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f09046e

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 206
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBaseRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f09046f

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    :goto_2
    const p1, 0x7f090596

    .line 216
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColorView:Landroid/view/View;

    .line 217
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getThemeColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeBackground:Landroid/view/View;

    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getThemeColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0901e2

    .line 221
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->editName:Landroid/widget/EditText;

    .line 222
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v3, 0x7f120457

    .line 223
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reportName"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->editName:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0904f5

    .line 227
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    .line 229
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f12049e

    .line 230
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f12037b

    .line 231
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f12036c

    .line 232
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f12036d

    .line 233
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f1204a8

    .line 234
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f1204f5

    .line 235
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f1204f4

    .line 236
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f12039a

    .line 237
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f120448

    .line 238
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f120447

    .line 239
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p0, v4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x1090009

    .line 241
    invoke-virtual {v3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 242
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v3, 0x7f090139

    .line 244
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkShowLDC:Landroid/widget/CheckBox;

    .line 245
    const-string v3, "MyPrefsSettings"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 246
    const-string v5, "whenShowRBC"

    const-string v6, "pioneer"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 248
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    if-ne v3, v6, :cond_8

    .line 249
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 250
    :goto_3
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkShowLDC:Landroid/widget/CheckBox;

    const-string v7, "always"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v3, 0x7f09012d

    .line 252
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkInfirmPioneer:Landroid/widget/CheckBox;

    const v3, 0x7f090135

    .line 253
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->checkRemotheBethelite:Landroid/widget/CheckBox;

    .line 254
    new-instance v5, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;

    invoke-direct {v5, p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0904fa

    .line 295
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    .line 296
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "LLLL"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x5

    .line 299
    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x1

    :goto_6
    const/16 v8, 0xc

    if-gt v7, v8, :cond_b

    .line 301
    invoke-static {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v6, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 302
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 304
    :cond_b
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 306
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerMonths:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 309
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->initProfileSpinners()V

    const p1, 0x7f0903d7

    .line 312
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->monthPickerLayout:Landroid/view/View;

    .line 314
    new-array p1, v8, [I

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->arrMonthProfiles:[I

    .line 316
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result p1

    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->manipulateColor(IF)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux50Color:I

    .line 317
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->aux30Color:I

    .line 319
    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->buildMonthProfileArray(Z)V

    const/4 p1, 0x1

    :goto_7
    if-gt p1, v8, :cond_d

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_8

    :pswitch_0
    const v0, 0x7f090161

    .line 369
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month12:Landroid/widget/ImageView;

    goto/16 :goto_8

    :pswitch_1
    const v0, 0x7f090160

    .line 365
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month11:Landroid/widget/ImageView;

    goto/16 :goto_8

    :pswitch_2
    const v0, 0x7f09015f

    .line 361
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month10:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_3
    const v0, 0x7f090169

    .line 357
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month9:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_4
    const v0, 0x7f090168

    .line 353
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month8:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_5
    const v0, 0x7f090167

    .line 349
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month7:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_6
    const v0, 0x7f090166

    .line 345
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month6:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_7
    const v0, 0x7f090165

    .line 341
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month5:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_8
    const v0, 0x7f090164

    .line 337
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month4:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_9
    const v0, 0x7f090163

    .line 333
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month3:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_a
    const v0, 0x7f090162

    .line 329
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month2:Landroid/widget/ImageView;

    goto :goto_8

    :pswitch_b
    const v0, 0x7f09015e

    .line 325
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->month1:Landroid/widget/ImageView;

    :goto_8
    if-eqz v0, :cond_c

    .line 375
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    .line 379
    :cond_d
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->updateLayouts()V

    .line 380
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->spinnerProfile:Landroid/widget/Spinner;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 396
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->bInitialized:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f1201a5

    const/4 v2, 0x0

    .line 510
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->saveProfile()V

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 526
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 737
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 739
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditorPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;I[I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 712
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 713
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->themeColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 714
    const-string v1, "themeColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->selectedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 716
    const-string v1, "profilePictureUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 718
    :cond_1
    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->bChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method takePicture()V
    .locals 4

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v2, "com.lostpixels.fieldservice.fileprovider"

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 728
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 731
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
