.class public abstract Lcom/google/android/gms/common/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/common/internal/o;


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field c:Z

.field private final e:Landroid/os/Looper;

.field private f:Landroid/os/IInterface;

.field private final g:Ljava/util/ArrayList;

.field private h:Lcom/google/android/gms/common/internal/j;

.field private volatile i:I

.field private final j:[Ljava/lang/String;

.field private final k:Lcom/google/android/gms/common/internal/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/e;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/e;->i:I

    .line 396
    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/e;->c:Z

    .line 515
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->e:Landroid/os/Looper;

    .line 517
    new-instance v0, Lcom/google/android/gms/common/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->e:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/m;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    .line 518
    new-instance v0, Lcom/google/android/gms/common/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/f;-><init>(Lcom/google/android/gms/common/internal/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    .line 519
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->j:[Ljava/lang/String;

    .line 520
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/e;->i:I

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/e;->c:Z

    .line 438
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    .line 439
    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->e:Landroid/os/Looper;

    .line 440
    new-instance v0, Lcom/google/android/gms/common/internal/m;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/m;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    .line 444
    new-instance v0, Lcom/google/android/gms/common/internal/f;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/f;-><init>(Lcom/google/android/gms/common/internal/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    .line 445
    iput-object p5, p0, Lcom/google/android/gms/common/internal/e;->j:[Ljava/lang/String;

    .line 448
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/api/l;)V

    .line 449
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/m;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/h;)V

    .line 450
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;[Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/g;)V

    new-instance v4, Lcom/google/android/gms/common/internal/k;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/k;-><init>(Lcom/google/android/gms/common/h;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/e;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/google/android/gms/common/internal/e;->i:I

    .line 644
    iput p1, p0, Lcom/google/android/gms/common/internal/e;->i:I

    .line 646
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/e;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/e;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/e;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/l;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/l;-><init>(Lcom/google/android/gms/common/internal/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 847
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/g;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    new-instance v1, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/api/l;)V

    .line 953
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/h;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->k:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/h;)V

    .line 971
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
.end method

.method public final a(Lcom/google/android/gms/common/internal/g;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 924
    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 818
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ab;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/aa;

    move-result-object v0

    .line 819
    new-instance v1, Lcom/google/android/gms/common/internal/i;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/i;-><init>(Lcom/google/android/gms/common/internal/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 707
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/e;->c:Z

    .line 709
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/e;->a(I)V

    .line 711
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v0

    .line 712
    if-eqz v0, :cond_1

    .line 715
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/internal/e;->a(I)V

    .line 716
    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    if-eqz v0, :cond_2

    .line 722
    const-string v0, "GmsClient"

    const-string v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/os/IInterface;

    .line 724
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V

    .line 727
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/internal/e;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    .line 728
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)Z

    move-result v0

    .line 732
    if-nez v0, :cond_0

    .line 733
    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to connect to service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final c_()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/e;->c:Z

    return v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/e;->c:Z

    .line 761
    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 764
    :goto_0
    if-ge v1, v3, :cond_0

    .line 765
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->f()V

    .line 764
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 768
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/e;->a(I)V

    .line 772
    iput-object v4, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/os/IInterface;

    .line 773
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V

    .line 776
    iput-object v4, p0, Lcom/google/android/gms/common/internal/e;->h:Lcom/google/android/gms/common/internal/j;

    .line 778
    :cond_1
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/google/android/gms/common/internal/e;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->e:Landroid/os/Looper;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcom/google/android/gms/common/internal/e;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    return-void
.end method

.method public final j()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e;->i()V

    .line 894
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/os/IInterface;

    return-object v0
.end method
