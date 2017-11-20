.class public final Lcom/google/android/gms/auth/d/e;
.super Lcom/google/android/gms/auth/d/a;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:J


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
    .line 65
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

    sget-object v0, Lcom/google/android/gms/auth/b/a;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/e/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/f;-><init>()V

    .line 71
    iget v1, p0, Lcom/google/android/gms/auth/d/e;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/f;->a(I)Lcom/google/android/gms/auth/e/f;

    .line 72
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/e;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/f;->a(J)Lcom/google/android/gms/auth/e/f;

    .line 73
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/e;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/f;->b(J)Lcom/google/android/gms/auth/e/f;

    .line 74
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/f;->a(Z)Lcom/google/android/gms/auth/e/f;

    .line 75
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/e;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/f;->b(Z)Lcom/google/android/gms/auth/e/f;

    .line 76
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/e;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/f;->c(Z)Lcom/google/android/gms/auth/e/f;

    .line 77
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/e;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/f;->c(J)Lcom/google/android/gms/auth/e/f;

    .line 80
    new-instance v1, Lcom/google/android/gms/auth/e/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/g;-><init>()V

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/auth/d/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 82
    iget-object v2, p0, Lcom/google/android/gms/auth/d/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/auth/d/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/g;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/e/g;

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/f;->a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/f;

    .line 86
    new-instance v1, Lcom/google/android/gms/auth/e/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/b;-><init>()V

    .line 87
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    .line 88
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/f;)Lcom/google/android/gms/auth/e/b;

    .line 89
    const-string v0, "GrantCredentialScreen"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/d/e;->a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V

    goto :goto_0
.end method
