.class public final Lcom/google/android/gms/fitness/data/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/fitness/data/DataType;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/fitness/data/Device;

.field public e:Lcom/google/android/gms/fitness/data/Application;

.field f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/h;->b:I

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/h;->f:Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/h;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must set data type"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 472
    iget v0, p0, Lcom/google/android/gms/fitness/data/h;->b:I

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Must set data source type"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 474
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/h;B)V

    return-object v0

    :cond_0
    move v0, v2

    .line 471
    goto :goto_0

    :cond_1
    move v1, v2

    .line 472
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;
    .locals 2

    .prologue
    .line 440
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must specify a valid stream name"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 441
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/h;->f:Ljava/lang/String;

    .line 442
    return-object p0

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
