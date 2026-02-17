.class Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/16 p1, 0x8

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 258
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonthPickerLayout(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetcheckShowLDC(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 260
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetcheckShowLDC(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 264
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetarrMonthProfiles(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)[I

    move-result-object p2

    array-length v2, p2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ge v1, v2, :cond_1

    aget v5, p2, v1

    if-ne v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 272
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p2

    .line 273
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetarrMonthProfiles(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)[I

    move-result-object v1

    sub-int/2addr p2, v0

    aput v4, v1, p2

    .line 276
    :goto_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth1(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2, v1, v0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 277
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth2(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2, v1, v3, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 278
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth3(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2, v1, v4, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 279
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth4(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p2, v1, v2, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 280
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth5(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p2, v1, v2, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 281
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth6(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p2, v1, v2, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 282
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth7(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p2, v1, v2, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 283
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth8(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2, v1, p1, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 284
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth9(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v1, 0x9

    invoke-static {p1, p2, v1, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 285
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth10(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {p1, p2, v1, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 286
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth11(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v1, 0xb

    invoke-static {p1, p2, v1, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    .line 287
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonth12(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v1, 0xc

    invoke-static {p1, p2, v1, v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateMonthImage(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Landroid/widget/ImageView;IZ)V

    return-void

    .line 289
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetmonthPickerLayout(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetcheckShowLDC(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
