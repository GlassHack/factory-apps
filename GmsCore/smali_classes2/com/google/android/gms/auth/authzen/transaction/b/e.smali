.class public final Lcom/google/android/gms/auth/authzen/transaction/b/e;
.super Lcom/google/android/gms/auth/authzen/transaction/b/c;
.source "SourceFile"


# instance fields
.field private final i:Lcom/google/m/b/a/a/p;


# direct methods
.method public constructor <init>(Lcom/google/m/b/a/a/p;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/c;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->i:Lcom/google/m/b/a/a/p;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a()V

    .line 109
    return-void
.end method

.method private static a(Lcom/google/m/b/a/a/o;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1}, Lcom/google/m/b/a/a/e;->c()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/m/b/a/a/j;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget v1, v1, Lcom/google/m/b/a/a/j;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Lcom/google/m/b/a/a/p;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    iget-object v2, p0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    .line 27
    iget-object v3, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    .line 28
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    iget-object v4, v3, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    .line 32
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/e;->a:Z

    if-eqz v5, :cond_0

    .line 35
    iget v4, v4, Lcom/google/m/b/a/a/e;->b:I

    .line 40
    iget-boolean v5, v2, Lcom/google/m/b/a/a/f;->c:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/google/m/b/a/a/f;->a:Z

    if-eqz v5, :cond_0

    .line 44
    invoke-virtual {v2}, Lcom/google/m/b/a/a/f;->c()I

    move-result v5

    if-lt v5, v6, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/m/b/a/a/k;->a:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/m/b/a/a/k;->a:Z

    if-eqz v5, :cond_0

    .line 50
    if-eq v4, v1, :cond_2

    .line 52
    if-ne v4, v6, :cond_3

    .line 56
    invoke-static {v3}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a(Lcom/google/m/b/a/a/o;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v2, v0}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v4

    .line 60
    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->G:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->m:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->i:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lcom/google/m/b/a/a/k;->k:Z

    if-eqz v4, :cond_0

    .line 89
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->c(Lcom/google/m/b/a/a/o;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2, v1}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v2

    .line 94
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->e:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->c:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/google/m/b/a/a/k;->A:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 100
    goto :goto_0

    .line 66
    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->b(Lcom/google/m/b/a/a/o;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v2, v0}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v4

    .line 74
    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->g:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->q:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->u:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/google/m/b/a/a/k;->s:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lcom/google/m/b/a/a/k;->w:Z

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method private static b(Lcom/google/m/b/a/a/o;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1}, Lcom/google/m/b/a/a/e;->c()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/m/b/a/a/j;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget v1, v1, Lcom/google/m/b/a/a/j;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static c(Lcom/google/m/b/a/a/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1}, Lcom/google/m/b/a/a/e;->c()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/m/b/a/a/j;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    iget v1, v1, Lcom/google/m/b/a/a/j;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->i:Lcom/google/m/b/a/a/p;

    iget-object v0, v0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->i:Lcom/google/m/b/a/a/p;

    iget-object v1, v1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    .line 115
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v2, v0, Lcom/google/m/b/a/a/f;->c:Z

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/d;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/m/b/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    iget-boolean v2, v0, Lcom/google/m/b/a/a/f;->a:Z

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/d;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/m/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/m/b/a/a/k;->a:Z

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v4

    iget-object v4, v4, Lcom/google/m/b/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_4
    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v2

    if-le v2, v7, :cond_5

    invoke-virtual {v0, v7}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/m/b/a/a/k;->a:Z

    if-eqz v2, :cond_5

    .line 138
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v4

    iget-object v4, v4, Lcom/google/m/b/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a(Lcom/google/m/b/a/a/o;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 145
    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v2

    if-lez v2, :cond_9

    .line 146
    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v2

    .line 147
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->G:Z

    if-eqz v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/c;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/m/b/a/a/k;->H:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_6
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->m:Z

    if-eqz v3, :cond_7

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/c;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/m/b/a/a/k;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_7
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->i:Z

    if-eqz v3, :cond_8

    .line 158
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/c;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/m/b/a/a/k;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_8
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->k:Z

    if-eqz v3, :cond_9

    .line 163
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/c;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/m/b/a/a/k;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_9
    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->b(Lcom/google/m/b/a/a/o;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v2

    if-lez v2, :cond_b

    .line 174
    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v2

    .line 175
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->g:Z

    if-eqz v3, :cond_a

    .line 176
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/b;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/m/b/a/a/k;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_a
    iget-boolean v3, v2, Lcom/google/m/b/a/a/k;->q:Z

    if-eqz v3, :cond_b

    .line 181
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/gms/auth/authzen/transaction/a/b;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/m/b/a/a/k;->r:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->c(Lcom/google/m/b/a/a/o;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v1

    if-le v1, v7, :cond_f

    .line 191
    invoke-virtual {v0, v7}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v1

    .line 192
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->e:Z

    if-eqz v2, :cond_c

    .line 193
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_c
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->c:Z

    if-eqz v2, :cond_d

    .line 198
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_d
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->A:Z

    if-eqz v2, :cond_e

    .line 203
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/a;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->B:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_e
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->C:Z

    if-eqz v2, :cond_f

    .line 208
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/a/a;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/m/b/a/a/k;->D:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_f
    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v1

    if-lez v1, :cond_13

    .line 214
    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v1

    .line 215
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->u:Z

    if-eqz v2, :cond_10

    .line 216
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_10
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->s:Z

    if-eqz v2, :cond_11

    .line 221
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->d:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_11
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->w:Z

    if-eqz v2, :cond_12

    .line 226
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/m/b/a/a/k;->x:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_12
    iget-boolean v2, v1, Lcom/google/m/b/a/a/k;->y:Z

    if-eqz v2, :cond_13

    .line 231
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->f:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/m/b/a/a/k;->z:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_13
    invoke-virtual {v0}, Lcom/google/m/b/a/a/f;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    invoke-virtual {v0, v6}, Lcom/google/m/b/a/a/f;->a(I)Lcom/google/m/b/a/a/k;

    move-result-object v0

    .line 240
    iget-boolean v1, v0, Lcom/google/m/b/a/a/k;->E:Z

    if-eqz v1, :cond_14

    .line 241
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/k;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_14
    iget-boolean v1, v0, Lcom/google/m/b/a/a/k;->o:Z

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/m/b/a/a/k;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
