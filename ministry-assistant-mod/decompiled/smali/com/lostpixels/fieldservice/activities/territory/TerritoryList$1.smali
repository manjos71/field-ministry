.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/util/Calendar;)V

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 311
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 312
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 313
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xf

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 314
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateFilterInfo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 315
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 316
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_1
    return-void
.end method
