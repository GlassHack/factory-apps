.class public final Lcom/google/android/location/geofencer/data/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/data/b;


# instance fields
.field final a:Ljava/util/ArrayList;

.field private d:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/a;->d:Landroid/location/Location;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;
    .locals 15

    .prologue
    .line 27
    iget-object v4, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 32
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/geofencer/data/g;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v10

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/google/android/location/geofencer/data/a;->d:Landroid/location/Location;

    move-object/from16 v0, p5

    if-eq v10, v0, :cond_1

    .line 38
    :cond_2
    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/location/geofencer/data/g;->a(JLandroid/location/Location;)B

    move-result v10

    .line 41
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 42
    if-nez v7, :cond_3

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_3
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_4
    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 47
    if-nez v6, :cond_5

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_6
    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 52
    if-nez v5, :cond_7

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_7
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_8
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/a;->d:Landroid/location/Location;

    .line 61
    if-nez v7, :cond_9

    if-nez v6, :cond_9

    if-nez v5, :cond_9

    .line 62
    const/4 v4, 0x0

    .line 65
    :goto_1
    return-object v4

    :cond_9
    new-instance v4, Lcom/google/android/location/geofencer/data/e;

    invoke-direct {v4, v7, v6, v5}, Lcom/google/android/location/geofencer/data/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Iterable;DI)Ljava/util/List;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/location/geofencer/data/f;

    invoke-direct {v0, p2, p3}, Lcom/google/android/location/geofencer/data/f;-><init>(D)V

    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;
    .locals 8

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_2
    return-object v0

    :cond_4
    invoke-static {p3}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Lcom/google/c/c/cz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 70
    const-string v0, "Location updater: AllGeofenceLocationUpdater."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/Iterable;I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method public final b(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 2

    .prologue
    .line 130
    const/16 v0, 0x32

    sget-object v1, Lcom/google/android/location/geofencer/data/a;->b:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 5

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_1
    return-object v0

    :cond_3
    sget-object v0, Lcom/google/android/location/geofencer/data/a;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/google/c/c/cz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
