.class public final Lcom/google/android/gms/auth/d/d;
.super Lcom/google/android/gms/auth/d/a;
.source "SourceFile"


# instance fields
.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/d/a;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/gms/auth/b/a;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sget-object v0, Lcom/google/android/gms/auth/b/a;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/e/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/e;-><init>()V

    .line 61
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/d;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/e;->a(J)Lcom/google/android/gms/auth/e/e;

    .line 62
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/d;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/e;->a(Z)Lcom/google/android/gms/auth/e/e;

    .line 63
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/d;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/e;->b(Z)Lcom/google/android/gms/auth/e/e;

    .line 64
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/d;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/e;->c(Z)Lcom/google/android/gms/auth/e/e;

    .line 65
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/d;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/e;->d(Z)Lcom/google/android/gms/auth/e/e;

    .line 67
    new-instance v1, Lcom/google/android/gms/auth/e/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/g;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/auth/d/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/auth/d/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/auth/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/e;->a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/e;

    .line 73
    new-instance v1, Lcom/google/android/gms/auth/e/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/b;-><init>()V

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    .line 75
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/e;)Lcom/google/android/gms/auth/e/b;

    .line 76
    const-string v0, "GetToken"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/d/d;->a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V

    goto :goto_0
.end method
