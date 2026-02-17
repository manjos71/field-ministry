.class public Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mbChecked:Z

.field private final visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 11
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->mbChecked:Z

    return-void
.end method


# virtual methods
.method public getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->mbChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->mbChecked:Z

    return-void
.end method
