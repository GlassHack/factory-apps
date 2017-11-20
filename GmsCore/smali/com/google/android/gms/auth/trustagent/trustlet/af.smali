.class public abstract Lcom/google/android/gms/auth/trustagent/trustlet/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field d:Landroid/content/Context;

.field e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/gms/auth/d/f;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/d/f;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->d:I

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->e:I

    .line 102
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/f;->a()V

    .line 103
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->e:I

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/ag;)V
    .locals 0

    .prologue
    .line 114
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->b()V

    .line 117
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/auth/trustagent/trustlet/ag;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected final c(Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ag;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Z)V

    .line 46
    return-void
.end method

.method protected d()Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method final d(Z)V
    .locals 3

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-ne p1, v0, :cond_0

    .line 126
    const-string v0, "Coffee - Trustlet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trustlet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled state called with same state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "Coffee - Trustlet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trustlet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled state changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-boolean p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->b(Z)V

    goto :goto_0
.end method

.method protected abstract e()I
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ag;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method final h()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->c()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    .line 122
    return-void
.end method
