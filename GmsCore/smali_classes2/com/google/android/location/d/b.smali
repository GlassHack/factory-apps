.class public final Lcom/google/android/location/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/location/d/c;)V
    .locals 4

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    new-instance v1, Lcom/google/android/location/d/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/google/android/location/d/d;-><init>(Ljava/lang/String;JLcom/google/android/location/d/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7

    .prologue
    .line 74
    const-string v0, "gps"

    if-ne p2, v0, :cond_0

    .line 75
    sget-object v0, Lcom/google/android/location/d/c;->a:Lcom/google/android/location/d/c;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Lcom/google/android/location/d/c;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 80
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;ZLandroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    sget-object v0, Lcom/google/android/location/d/c;->b:Lcom/google/android/location/d/c;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Lcom/google/android/location/d/c;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 65
    return-void
.end method

.method public final declared-synchronized a(Ljava/text/Format;JLjava/io/PrintWriter;)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/d;

    .line 119
    invoke-virtual {v2, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 120
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/location/d/d;->c:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " @"

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/google/android/location/d/d;->c:J

    invoke-virtual {p4, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/d/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_0

    iget-object v1, v0, Lcom/google/android/location/d/d;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/d/d;->a:Lcom/google/android/location/d/c;

    invoke-virtual {v0}, Lcom/google/android/location/d/c;->ordinal()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/android/location/d/d;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    :cond_1
    monitor-exit p0

    return-void
.end method
