.class public final Lcom/google/android/gms/auth/authzen/transaction/b/b;
.super Lcom/google/android/gms/auth/authzen/transaction/b/c;
.source "SourceFile"


# instance fields
.field private final i:Lcom/google/m/b/a/a/p;


# direct methods
.method public constructor <init>(Lcom/google/m/b/a/a/p;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/c;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->i:Lcom/google/m/b/a/a/p;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a()V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->i:Lcom/google/m/b/a/a/p;

    iget-object v0, v0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    .line 28
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->s:Z

    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_2
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->a:Z

    if-eqz v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->c:Z

    if-eqz v1, :cond_4

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_4
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->e:Z

    if-eqz v1, :cond_5

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->u:Z

    if-eqz v1, :cond_6

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_6
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->w:Z

    if-eqz v1, :cond_7

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_7
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->g:Z

    if-eqz v1, :cond_8

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_8
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->i:Z

    if-eqz v1, :cond_9

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_9
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->y:Z

    if-eqz v1, :cond_a

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_a
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->k:Z

    if-eqz v1, :cond_b

    .line 83
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_b
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->A:Z

    if-eqz v1, :cond_c

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/b;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->B:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_c
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->C:Z

    if-eqz v1, :cond_d

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/b;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_d
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->E:Z

    if-eqz v1, :cond_e

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/b;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_e
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->o:Z

    if-eqz v1, :cond_f

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_f
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->m:Z

    if-eqz v1, :cond_10

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_10
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->q:Z

    if-eqz v1, :cond_11

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_11
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->G:Z

    if-eqz v1, :cond_12

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/m/b/a/a/c;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_12
    iget-boolean v1, v0, Lcom/google/m/b/a/a/c;->I:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/b;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/m/b/a/a/c;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
