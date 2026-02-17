.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PersonColumnInfo"
.end annotation


# instance fields
.field addressColKey:J

.field ageColKey:J

.field apartmentColKey:J

.field bestVisitTimeColKey:J

.field cityColKey:J

.field countryColKey:J

.field customTagsColKey:J

.field dateColKey:J

.field emailColKey:J

.field generalInfoColKey:J

.field homePhoneColKey:J

.field idColKey:J

.field isHiddenColKey:J

.field isInterestedColKey:J

.field isPinnedToFrontColKey:J

.field languagesColKey:J

.field lastTriedTimeColKey:J

.field latitudeColKey:J

.field longitudeColKey:J

.field magazineListColKey:J

.field motherTongueColKey:J

.field nameColKey:J

.field personTypeColKey:J

.field phoneColKey:J

.field postalCodeColKey:J

.field priorityColKey:J

.field studyPublicationColKey:J

.field suburbColKey:J

.field timeForRVColKey:J

.field typeColKey:J

.field videoPhoneColKey:J

.field visitInfoListColKey:J

.field whereToContinueColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x21

    .line 81
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 82
    const-string v0, "Person"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 83
    const-string v0, "visitInfoList"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->visitInfoListColKey:J

    .line 84
    const-string v0, "type"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->typeColKey:J

    .line 85
    const-string v0, "address"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->addressColKey:J

    .line 86
    const-string v0, "suburb"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->suburbColKey:J

    .line 87
    const-string v0, "name"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->nameColKey:J

    .line 88
    const-string v0, "email"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->emailColKey:J

    .line 89
    const-string v0, "phone"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->phoneColKey:J

    .line 90
    const-string v0, "homePhone"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->homePhoneColKey:J

    .line 91
    const-string v0, "videoPhone"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->videoPhoneColKey:J

    .line 92
    const-string v0, "generalInfo"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->generalInfoColKey:J

    .line 93
    const-string v0, "city"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->cityColKey:J

    .line 94
    const-string v0, "studyPublication"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->studyPublicationColKey:J

    .line 95
    const-string v0, "whereToContinue"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->whereToContinueColKey:J

    .line 96
    const-string v0, "postalCode"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->postalCodeColKey:J

    .line 97
    const-string v0, "apartment"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->apartmentColKey:J

    .line 98
    const-string v0, "age"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->ageColKey:J

    .line 99
    const-string v0, "motherTongue"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->motherTongueColKey:J

    .line 100
    const-string v0, "languages"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->languagesColKey:J

    .line 101
    const-string v0, "country"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->countryColKey:J

    .line 102
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->idColKey:J

    .line 103
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->dateColKey:J

    .line 104
    const-string v0, "timeForRV"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->timeForRVColKey:J

    .line 105
    const-string v0, "latitude"

    const-string v1, "latitude"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->latitudeColKey:J

    .line 106
    const-string v0, "longitude"

    const-string v1, "longitude"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->longitudeColKey:J

    .line 107
    const-string v0, "personType"

    const-string v1, "personType"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->personTypeColKey:J

    .line 108
    const-string v0, "magazineList"

    const-string v1, "magazineList"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->magazineListColKey:J

    .line 109
    const-string v0, "priority"

    const-string v1, "priority"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->priorityColKey:J

    .line 110
    const-string v0, "bestVisitTime"

    const-string v1, "bestVisitTime"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->bestVisitTimeColKey:J

    .line 111
    const-string v0, "customTags"

    const-string v1, "customTags"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->customTagsColKey:J

    .line 112
    const-string v0, "isInterested"

    const-string v1, "isInterested"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isInterestedColKey:J

    .line 113
    const-string v0, "isHidden"

    const-string v1, "isHidden"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isHiddenColKey:J

    .line 114
    const-string v0, "isPinnedToFront"

    const-string v1, "isPinnedToFront"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isPinnedToFrontColKey:J

    .line 115
    const-string v0, "lastTriedTime"

    const-string v1, "lastTriedTime"

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->lastTriedTimeColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 130
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;

    .line 131
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;

    .line 132
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->visitInfoListColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->visitInfoListColKey:J

    .line 133
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->typeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->typeColKey:J

    .line 134
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->addressColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->addressColKey:J

    .line 135
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->suburbColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->suburbColKey:J

    .line 136
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->nameColKey:J

    .line 137
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->emailColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->emailColKey:J

    .line 138
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->phoneColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->phoneColKey:J

    .line 139
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->homePhoneColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->homePhoneColKey:J

    .line 140
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->videoPhoneColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->videoPhoneColKey:J

    .line 141
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->generalInfoColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->generalInfoColKey:J

    .line 142
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->cityColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->cityColKey:J

    .line 143
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->studyPublicationColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->studyPublicationColKey:J

    .line 144
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->whereToContinueColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->whereToContinueColKey:J

    .line 145
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->postalCodeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->postalCodeColKey:J

    .line 146
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->apartmentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->apartmentColKey:J

    .line 147
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->ageColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->ageColKey:J

    .line 148
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->motherTongueColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->motherTongueColKey:J

    .line 149
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->languagesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->languagesColKey:J

    .line 150
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->countryColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->countryColKey:J

    .line 151
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->idColKey:J

    .line 152
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->dateColKey:J

    .line 153
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->timeForRVColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->timeForRVColKey:J

    .line 154
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->latitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->latitudeColKey:J

    .line 155
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->longitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->longitudeColKey:J

    .line 156
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->personTypeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->personTypeColKey:J

    .line 157
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->magazineListColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->magazineListColKey:J

    .line 158
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->priorityColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->priorityColKey:J

    .line 159
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->bestVisitTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->bestVisitTimeColKey:J

    .line 160
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->customTagsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->customTagsColKey:J

    .line 161
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isInterestedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isInterestedColKey:J

    .line 162
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isHiddenColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isHiddenColKey:J

    .line 163
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isPinnedToFrontColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->isPinnedToFrontColKey:J

    .line 164
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->lastTriedTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_PersonRealmProxy$PersonColumnInfo;->lastTriedTimeColKey:J

    return-void
.end method
