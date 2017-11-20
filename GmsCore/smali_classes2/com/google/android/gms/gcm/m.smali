.class public final Lcom/google/android/gms/gcm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/gcm/r;

.field final b:Lcom/google/android/gms/gcm/s;

.field final c:Lcom/google/android/gms/gcm/t;

.field d:I

.field e:Ljava/util/List;

.field f:J

.field g:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Lcom/google/android/gms/gcm/ay;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/gcm/n;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/gcm/n;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/gms/gcm/o;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/o;-><init>()V

    new-instance v2, Lcom/google/android/gms/gcm/p;

    invoke-direct {v2, p3}, Lcom/google/android/gms/gcm/p;-><init>(Lcom/google/android/gms/gcm/ay;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/gcm/m;-><init>(Lcom/google/android/gms/gcm/r;Lcom/google/android/gms/gcm/s;Lcom/google/android/gms/gcm/t;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/r;Lcom/google/android/gms/gcm/s;Lcom/google/android/gms/gcm/t;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/m;->d:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/m;->f:J

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/m;->g:J

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/gcm/m;->a:Lcom/google/android/gms/gcm/r;

    .line 63
    iput-object p2, p0, Lcom/google/android/gms/gcm/m;->b:Lcom/google/android/gms/gcm/s;

    .line 64
    iput-object p3, p0, Lcom/google/android/gms/gcm/m;->c:Lcom/google/android/gms/gcm/t;

    .line 65
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/gms/gcm/m;->d:I

    iget-object v1, p0, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method final b()Z
    .locals 4

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/android/gms/gcm/m;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/gcm/m;->a:Lcom/google/android/gms/gcm/r;

    invoke-interface {v0}, Lcom/google/android/gms/gcm/r;->a()V

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/m;->f:J

    .line 148
    :cond_0
    return-void
.end method
