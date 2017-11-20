.class public final Lcom/google/android/gms/wearable/node/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Thread;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Ljava/util/concurrent/atomic/AtomicLong;

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;

.field private final k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 591
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->c:J

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->b:J

    .line 597
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bb;->k:Landroid/os/Handler;

    .line 598
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_0
    monitor-exit p0

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 616
    iget v0, p0, Lcom/google/android/gms/wearable/node/bb;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/node/bb;->g:I

    .line 617
    iget v0, p0, Lcom/google/android/gms/wearable/node/bb;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/wearable/node/bb;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :cond_0
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/wearable/d/d;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x3e8

    .line 629
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 631
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 635
    cmp-long v6, v0, v12

    if-eqz v6, :cond_0

    .line 636
    sub-long v0, v4, v0

    .line 637
    cmp-long v6, v0, v10

    if-lez v6, :cond_0

    .line 638
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STUCK WHILE PROCESSING READ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 642
    :cond_0
    cmp-long v0, v2, v12

    if-eqz v0, :cond_1

    .line 643
    sub-long v0, v4, v2

    .line 644
    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STUCK WHILE WRITING "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 650
    :cond_1
    const-string v0, "Current: "

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 654
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    .line 657
    :goto_1
    const-string v2, "%s, writes/reads (%d/%d), bytes (%d/%d), duration %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/wearable/node/bb;->b:J

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-string v6, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/wearable/node/bb;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/gms/wearable/node/bb;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/android/gms/wearable/node/bb;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/google/android/gms/wearable/node/bb;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lcom/google/android/gms/wearable/node/bb;->c:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/wearable/d/d;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 662
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 652
    :cond_2
    :try_start_1
    const-string v0, "    Old: "

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 681
    if-eqz p1, :cond_1

    .line 682
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 684
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->k:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->k:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->k:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/wearable/a/b;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 690
    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 691
    sub-long/2addr v0, v2

    .line 692
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 693
    const-string v2, "wearable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to perform write"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final declared-synchronized b(I)V
    .locals 4

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/bb;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 623
    iget v0, p0, Lcom/google/android/gms/wearable/node/bb;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/node/bb;->h:I

    .line 624
    iget v0, p0, Lcom/google/android/gms/wearable/node/bb;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/wearable/node/bb;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_0
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 733
    if-eqz p1, :cond_1

    .line 734
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bb;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 737
    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 738
    sub-long/2addr v0, v2

    .line 739
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 740
    const-string v2, "wearable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to process the read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 701
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/bb;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    move v0, v1

    .line 720
    :goto_0
    monitor-exit p0

    return v0

    .line 704
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bb;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 705
    const-string v0, "wearable"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    const-string v0, "wearable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Write start time:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1
    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 711
    const-string v0, "wearable"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    const-string v0, "wearable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Last write duration:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_2
    sget-object v0, Lcom/google/android/gms/wearable/a/b;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 715
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Write has been stuck for more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/wearable/a/b;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 720
    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
