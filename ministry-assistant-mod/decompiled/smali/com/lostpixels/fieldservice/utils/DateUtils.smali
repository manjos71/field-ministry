.class public abstract Lcom/lostpixels/fieldservice/utils/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 34
    const-string v32, "d/MMM/yyyy"

    const-string v33, "yyMMdd"

    const-string v1, "yy/M/d"

    const-string v2, "yyyy/M/d"

    const-string v3, "M-d-yy"

    const-string v4, "M-d-yyyy"

    const-string v5, "MMM-d-yy"

    const-string v6, "MMM-d-yyyy"

    const-string v7, "M d yy"

    const-string v8, "M d yyyy"

    const-string v9, "MMM d yy"

    const-string v10, "MMM d yyyy"

    const-string v11, "M/d/yy"

    const-string v12, "M/d/yyyy"

    const-string v13, "M/d yy"

    const-string v14, "M/d yyyy"

    const-string v15, "M/d-yy"

    const-string v16, "M/d-yyyy"

    const-string v17, "MMM/d/yy"

    const-string v18, "MMM/d/yyyy"

    const-string v19, "yyyy-M-d"

    const-string v20, "yy-M-d"

    const-string v21, "d-M-yy"

    const-string v22, "d-M-yyyy"

    const-string v23, "d-MMM-yy"

    const-string v24, "d-MMM-yyyy"

    const-string v25, "d M yy"

    const-string v26, "d M yyyy"

    const-string v27, "d MMM yy"

    const-string v28, "d MMM yyyy"

    const-string v29, "d/M/yy"

    const-string v30, "d/M/yyyy"

    const-string v31, "d/MMM/yy"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v33, "MMM/d/yyyy"

    const-string v34, "yyMMdd"

    const-string v1, "d-M-yy"

    const-string v2, "d-M-yyyy"

    const-string v3, "d-MMM-yy"

    const-string v4, "d-MMM-yyyy"

    const-string v5, "d M yy"

    const-string v6, "d M yyyy"

    const-string v7, "d MMM yy"

    const-string v8, "d MMM yyyy"

    const-string v9, "d/M/yy"

    const-string v10, "d/M/yyyy"

    const-string v11, "d/M yy"

    const-string v12, "d/M yyyy"

    const-string v13, "d/M-yy"

    const-string v14, "d/M-yyyy"

    const-string v15, "d/MMM/yy"

    const-string v16, "d/MMM/yyyy"

    const-string v17, "yy/M/d"

    const-string v18, "yyyy/M/d"

    const-string v19, "yyyy-M-d"

    const-string v20, "yy-M-d"

    const-string v21, "dd-MM-yy"

    const-string v22, "M-d-yy"

    const-string v23, "M-d-yyyy"

    const-string v24, "MMM-d-yy"

    const-string v25, "MMM-d-yyyy"

    const-string v26, "M d yy"

    const-string v27, "M d yyyy"

    const-string v28, "MMM d yy"

    const-string v29, "MMM d yyyy"

    const-string v30, "M/d/yy"

    const-string v31, "M/d/yyyy"

    const-string v32, "MMM/d/yy"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 126
    const-string v5, "us"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/16 v5, 0x21

    goto :goto_1

    :cond_1
    const/16 v5, 0x22

    .line 128
    :goto_1
    new-array v6, v5, [Ljava/text/SimpleDateFormat;

    sput-object v6, Lcom/lostpixels/fieldservice/utils/DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    .line 131
    sget-object v7, Lcom/lostpixels/fieldservice/utils/DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_2

    aget-object v9, v0, v6

    goto :goto_3

    :cond_2
    aget-object v9, v1, v6

    :goto_3
    invoke-direct {v8, v9, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v8, v7, v6

    .line 133
    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->setLenient(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static final areHoursCapped(Lcom/lostpixels/fieldservice/internal/report/Time;I)Z
    .locals 3

    const/16 v0, 0x7e7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p0

    const/16 p1, 0x37

    if-le p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x7e4

    if-lt p1, v0, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p0

    const/16 p1, 0x4b

    if-le p0, p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p0

    const/16 p1, 0x46

    if-le p0, p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static dateToYear(Ljava/util/Date;)I
    .locals 1

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 195
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static final getCapHours(I)I
    .locals 1

    const/16 v0, 0x7e7

    if-lt p0, v0, :cond_0

    const/16 p0, 0x37

    return p0

    :cond_0
    const/16 v0, 0x7e4

    if-lt p0, v0, :cond_1

    const/16 p0, 0x4b

    return p0

    :cond_1
    const/16 p0, 0x46

    return p0
.end method

.method public static getDateDiff(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    .line 160
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 161
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    long-to-double p0, p0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, v0

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static final getMaxBethelHours(I)I
    .locals 1

    const/16 v0, 0x7e7

    if-lt p0, v0, :cond_0

    const/16 p0, 0x32

    return p0

    :cond_0
    const/16 v0, 0x7e4

    if-lt p0, v0, :cond_1

    const/16 p0, 0x46

    return p0

    :cond_1
    const/16 p0, 0x41

    return p0
.end method

.method public static getRemaindingMinutesFromQuarters(I)I
    .locals 0

    .line 189
    rem-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static isBeforeCurrentMonth(Ljava/util/Date;)Z
    .locals 4

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 247
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 248
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static isLeapYear(I)Z
    .locals 2

    .line 228
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    .line 231
    rem-int/lit8 v0, p0, 0x64

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 235
    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 175
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 177
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 145
    :goto_0
    sget-object v1, Lcom/lostpixels/fieldservice/utils/DateUtils;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 147
    :try_start_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static roundToQuarters(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v0

    .line 183
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result p0

    .line 184
    div-int/lit8 p0, p0, 0xf

    mul-int/lit8 p0, p0, 0xf

    .line 185
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v1, v0, p0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    return-object v1
.end method
