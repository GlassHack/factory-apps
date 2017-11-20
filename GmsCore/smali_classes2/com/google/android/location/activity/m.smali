.class public final Lcom/google/android/location/activity/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    .line 284
    return-void
.end method

.method private a(I)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    move v2, v1

    move v3, v1

    move v4, v1

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xdbba0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 249
    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 237
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 238
    goto :goto_1

    .line 240
    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    .line 241
    goto :goto_1

    .line 246
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_0
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 256
    :cond_2
    :goto_2
    return p1

    :cond_3
    const/4 p1, -0x1

    goto :goto_2

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/gms/location/ActivityRecognitionResult;JLcom/google/android/gms/location/ActivityRecognitionResult;J)Lcom/google/android/location/activity/n;
    .locals 7

    .prologue
    .line 266
    new-instance v1, Lcom/google/android/location/activity/n;

    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {p3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    add-long/2addr v4, p4

    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/activity/n;-><init>(JJI)V

    return-object v1
.end method

.method private a(IJJJ)Ljava/lang/Boolean;
    .locals 16

    .prologue
    .line 86
    cmp-long v2, p2, p4

    if-lez v2, :cond_6

    .line 91
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/m;->b:Ljava/util/List;

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 125
    :goto_1
    return-object v2

    .line 94
    :cond_0
    const-wide/16 v4, 0x0

    .line 95
    const-wide/16 v2, 0x0

    .line 96
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/activity/m;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v4

    move-wide v4, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/n;

    .line 97
    iget-wide v10, v2, Lcom/google/android/location/activity/n;->a:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 98
    iget-wide v12, v2, Lcom/google/android/location/activity/n;->b:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 99
    cmp-long v3, v12, v10

    if-lez v3, :cond_5

    .line 100
    sub-long v10, v12, v10

    .line 101
    iget v2, v2, Lcom/google/android/location/activity/n;->c:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 102
    add-long/2addr v6, v10

    .line 104
    :cond_1
    add-long v2, v4, v10

    move-wide v4, v6

    :goto_3
    move-wide v6, v4

    move-wide v4, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    sub-long v2, p2, p4

    sub-long/2addr v2, v4

    .line 119
    sub-long v4, p2, p4

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 120
    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 121
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 125
    :cond_3
    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_3

    :cond_6
    move-wide/from16 v14, p4

    move-wide/from16 p4, p2

    move-wide/from16 p2, v14

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 13

    .prologue
    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 184
    const-wide/16 v2, 0x0

    .line 185
    const/4 v1, 0x1

    move v7, v1

    move-wide v11, v2

    move-wide v1, v11

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_2

    .line 186
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 187
    add-int/lit8 v3, v7, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 188
    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x668a0

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 191
    const-wide/32 v4, 0x33450

    invoke-static/range {v0 .. v5}, Lcom/google/android/location/activity/m;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;JLcom/google/android/gms/location/ActivityRecognitionResult;J)Lcom/google/android/location/activity/n;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const-wide/32 v1, 0x33450

    move-object v3, v6

    .line 185
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v0, v3

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    if-nez v4, :cond_1

    .line 205
    invoke-direct {p0, v7}, Lcom/google/android/location/activity/m;->a(I)I

    move-result v4

    .line 206
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v7, v4

    move-object v3, v0

    .line 208
    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 212
    const-wide/16 v8, 0x2

    div-long v8, v4, v8

    .line 213
    sub-long/2addr v4, v8

    .line 214
    invoke-static/range {v0 .. v5}, Lcom/google/android/location/activity/m;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;JLcom/google/android/gms/location/ActivityRecognitionResult;J)Lcom/google/android/location/activity/n;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v1, v8

    move-object v3, v6

    .line 216
    goto :goto_1

    .line 220
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/ActivityRecognitionResult;

    const-wide/32 v4, 0x33450

    invoke-static/range {v0 .. v5}, Lcom/google/android/location/activity/m;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;JLcom/google/android/gms/location/ActivityRecognitionResult;J)Lcom/google/android/location/activity/n;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v3, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(JJJ)Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 141
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/activity/m;->a(IJJJ)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Removed "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 72
    :cond_2
    return-void

    .line 62
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/google/android/location/activity/m;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/location/activity/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/m;->b:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 67
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityHistory"

    const-string v1, "Merged activities:"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/activity/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/n;

    .line 69
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_6

    const-string v4, "ActivityHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MergedActivity [startMillsSinceBoot="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/location/activity/n;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endMillisSinceBoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/location/activity/n;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/google/android/location/activity/n;->a:J

    add-long/2addr v8, v2

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/google/android/location/activity/n;->b:J

    add-long/2addr v8, v2

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activityType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/google/android/location/activity/n;->c:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(JJJ)Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 157
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/activity/m;->a(IJJJ)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJJ)Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 173
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/activity/m;->a(IJJJ)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
