.class final Lcom/google/android/location/fused/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/PrintWriter;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/android/location/fused/n;->c:Lcom/google/android/location/fused/g;

    iput-object p2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/google/android/location/fused/n;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v1, "\nActive Location Requests:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/google/android/location/fused/n;->c:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->c(Lcom/google/android/location/fused/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 944
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v3, "    Receiver: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 946
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v3, " numUpdatesDelivered="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/google/android/location/fused/r;->b(Lcom/google/android/location/fused/r;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 948
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v3, " lastDeliveryElapsedRealtime="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/android/location/fused/r;->c(Lcom/google/android/location/fused/r;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[ms]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v1, "\nLocation Request History By Package:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/google/android/location/fused/n;->c:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->f(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/as;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/fused/as;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/at;

    .line 954
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    const-string v1, "\nEvent Log:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/o/k;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/fused/n;->c:Lcom/google/android/location/fused/g;

    invoke-static {v2}, Lcom/google/android/location/fused/g;->g(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/v;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/fused/n;->c:Lcom/google/android/location/fused/g;

    iget-object v2, v2, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v2}, Lcom/google/android/location/fused/bc;->e()Lcom/google/android/location/o/k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/location/o/k;->a([Lcom/google/android/location/o/k;)Ljava/lang/Iterable;

    move-result-object v0

    .line 962
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 963
    iget-object v2, p0, Lcom/google/android/location/fused/n;->a:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/n;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 968
    return-void
.end method
