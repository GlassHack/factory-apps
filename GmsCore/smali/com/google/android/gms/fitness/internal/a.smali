.class public final Lcom/google/android/gms/fitness/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/gms/fitness/internal/a;->a:I

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/internal/a;->c:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, Lcom/google/android/gms/fitness/internal/a;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/internal/a;

    .line 43
    iget v1, p1, Lcom/google/android/gms/fitness/internal/a;->a:I

    iget v2, p0, Lcom/google/android/gms/fitness/internal/a;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/fitness/internal/a;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/fitness/internal/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
