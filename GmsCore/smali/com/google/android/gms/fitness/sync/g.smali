.class public final Lcom/google/android/gms/fitness/sync/g;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/q;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    iput-boolean v2, p0, Lcom/google/android/gms/fitness/sync/g;->a:Z

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->b:Z

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/fitness/sync/g;->b:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->a:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->b:Z

    .line 18
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/sync/g;->a:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->b:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/sync/g;->b:Z

    return v0
.end method
