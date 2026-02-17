.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->removeSchool(I)V

    return-void
.end method
