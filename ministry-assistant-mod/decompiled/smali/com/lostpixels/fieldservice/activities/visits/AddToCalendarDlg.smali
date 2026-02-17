.class public Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# static fields
.field public static mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# instance fields
.field private mCalSpinner:Landroid/widget/Spinner;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mDurationSpinner:Landroid/widget/Spinner;

.field private mReminderSpinner:Landroid/widget/Spinner;

.field private final mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field marrCalIDs:Ljava/util/ArrayList;

.field private final marrDurationMinutes:[I

.field private final marrReminderMinutes:[I

.field private mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private mckAddToCalendar:Landroid/widget/CheckBox;

.field private medtDesc:Landroid/widget/EditText;

.field private medtName:Landroid/widget/EditText;

.field private medtWhere:Landroid/widget/EditText;

.field private mnCalendars:I

.field private mstartTime:Ljava/util/Date;


# direct methods
.method static bridge synthetic -$$Nest$fgetmbtnDate(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbtnTime(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmnCalendars(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mnCalendars:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmstartTime(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmstartTime(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    const/16 v0, 0xe

    .line 70
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/16 v0, 0xa

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    .line 84
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 97
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xa
        0xf
        0x14
        0x1e
        0x2d
        0x3c
        0x5a
        0x78
        0xb4
        0x2d0
        0x5a0
        0xb40
        0x2760
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0x168
        0x2d0
    .end array-data
.end method

.method private addToCalendarICS()V
    .locals 12

    const/4 v0, 0x0

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mReminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 547
    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mDurationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    aget v3, v3, v4

    .line 550
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 551
    const-string v5, "calendar_id"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrCalIDs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v5, "title"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v5, "description"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtDesc:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v5, "eventLocation"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtWhere:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v5, "dtstart"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v5, "dtend"

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    int-to-long v8, v3

    const-wide/32 v10, 0xea60

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 558
    const-string v5, "eventTimezone"

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v3, "hasAlarm"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 563
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mReminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    aget v1, v1, v5

    int-to-long v5, v1

    .line 570
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 571
    const-string v7, "minutes"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 572
    const-string v5, "event_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    const-string v3, "method"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    const v1, 0x7f12013a

    .line 577
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 544
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No calendar to add to!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 580
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 581
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 582
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    const-string v3, "Exception!\n"

    invoke-static {v3, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 586
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cause:\n"

    invoke-static {v3, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 588
    const-string v2, "Message:\n"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const v1, 0x7f1200ba

    .line 590
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private setupDurationSpinner()V
    .locals 10

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f120180

    .line 458
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120412

    .line 459
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120418

    .line 460
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120456

    .line 462
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v1, v7, v5

    const-string v4, "%d %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v8

    aput-object v1, v9, v5

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    const/4 v9, 0x3

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v8

    aput-object v1, v9, v5

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrDurationMinutes:[I

    const/4 v9, 0x4

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v8

    aput-object v1, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    const-string v2, "1 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    const-string v2, "2 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    const-string v2, "3 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    const-string v2, "6 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    const-string v2, "12 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 478
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 479
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mDurationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setupReminderSpinner()V
    .locals 11

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f120180

    .line 420
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120412

    .line 421
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const v2, 0x7f120418

    .line 422
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120150

    .line 423
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1201d9

    .line 424
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12018b

    .line 426
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    aput-object v1, v8, v6

    const-string v5, "%d %s"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v1, v10, v6

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v10, 0x3

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v1, v10, v6

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v10, 0x4

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v1, v10, v6

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v10, 0x5

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v1, v10, v6

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v10, 0x6

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v1, v10, v6

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrReminderMinutes:[I

    const/4 v10, 0x7

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v9

    aput-object v1, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v9

    const-string v5, "2 %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v9

    const-string v7, "3 %s"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v9

    const-string v7, "12 %s"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v9

    const-string v2, "24 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v3, v1, v9

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v9

    const-string v2, "1 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 448
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 449
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mReminderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method addToCalendarFunc()V
    .locals 3

    const/4 v0, -0x1

    .line 330
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 332
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mckAddToCalendar:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->addToCalendarICS()V

    .line 336
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastCalendar"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "addToCalendar"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mckAddToCalendar:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setTimeForRV(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f1200d2

    const/4 v1, 0x0

    .line 344
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 136
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 138
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f0c0032

    .line 143
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0904f0

    .line 145
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0904f6

    .line 146
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mReminderSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0904f3

    .line 147
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mDurationSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0901f9

    .line 148
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtName:Landroid/widget/EditText;

    const v0, 0x7f0901ef

    .line 149
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtDesc:Landroid/widget/EditText;

    const v0, 0x7f090200

    .line 150
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtWhere:Landroid/widget/EditText;

    const v0, 0x7f09015a

    .line 151
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mckAddToCalendar:Landroid/widget/CheckBox;

    const v0, 0x7f0900e7

    .line 152
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0902e2

    .line 153
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mckAddToCalendar:Landroid/widget/CheckBox;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;

    invoke-direct {v3, p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtName:Landroid/widget/EditText;

    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtName:Landroid/widget/EditText;

    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->medtWhere:Landroid/widget/EditText;

    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900e1

    .line 206
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 207
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e6

    .line 214
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 215
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$6;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ec

    .line 222
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 223
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$7;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090105

    .line 230
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 231
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$8;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 239
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 240
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    const-string v3, "DateTime"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    goto/16 :goto_4

    .line 243
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 244
    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SetNewDate"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 248
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x7

    if-eqz v3, :cond_5

    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 252
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v3

    .line 255
    sget-object v5, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getDateDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x7

    :goto_2
    const/16 v5, 0x15

    if-gt v3, v5, :cond_6

    if-lt v3, v0, :cond_6

    const/4 v5, 0x5

    .line 258
    invoke-virtual {p1, v5, v3}, Ljava/util/Calendar;->add(II)V

    :cond_6
    const/16 v3, 0xb

    .line 259
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 260
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x6

    .line 263
    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    const/4 v7, -0x1

    .line 264
    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 265
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 267
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 268
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {p1, v8, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 272
    :cond_7
    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 276
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    .line 279
    :goto_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mbtnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 282
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlgPermissionsDispatcher;->setupCalendarSpinnerWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V

    .line 284
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->setupReminderSpinner()V

    .line 285
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->setupDurationSpinner()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 295
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlgPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;I[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    const-string v1, "DateTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "DateTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setupCalendarSpinner()V
    .locals 11

    .line 354
    const-string v0, "_id"

    const-string v1, "calendar_displayName"

    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v4

    .line 360
    const-string v5, "(calendar_access_level =  ? OR calendar_access_level =  ? OR calendar_access_level =  ? OR calendar_access_level =  ?)"

    const/16 v2, 0x2bc

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x258

    .line 367
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1f4

    .line 368
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x320

    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v2, v3, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 372
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 373
    const-string v4, "lastCalendar"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrCalIDs:Ljava/util/ArrayList;

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 380
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 381
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 383
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 384
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->marrCalIDs:Ljava/util/ArrayList;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 393
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 397
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 400
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eq v5, v6, :cond_4

    .line 402
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mCalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5, v7}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 404
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mnCalendars:I

    .line 407
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mckAddToCalendar:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "addToCalendar"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 409
    :goto_2
    const-string v1, "setupCalendarSpinner"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showTimeDialog(I)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 599
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    move-result-object p1

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "timepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 603
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 604
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mstartTime:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 606
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 607
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 608
    const-string v3, "checkFirstDayOfWeek"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 609
    :goto_0
    invoke-virtual {p1, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v0, 0x7c1

    const/16 v1, 0x7ec

    .line 611
    invoke-virtual {p1, v0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "datepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
