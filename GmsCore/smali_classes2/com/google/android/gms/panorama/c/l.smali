.class public final Lcom/google/android/gms/panorama/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;

.field final b:Lcom/google/android/gms/panorama/g/n;

.field final c:Lcom/google/android/gms/panorama/c/a;

.field final d:Ljava/util/List;

.field final e:Lcom/google/android/gms/panorama/f/a;

.field public f:Lcom/google/android/gms/panorama/f/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/panorama/g/n;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/l;->d:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/l;->b:Lcom/google/android/gms/panorama/g/n;

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/panorama/g/n;->g()Lcom/google/android/gms/panorama/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/l;->c:Lcom/google/android/gms/panorama/c/a;

    .line 51
    new-instance v0, Lcom/google/android/gms/panorama/c/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/panorama/c/m;-><init>(Lcom/google/android/gms/panorama/c/l;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/l;->e:Lcom/google/android/gms/panorama/f/a;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/c/l;->a()V

    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/c/c;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/c;->b()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/l;->a:Ljava/util/concurrent/Semaphore;

    .line 71
    return-void
.end method
