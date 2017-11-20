.class Lcom/google/android/location/geofencer/service/p;
.super Lcom/google/android/gms/common/util/a/b;
.source "SourceFile"


# instance fields
.field final c:Lcom/google/android/location/geofencer/service/i;

.field final synthetic d:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/b;-><init>()V

    .line 724
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/p;->c:Lcom/google/android/location/geofencer/service/i;

    .line 725
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/location/i/e;)Lcom/google/android/gms/common/util/a/b;
    .locals 3

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 791
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->d(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/o/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/o/ab;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    sget-object v1, Lcom/google/android/location/geofencer/service/m;->a:[I

    invoke-virtual {p1}, Lcom/google/android/location/i/e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 812
    :goto_0
    return-object v0

    .line 794
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->e(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/x;

    move-result-object v0

    goto :goto_0

    .line 797
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->f(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/y;

    move-result-object v0

    goto :goto_0

    .line 800
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->g(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/w;

    move-result-object v0

    goto :goto_0

    .line 803
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->h(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/z;

    move-result-object v0

    goto :goto_0

    .line 806
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->i(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/r;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->j(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/n;

    move-result-object v0

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 816
    const-string v0, "\nDump of current state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    const-string v0, "\n    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 729
    const-string v0, "GeofencerStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "GeofencerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method protected final b(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 743
    iget v1, p1, Landroid/os/Message;->what:I

    .line 744
    sparse-switch v1, :sswitch_data_0

    .line 769
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 770
    const-string v1, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/service/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    :goto_0
    return v0

    .line 746
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/c;

    .line 748
    iget-object v1, v0, Lcom/google/android/location/geofencer/service/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/p;->c:Lcom/google/android/location/geofencer/service/i;

    const-string v2, "Registered geofences:\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v2, v1}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/io/PrintWriter;)V

    :goto_1
    const-string v2, "\nGeofences in blacklist:\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v2, v1}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/io/PrintWriter;)V

    :goto_2
    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v2, v2, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    if-eqz v2, :cond_1

    const-string v2, "\nLast location:\n    "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v2, v2, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    const-string v5, "Time="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v2, v2, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    invoke-interface {v2, v1}, Lcom/google/android/location/geofencer/service/b;->a(Ljava/io/PrintWriter;)V

    const-string v2, "\nLocation update interval="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    iget v2, v2, Lcom/google/android/location/geofencer/service/ac;->f:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v4, v2, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "Dump of ActivityDetector:\n    Interval="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lcom/google/android/location/i/a;->k:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->c(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/a/a;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/geofencer/service/p;

    invoke-virtual {v2, v1}, Lcom/google/android/location/geofencer/service/p;->a(Ljava/io/PrintWriter;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/p;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v2, v1}, Lcom/google/android/location/geofencer/service/k;->a(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v8}, Lcom/google/android/location/geofencer/service/c;->a(Ljava/lang/Object;)V

    move v0, v3

    .line 749
    goto/16 :goto_0

    .line 748
    :cond_2
    const-string v2, "    <none>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "    <none>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 755
    :sswitch_1
    const-string v1, "GeofencerStateMachine"

    const-string v2, "SM_STOP_CMD should never be sent for now."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 758
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/c;

    .line 760
    invoke-virtual {v0, v8}, Lcom/google/android/location/geofencer/service/c;->a(Ljava/lang/Object;)V

    move v0, v3

    .line 761
    goto/16 :goto_0

    .line 763
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/p;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/content/Intent;)V

    move v0, v3

    .line 764
    goto/16 :goto_0

    .line 766
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/p;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->g()V

    move v0, v3

    .line 767
    goto/16 :goto_0

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_3
        0xc -> :sswitch_4
        0x62 -> :sswitch_2
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 3

    .prologue
    .line 736
    const-string v0, "GeofencerStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const-string v0, "GeofencerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method
