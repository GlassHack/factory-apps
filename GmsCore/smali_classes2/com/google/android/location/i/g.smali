.class public final Lcom/google/android/location/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/location/m/b;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/c;

    .line 60
    new-instance v4, Lcom/google/android/gms/location/DetectedActivity;

    iget v2, v0, Lcom/google/android/location/m/c;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x4

    :goto_2
    iget v0, v0, Lcom/google/android/location/m/c;->b:I

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_2

    :pswitch_5
    const/4 v2, 0x5

    goto :goto_2

    :pswitch_6
    const/4 v2, 0x6

    goto :goto_2

    .line 64
    :cond_1
    iget-wide v4, p0, Lcom/google/android/location/m/b;->b:J

    .line 65
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    iget-wide v2, p0, Lcom/google/android/location/m/b;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/m/b;
    .locals 5

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v2, Lcom/google/android/location/m/b;

    invoke-direct {v2}, Lcom/google/android/location/m/b;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/m/b;->a(J)Lcom/google/android/location/m/b;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/m/b;->b(J)Lcom/google/android/location/m/b;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 36
    new-instance v4, Lcom/google/android/location/m/c;

    invoke-direct {v4}, Lcom/google/android/location/m/c;-><init>()V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x5

    :goto_2
    invoke-virtual {v4, v1}, Lcom/google/android/location/m/c;->a(I)Lcom/google/android/location/m/c;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/location/m/c;->b(I)Lcom/google/android/location/m/c;

    .line 39
    invoke-virtual {v2, v4}, Lcom/google/android/location/m/b;->a(Lcom/google/android/location/m/c;)Lcom/google/android/location/m/b;

    goto :goto_1

    .line 37
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x6

    goto :goto_2

    :pswitch_6
    const/4 v1, 0x7

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 41
    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
