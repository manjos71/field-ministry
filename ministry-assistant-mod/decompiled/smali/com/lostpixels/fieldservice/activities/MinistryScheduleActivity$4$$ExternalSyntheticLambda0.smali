.class public final synthetic Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;


# instance fields
.field public final synthetic f$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onTimeSetComment(Lnet/simonvt/widget/TimePicker;IILjava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$$ExternalSyntheticLambda0;->f$1:Ljava/util/Date;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->$r8$lambda$97da5CtWJZxkaryIJ6McggL-HTk(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;Ljava/util/Date;Lnet/simonvt/widget/TimePicker;IILjava/lang/String;)V

    return-void
.end method
