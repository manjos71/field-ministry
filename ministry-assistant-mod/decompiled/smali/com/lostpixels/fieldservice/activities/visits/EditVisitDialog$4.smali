.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V
    .locals 1

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    .line 178
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 179
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 180
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fputmDate(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/util/Date;)V

    .line 181
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$msetTimeButton(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V

    return-void
.end method
