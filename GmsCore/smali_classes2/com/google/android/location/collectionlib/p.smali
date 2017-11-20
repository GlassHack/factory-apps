.class final Lcom/google/android/location/collectionlib/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ao;


# instance fields
.field final a:Lcom/google/android/location/collectionlib/ab;

.field final synthetic b:Lcom/google/android/location/collectionlib/i;

.field private final c:Lcom/google/android/location/collectionlib/n;

.field private volatile d:Z

.field private volatile e:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;Lcom/google/android/location/collectionlib/ab;)V
    .locals 1

    .prologue
    .line 950
    iput-object p1, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/p;->d:Z

    .line 948
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/p;->e:Ljava/util/List;

    .line 951
    iput-object p2, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    .line 952
    iput-object p3, p0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    .line 953
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;Lcom/google/android/location/collectionlib/ab;B)V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/collectionlib/p;-><init>(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;Lcom/google/android/location/collectionlib/ab;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    invoke-virtual {v0, p2}, Lcom/google/android/location/collectionlib/n;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    monitor-exit p0

    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1124
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/p;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1127
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/n;->b()Lcom/google/android/location/collectionlib/da;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_0

    .line 1129
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;

    move-result-object v1

    const-string v2, "Finished all."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 1130
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/p;->d:Z

    .line 1131
    iget-object v1, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->h(Lcom/google/android/location/collectionlib/i;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1132
    iget-object v1, p0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/collectionlib/t;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/location/collectionlib/t;-><init>(Lcom/google/android/location/collectionlib/p;Ljava/lang/String;Lcom/google/android/location/collectionlib/da;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public final a(ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 1001
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 981
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method public final a(Lcom/google/android/location/collectionlib/cj;)V
    .locals 0

    .prologue
    .line 989
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 993
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/location/collectionlib/n;->a(IZ)V

    .line 1061
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/collectionlib/r;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/location/collectionlib/r;-><init>(Lcom/google/android/location/collectionlib/p;ILcom/google/g/a/b/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->g(Lcom/google/android/location/collectionlib/i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/n;->c(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0, p1}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Z)Z

    .line 1075
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1046
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/location/collectionlib/n;->a(IZ)V

    .line 1047
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/collectionlib/q;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/location/collectionlib/q;-><init>(Lcom/google/android/location/collectionlib/p;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1055
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1090
    iget-object v1, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    invoke-virtual {v1, p2}, Lcom/google/android/location/collectionlib/n;->a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/da;

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/google/android/location/collectionlib/p;->c:Lcom/google/android/location/collectionlib/n;

    invoke-virtual {v2, p2}, Lcom/google/android/location/collectionlib/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v3}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished uploading GLocRequests in file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 1094
    :cond_0
    iget-object v3, p0, Lcom/google/android/location/collectionlib/p;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v3, p0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    if-eqz v3, :cond_1

    .line 1096
    iget-object v3, p0, Lcom/google/android/location/collectionlib/p;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v3}, Lcom/google/android/location/collectionlib/i;->e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/location/collectionlib/s;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/google/android/location/collectionlib/s;-><init>(Lcom/google/android/location/collectionlib/p;ILjava/lang/String;Lcom/google/android/location/collectionlib/da;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    monitor-exit p0

    return-void

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 997
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 969
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 973
    return-void
.end method

.method public final c_(I)V
    .locals 0

    .prologue
    .line 1029
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 1005
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 1017
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 1025
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 1037
    return-void
.end method

.method public final declared-synchronized j()V
    .locals 0

    .prologue
    .line 1080
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
