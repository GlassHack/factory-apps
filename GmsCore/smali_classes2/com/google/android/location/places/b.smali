.class public final Lcom/google/android/location/places/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field public b:Lcom/google/android/location/places/ax;

.field public c:Lcom/google/android/location/o/af;

.field public final d:Landroid/content/Context;

.field private e:Lcom/google/android/location/places/p;

.field private final f:Lcom/google/android/location/d/j;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/p;Lcom/google/android/location/places/ax;Lcom/google/android/location/o/af;Lcom/google/android/location/d/j;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    .line 115
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/location/places/b;->a:Landroid/os/Handler;

    .line 116
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/p;

    iput-object v0, p0, Lcom/google/android/location/places/b;->e:Lcom/google/android/location/places/p;

    .line 117
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ax;

    iput-object v0, p0, Lcom/google/android/location/places/b;->b:Lcom/google/android/location/places/ax;

    .line 118
    invoke-static {p5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/o/af;

    iput-object v0, p0, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    .line 119
    invoke-static {p6}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/j;

    iput-object v0, p0, Lcom/google/android/location/places/b;->f:Lcom/google/android/location/d/j;

    .line 120
    return-void
.end method

.method static a(Lcom/google/j/b/o;)Lcom/google/android/location/m/a/af;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    .line 601
    iget v0, p0, Lcom/google/j/b/o;->d:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 602
    const-string v0, "Places"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLS returned HTTP response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/j/b/o;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 619
    :goto_0
    return-object v0

    .line 610
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 611
    new-instance v2, Lcom/google/android/location/m/a/af;

    invoke-direct {v2}, Lcom/google/android/location/m/a/af;-><init>()V

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/af;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    const-string v2, "Places"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    const-string v2, "Places"

    const-string v3, "could not parse response"

    invoke-static {v2, v3, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    .line 616
    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/m/a/af;)Lcom/google/android/location/m/a/be;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x5

    .line 624
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    const-string v1, "Places"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RPC failed with status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-object v0

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 634
    const-string v1, "Places"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const-string v1, "Places"

    const-string v2, "ReplyElement with zero length"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    aget-object v1, v1, v3

    .line 641
    iget-object v2, v1, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 642
    const-string v2, "Places"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const-string v2, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GLS failed with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_3
    iget-object v2, v1, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-nez v2, :cond_4

    .line 649
    const-string v1, "Places"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    const-string v1, "Places"

    const-string v2, "no place reply in ReplyElement"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_4
    iget-object v0, v1, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/m/a/bd;[Lcom/google/android/gms/location/places/internal/PlaceImpl;Ljava/util/Locale;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x3

    .line 700
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-nez v0, :cond_1

    .line 701
    const-string v0, "Places"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "Places"

    const-string v2, "gPlaceQueryResult.placeList is null"

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 748
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    .line 709
    iget-object v0, v4, Lcom/google/android/location/m/a/aw;->a:[I

    array-length v5, v0

    .line 710
    iget-object v0, v4, Lcom/google/android/location/m/a/aw;->b:[I

    array-length v6, v0

    .line 711
    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_3

    .line 712
    const-string v0, "Places"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    const-string v0, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid numProbabilities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 715
    goto :goto_0

    .line 718
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_b

    .line 720
    iget-object v0, v4, Lcom/google/android/location/m/a/aw;->a:[I

    aget v0, v0, v3

    .line 721
    array-length v7, p1

    if-lt v0, v7, :cond_5

    .line 722
    const-string v2, "Places"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 723
    const-string v2, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid placeIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 725
    goto :goto_0

    .line 727
    :cond_5
    aget-object v7, p1, v0

    if-nez v7, :cond_7

    .line 728
    const-string v2, "Places"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 729
    const-string v2, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid place at index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    .line 731
    goto :goto_0

    .line 734
    :cond_7
    aget-object v7, p1, v0

    .line 735
    invoke-virtual {v7}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 736
    const-string v0, "Places"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 737
    const-string v0, "Places"

    const-string v2, "place is using a different locale than the device"

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v0, v1

    .line 739
    goto/16 :goto_0

    .line 742
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v8, v5

    div-float/2addr v0, v8

    .line 743
    if-ge v3, v6, :cond_a

    .line 744
    iget-object v0, v4, Lcom/google/android/location/m/a/aw;->b:[I

    aget v0, v0, v3

    int-to-float v0, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    .line 746
    :cond_a
    invoke-static {v7, v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->a(Lcom/google/android/gms/location/places/internal/PlaceImpl;F)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    .line 748
    goto/16 :goto_0
.end method

.method private static a(ILjava/util/List;Lcom/google/android/location/places/a;)V
    .locals 0

    .prologue
    .line 596
    invoke-interface {p2, p0, p1}, Lcom/google/android/location/places/a;->a(ILjava/util/List;)V

    .line 597
    return-void
.end method

.method static a(ILjava/util/List;Lcom/google/android/location/places/aa;)V
    .locals 0

    .prologue
    .line 455
    invoke-interface {p2, p0, p1}, Lcom/google/android/location/places/aa;->a(ILjava/util/List;)V

    .line 456
    return-void
.end method

.method private static a(JJLcom/google/android/location/places/l;)V
    .locals 6

    .prologue
    .line 756
    sub-long v0, p0, p2

    .line 757
    sget-object v2, Lcom/google/android/location/places/d;->a:[I

    invoke-virtual {p4}, Lcom/google/android/location/places/l;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 772
    :goto_0
    :pswitch_0
    return-void

    .line 759
    :pswitch_1
    invoke-static {v0, v1}, Lcom/google/android/location/places/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_instrumentation"

    const-string v4, "search_latency_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/location/places/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 762
    :pswitch_2
    invoke-static {v0, v1}, Lcom/google/android/location/places/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_instrumentation"

    const-string v4, "get_by_lat_lng_latency_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/location/places/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 765
    :pswitch_3
    invoke-static {v0, v1}, Lcom/google/android/location/places/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_instrumentation"

    const-string v4, "get_place_by_id_latency_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/location/places/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 768
    :pswitch_4
    invoke-static {v0, v1}, Lcom/google/android/location/places/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_instrumentation"

    const-string v4, "add_a_place_latency_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/location/places/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 771
    :pswitch_5
    invoke-static {v0, v1}, Lcom/google/android/location/places/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_instrumentation"

    const-string v4, "autocomplete_prediction_latency_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/location/places/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lcom/google/android/location/places/a;)V
    .locals 2

    .prologue
    .line 588
    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/location/places/b;->a(ILjava/util/List;Lcom/google/android/location/places/a;)V

    .line 590
    return-void
.end method

.method private static a(Lcom/google/android/location/places/aa;)V
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/location/places/b;->a(ILjava/util/List;Lcom/google/android/location/places/aa;)V

    .line 449
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V
    .locals 10

    .prologue
    const-wide v8, 0x416312d000000000L    # 1.0E7

    .line 200
    iget-object v0, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/m/a/bh;

    invoke-direct {v1}, Lcom/google/android/location/m/a/bh;-><init>()V

    new-instance v2, Landroid/location/Location;

    const-string v3, "places api"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    new-instance v3, Lcom/google/android/location/m/a/aj;

    invoke-direct {v3}, Lcom/google/android/location/m/a/aj;-><init>()V

    new-instance v4, Lcom/google/android/location/m/a/ae;

    invoke-direct {v4}, Lcom/google/android/location/m/a/ae;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/m/a/ae;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/m/a/ae;->b:Ljava/lang/Integer;

    iput-object v4, v3, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {v2}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {v2}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    :cond_3
    iput-object v3, v1, Lcom/google/android/location/m/a/bh;->a:Lcom/google/android/location/m/a/aj;

    iput-object v1, v0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    .line 202
    invoke-static {p3, v0}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/google/android/location/places/i;

    sget-object v2, Lcom/google/android/location/places/l;->d:Lcom/google/android/location/places/l;

    invoke-direct {v1, p0, p3, p4, v2}, Lcom/google/android/location/places/i;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;Lcom/google/android/location/places/l;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    .line 206
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/m/a/bk;

    invoke-direct {v1}, Lcom/google/android/location/m/a/bk;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/location/m/a/bk;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    new-instance v2, Lcom/google/android/location/m/a/bq;

    invoke-direct {v2}, Lcom/google/android/location/m/a/bq;-><init>()V

    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v3}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v3}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    iput-object v2, v1, Lcom/google/android/location/m/a/bk;->a:Lcom/google/android/location/m/a/bq;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p3, v1, Lcom/google/android/location/m/a/bk;->c:Ljava/lang/String;

    :cond_1
    iput-object v1, v0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    .line 137
    invoke-static {p5, v0}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/google/android/location/places/i;

    sget-object v2, Lcom/google/android/location/places/l;->a:Lcom/google/android/location/places/l;

    invoke-direct {v1, p0, p5, p6, v2}, Lcom/google/android/location/places/i;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;Lcom/google/android/location/places/l;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    .line 141
    return-void
.end method

.method public final a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V
    .locals 3

    .prologue
    .line 343
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v0, Lcom/google/j/b/j;

    const-string v1, "g:loc/qp"

    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/j/b/j;-><init>(Ljava/lang/String;[B)V

    .line 348
    invoke-virtual {v0, p2}, Lcom/google/j/b/m;->a(Lcom/google/j/b/n;)V

    .line 349
    iget-object v1, p0, Lcom/google/android/location/places/b;->f:Lcom/google/android/location/d/j;

    invoke-virtual {v1, v0}, Lcom/google/android/location/d/j;->a(Lcom/google/j/b/m;)V

    .line 350
    return-void
.end method

.method public final a(Lcom/google/android/location/places/e;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v4

    .line 533
    iget-object v0, p1, Lcom/google/android/location/places/e;->e:Lcom/google/android/location/places/l;

    .line 535
    iget-object v6, p1, Lcom/google/android/location/places/e;->b:Lcom/google/android/location/places/a;

    .line 536
    iget-object v1, p1, Lcom/google/android/location/places/e;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 537
    invoke-static {v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/a;)V

    .line 584
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p1, Lcom/google/android/location/places/e;->d:Lcom/google/j/b/o;

    .line 542
    invoke-static {v1}, Lcom/google/android/location/places/b;->a(Lcom/google/j/b/o;)Lcom/google/android/location/m/a/af;

    move-result-object v1

    .line 543
    if-nez v1, :cond_1

    .line 544
    invoke-static {v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/a;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v2, v1, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 550
    iget-object v2, v1, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    .line 551
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 552
    iget-object v7, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    :cond_2
    invoke-static {v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/af;)Lcom/google/android/location/m/a/be;

    move-result-object v1

    .line 559
    if-nez v1, :cond_3

    .line 560
    invoke-static {v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/a;)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object v1, v1, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    aget-object v7, v1, v3

    .line 565
    if-nez v7, :cond_4

    .line 566
    invoke-static {v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/a;)V

    goto :goto_0

    .line 570
    :cond_4
    iget-object v1, v7, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 572
    invoke-static {v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/a;)V

    goto :goto_0

    .line 576
    :cond_5
    iget-wide v8, p1, Lcom/google/android/location/places/e;->g:J

    invoke-static {v4, v5, v8, v9, v0}, Lcom/google/android/location/places/b;->a(JJLcom/google/android/location/places/l;)V

    .line 578
    iget-object v0, p1, Lcom/google/android/location/places/e;->f:Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v8, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_7

    iget-object v9, v7, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/bl;)Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v9

    if-nez v9, :cond_6

    const/4 v0, 0x0

    .line 583
    :goto_2
    invoke-static {v3, v0, v6}, Lcom/google/android/location/places/b;->a(ILjava/util/List;Lcom/google/android/location/places/a;)V

    goto :goto_0

    .line 578
    :cond_6
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    instance-of v2, v0, Lcom/google/android/location/places/ba;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/google/android/location/places/ba;

    iget-object v2, p0, Lcom/google/android/location/places/b;->b:Lcom/google/android/location/places/ax;

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/location/places/ax;->a(Lcom/google/android/location/places/ba;Ljava/util/List;J)V

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/android/location/places/i;)V
    .locals 14

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v6

    .line 462
    iget-object v5, p1, Lcom/google/android/location/places/i;->e:Lcom/google/android/location/places/l;

    .line 464
    iget-object v8, p1, Lcom/google/android/location/places/i;->b:Lcom/google/android/location/places/aa;

    .line 465
    iget-object v0, p1, Lcom/google/android/location/places/i;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 466
    invoke-static {v8}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/aa;)V

    .line 526
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p1, Lcom/google/android/location/places/i;->d:Lcom/google/j/b/o;

    .line 471
    invoke-static {v0}, Lcom/google/android/location/places/b;->a(Lcom/google/j/b/o;)Lcom/google/android/location/m/a/af;

    move-result-object v0

    .line 472
    if-nez v0, :cond_1

    .line 473
    invoke-static {v8}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/aa;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, v0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, v0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    .line 480
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    iget-object v2, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    :cond_2
    invoke-static {v0}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/af;)Lcom/google/android/location/m/a/be;

    move-result-object v9

    .line 486
    if-nez v9, :cond_3

    .line 487
    invoke-static {v8}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/aa;)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v0, v9, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 495
    :cond_4
    if-nez v0, :cond_9

    .line 496
    invoke-static {v8}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/aa;)V

    goto :goto_0

    .line 491
    :cond_5
    iget-object v0, v9, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/location/places/internal/PlaceImpl;

    const/4 v2, 0x0

    iget-object v10, v9, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v11, v10

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v11, :cond_4

    aget-object v4, v10, v2

    iget-object v1, v4, Lcom/google/android/location/m/a/ap;->a:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/location/places/b;->e:Lcom/google/android/location/places/p;

    invoke-virtual {v12, v1, v6, v7}, Lcom/google/android/location/places/p;->a(Ljava/lang/String;J)Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v4, Lcom/google/android/location/m/a/ap;->l:Ljava/lang/Long;

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-static {v4}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/ap;)Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/google/android/location/places/b;->e:Lcom/google/android/location/places/p;

    invoke-virtual {v4, v1, v6, v7}, Lcom/google/android/location/places/p;->a(Lcom/google/android/gms/location/places/internal/PlaceImpl;J)V

    :cond_7
    if-nez v1, :cond_8

    const-string v4, "Places"

    const/4 v12, 0x5

    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Places"

    const-string v12, "could not parse place in reply"

    invoke-static {v4, v12}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v4, v3, 0x1

    aput-object v1, v0, v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v4

    goto :goto_1

    .line 500
    :cond_9
    iget-wide v2, p1, Lcom/google/android/location/places/i;->f:J

    invoke-static {v6, v7, v2, v3, v5}, Lcom/google/android/location/places/b;->a(JJLcom/google/android/location/places/l;)V

    .line 502
    iget-object v1, v9, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 504
    sget-object v2, Lcom/google/android/location/places/d;->a:[I

    invoke-virtual {v5}, Lcom/google/android/location/places/l;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 519
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported requestType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :pswitch_0
    new-instance v2, Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/location/places/i;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    iget-object v3, v3, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/bd;[Lcom/google/android/gms/location/places/internal/PlaceImpl;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_a

    .line 522
    const/4 v1, 0x0

    invoke-static {v1, v0, v8}, Lcom/google/android/location/places/b;->a(ILjava/util/List;Lcom/google/android/location/places/aa;)V

    goto/16 :goto_0

    .line 524
    :cond_a
    invoke-static {v8}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/aa;)V

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lcom/google/android/location/places/b;->e:Lcom/google/android/location/places/p;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/location/places/p;->a(Ljava/lang/String;J)Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    .line 218
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/m/a/av;

    invoke-direct {v1}, Lcom/google/android/location/m/a/av;-><init>()V

    iput-object p1, v1, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    .line 223
    invoke-static {p2, v0}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/google/android/location/places/i;

    sget-object v2, Lcom/google/android/location/places/l;->e:Lcom/google/android/location/places/l;

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/google/android/location/places/i;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;Lcom/google/android/location/places/l;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/PlaceLikelihood;->a(Lcom/google/android/gms/location/places/internal/PlaceImpl;F)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    .line 229
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceLikelihood;

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Lcom/google/android/location/places/aa;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/location/places/h;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p3}, Lcom/google/android/location/places/h;-><init>(Lcom/google/android/location/places/b;ILcom/google/android/location/places/aa;)V

    .line 250
    new-instance v1, Lcom/google/android/location/places/c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/location/places/c;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/location/places/h;)V

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/location/places/b;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/j/b/n;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v3, Lcom/google/android/location/m/a/ai;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ai;-><init>()V

    new-instance v0, Lcom/google/android/location/m/a/bw;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bw;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    new-array v1, v6, [Lcom/google/android/location/m/a/bw;

    aput-object v0, v1, v2

    iput-object v1, v3, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    new-instance v0, Lcom/google/android/location/m/a/ch;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ch;-><init>()V

    iput-object v0, v3, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    iget-object v0, v3, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    iget-object v0, v3, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/location/m/a/cf;

    iput-object v1, v0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Lcom/google/android/location/m/a/cf;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cf;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    const-string v4, ""

    iput-object v4, v0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    iget-object v4, v4, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/location/m/a/ah;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ah;-><init>()V

    new-array v1, v6, [Lcom/google/android/location/m/a/ai;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    .line 265
    const-string v1, "Places"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const-string v1, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getting mac-cluster mapping from server. Request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    .line 269
    return-void
.end method
