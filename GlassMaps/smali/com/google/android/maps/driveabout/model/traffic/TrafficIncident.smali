.class public final Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    .line 107
    return-void
.end method

.method private a()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    if-nez p0, :cond_1

    .line 251
    const/4 p0, 0x0

    .line 253
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->valueOf(I)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/google/android/maps/driveabout/model/ab;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    const/4 v2, 0x2

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 125
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    return v0
.end method

.method private l()Z
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0xa

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 188
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->valueOf(I)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/maps/driveabout/model/ac;
    .locals 14

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 206
    const/4 v0, 0x1

    new-array v12, v0, [Lcom/google/android/maps/driveabout/model/a;

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/model/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/a;-><init>(Lcom/google/android/maps/driveabout/model/ab;IFLcom/google/android/maps/driveabout/model/ab;FFF)V

    aput-object v0, v12, v8

    .line 210
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    new-instance v2, Lcom/google/android/maps/driveabout/model/t;

    const/4 v3, 0x1

    .line 214
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/maps/driveabout/model/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;F)V

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v13, Lcom/google/android/maps/driveabout/model/s;

    sget-object v2, Lcom/google/android/maps/driveabout/model/b;->b:Lcom/google/android/maps/driveabout/model/b;

    invoke-direct {v13, v0, v2}, Lcom/google/android/maps/driveabout/model/s;-><init>(Ljava/util/List;Lcom/google/android/maps/driveabout/model/b;)V

    .line 224
    new-instance v2, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 225
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a()J

    move-result-wide v3

    .line 226
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->f()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->g()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->d()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->e()Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->b()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    move-result-object v9

    .line 232
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->m()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    move-result-object v11

    move v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;ZLcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;)V

    .line 233
    const/16 v0, 0x810

    .line 234
    invoke-static {}, Lcom/google/android/maps/driveabout/model/ac;->h()Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v12}, Lcom/google/android/maps/driveabout/model/ad;->a([Lcom/google/android/maps/driveabout/model/a;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v13}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/s;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/ad;->e(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ad;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ad;->a()Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
