.class public final Lcom/google/android/gms/playlog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/playlog/c;


# instance fields
.field public final a:Lcom/google/android/gms/playlog/b;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;IB)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/gms/playlog/b;

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/c;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/a;->a:Lcom/google/android/gms/playlog/b;

    .line 46
    iput-boolean v6, p0, Lcom/google/android/gms/playlog/a;->b:Z

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/a;->b()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/playlog/a;->a:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->k()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/a;->b:Z

    .line 74
    return-void
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 89
    const-string v0, "OneTimePlayLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logger connection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/a;->b()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/playlog/a;->a:Lcom/google/android/gms/playlog/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/playlog/b;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/a;->b:Z

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot reuse one-time logger after sending."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/playlog/a;->a:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->l()V

    .line 85
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "OneTimePlayLogger"

    const-string v1, "logger connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
