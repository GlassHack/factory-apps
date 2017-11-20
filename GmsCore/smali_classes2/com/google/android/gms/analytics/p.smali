.class final Lcom/google/android/gms/analytics/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/be;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    .line 21
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/gms/analytics/p;->a:I

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    if-gtz v0, :cond_0

    .line 26
    const-string v0, "GAV4"

    invoke-static {p1}, Lcom/google/android/gms/analytics/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 33
    const-string v0, "GAV4"

    invoke-static {p1}, Lcom/google/android/gms/analytics/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 40
    const-string v0, "GAV4"

    invoke-static {p1}, Lcom/google/android/gms/analytics/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/gms/analytics/p;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 47
    const-string v0, "GAV4"

    invoke-static {p1}, Lcom/google/android/gms/analytics/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method
