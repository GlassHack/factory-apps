.class public Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;
.super Lcom/google/android/gms/auth/authzen/transaction/a;
.source "SourceFile"


# instance fields
.field private v:Landroid/os/Bundle;

.field private w:Lcom/google/android/gms/auth/d/c;

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/m/b/a/a/p;)Z
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    .line 61
    iget-boolean v2, p0, Lcom/google/m/b/a/a/p;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    iget-boolean v2, v2, Lcom/google/m/b/a/a/c;->k:Z

    if-eqz v2, :cond_2

    .line 64
    iget-boolean v2, v1, Lcom/google/m/b/a/a/o;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-boolean v2, v2, Lcom/google/m/b/a/a/b;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-object v2, v2, Lcom/google/m/b/a/a/b;->b:Lcom/google/m/b/a/a/j;

    invoke-virtual {v2}, Lcom/google/m/b/a/a/j;->c()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 68
    :cond_1
    const-string v1, "AuthZen"

    const-string v2, "AccountRecoveryStrings contains pin text but pin data is malformed in AccountRecoveryDescriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    iget-boolean v2, v1, Lcom/google/m/b/a/a/o;->h:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-boolean v2, v2, Lcom/google/m/b/a/a/b;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-object v2, v2, Lcom/google/m/b/a/a/b;->b:Lcom/google/m/b/a/a/j;

    invoke-virtual {v2}, Lcom/google/m/b/a/a/j;->c()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 77
    const-string v2, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected number of pin options found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-object v1, v1, Lcom/google/m/b/a/a/b;->b:Lcom/google/m/b/a/a/j;

    invoke-virtual {v1}, Lcom/google/m/b/a/a/j;->c()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/authzen/transaction/a/e;I)V
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    if-nez p2, :cond_2

    .line 135
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(IZ)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    iget-object v2, v0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-boolean v2, v2, Lcom/google/m/b/a/a/o;->h:Z

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-object v0, v0, Lcom/google/m/b/a/a/b;->b:Lcom/google/m/b/a/a/j;

    iget-object v2, v0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    .line 139
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/a/b;->a(Landroid/os/Bundle;ILjava/util/List;)Lcom/google/android/gms/auth/authzen/transaction/a/b;

    move-result-object v0

    .line 153
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 211
    :goto_2
    return-void

    .line 136
    :cond_0
    iget-object v0, v0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    iget-boolean v0, v0, Lcom/google/m/b/a/a/b;->a:Z

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/c;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/c;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 150
    invoke-virtual {p0, v6, v6}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/a;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/a;

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_3
    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    if-nez p2, :cond_4

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v3, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 162
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v6, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 169
    invoke-virtual {p0, v7, v6}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 174
    :cond_5
    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 175
    if-nez p2, :cond_6

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v3, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 181
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    :cond_6
    if-ne p2, v6, :cond_7

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v8, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 189
    invoke-virtual {p0, v8, v8}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 191
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/a;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    goto/16 :goto_2

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v7, v0, Lcom/google/android/gms/auth/d/c;->d:I

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/c;->f:J

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 203
    invoke-virtual {p0, v7, v6}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(II)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 208
    :cond_8
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 209
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->finish()V

    goto/16 :goto_2

    .line 213
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput v3, v1, Lcom/google/android/gms/auth/d/c;->e:I

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment not supported in account recovery workflow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    .line 87
    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    .line 88
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/a;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/i;->a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/a/d;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-super {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->onDestroy()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->x:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57a58

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->y:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput-boolean v4, v0, Lcom/google/android/gms/auth/d/c;->g:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput-boolean v4, v0, Lcom/google/android/gms/auth/d/c;->i:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iget v0, v0, Lcom/google/android/gms/auth/d/c;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iget v0, v0, Lcom/google/android/gms/auth/d/c;->e:I

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    iput-boolean v4, v0, Lcom/google/android/gms/auth/d/c;->h:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->w:Lcom/google/android/gms/auth/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;->onStop()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->y:J

    .line 100
    return-void
.end method
