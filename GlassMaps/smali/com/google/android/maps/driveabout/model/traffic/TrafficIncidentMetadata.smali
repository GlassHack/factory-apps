.class public Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final captionText:Ljava/lang/String;

.field private freetext:Ljava/lang/String;

.field private final incidentId:J

.field private infoSheetIconUrl:Ljava/lang/String;

.field private isAlongTheRoute:Z

.field private mapIconUrl:Ljava/lang/String;

.field private provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

.field private type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;ZLcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    .line 32
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 37
    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    .line 38
    iput-object p9, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    if-nez v2, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    check-cast p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 108
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    iget-wide v4, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    .line 109
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    .line 110
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    .line 111
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    .line 112
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 113
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    iget-boolean v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 115
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCaptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    return-object v0
.end method

.method public getFreetext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    return-object v0
.end method

.method public getIncidentId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    return-wide v0
.end method

.method public getInfoSheetIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMapIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    return-object v0
.end method

.method public getType()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    .line 97
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    aput-object v2, v0, v1

    .line 95
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAlongTheRoute()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    return v0
.end method

.method public setFreetext(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setInfoSheetIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMapIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProvider(Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 91
    return-void
.end method

.method public setType(Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "incidentId"

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->incidentId:J

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "captionText"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->captionText:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "freetext"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->freetext:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mapIconUrl"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->mapIconUrl:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "infoSheetIconUrl"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->infoSheetIconUrl:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->type:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "isAlongTheRoute"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->isAlongTheRoute:Z

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Z)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;->provider:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
