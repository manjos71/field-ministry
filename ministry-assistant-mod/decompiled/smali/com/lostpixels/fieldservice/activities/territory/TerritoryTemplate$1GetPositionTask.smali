.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getCurrentLocations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPositionTask"
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field private strError:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

.field final synthetic val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 877
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 871
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 925
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Z)V

    .line 927
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 928
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 929
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-wide/16 v2, 0x3e8

    .line 931
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 935
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/Position;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/utils/map/Position;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :try_start_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    .line 940
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/lostpixels/fieldservice/utils/map/Position;->dLong:D

    .line 941
    iget-wide v2, p1, Lcom/lostpixels/fieldservice/utils/map/Position;->dLat:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    cmpl-double v2, v0, v4

    if-eqz v2, :cond_3

    .line 943
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$mgetLocations(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/utils/map/Position;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 946
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$mgetAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 948
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmLastAddressTime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/Date;)V

    .line 949
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 952
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 955
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const v1, 0x7f1200bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 942
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const v1, 0x7f1200d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const v1, 0x7f1200cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 957
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->strError:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 962
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->val$myLocation:Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->stop()V

    .line 918
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 871
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 889
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 890
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :catch_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmbHasLocation(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Z

    move-result p1

    const v0, 0x7f1200c2

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 898
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->strError:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 899
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 900
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 902
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 904
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 905
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 906
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 908
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$mdisplayStreetList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const v2, 0x7f1203fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$1GetPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
