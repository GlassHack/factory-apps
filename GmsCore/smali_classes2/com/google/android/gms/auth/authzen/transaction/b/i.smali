.class public final Lcom/google/android/gms/auth/authzen/transaction/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 14
    iget-object v0, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget v0, v0, Lcom/google/m/b/a/a/o;->b:I

    .line 15
    iget-object v1, p0, Lcom/google/m/b/a/a/p;->e:Ljava/lang/String;

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/d;

    new-instance v2, Lcom/google/android/gms/auth/authzen/transaction/b/b;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/b;-><init>(Lcom/google/m/b/a/a/p;)V

    new-instance v3, Lcom/google/android/gms/auth/authzen/transaction/b/a;

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/authzen/transaction/b/d;-><init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V

    .line 57
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 22
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-boolean v0, v0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget-boolean v0, v0, Lcom/google/m/b/a/a/e;->c:Z

    if-nez v0, :cond_2

    .line 25
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/b/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/j;

    const-string v1, "Request proto is missing usecase data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v0, v0, Lcom/google/m/b/a/a/e;->d:I

    .line 31
    if-ne v0, v3, :cond_3

    .line 32
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/d;

    new-instance v2, Lcom/google/android/gms/auth/authzen/transaction/b/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;-><init>(Lcom/google/m/b/a/a/p;)V

    new-instance v3, Lcom/google/android/gms/auth/authzen/transaction/b/a;

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/authzen/transaction/b/d;-><init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V

    goto :goto_0

    .line 35
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 36
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/d;

    new-instance v2, Lcom/google/android/gms/auth/authzen/transaction/b/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;-><init>(Lcom/google/m/b/a/a/p;)V

    new-instance v3, Lcom/google/android/gms/auth/authzen/transaction/b/f;

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/authzen/transaction/b/d;-><init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V

    goto :goto_0

    .line 39
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 40
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/d;

    new-instance v2, Lcom/google/android/gms/auth/authzen/transaction/b/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;-><init>(Lcom/google/m/b/a/a/p;)V

    new-instance v3, Lcom/google/android/gms/auth/authzen/transaction/b/f;

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/authzen/transaction/b/d;-><init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V

    goto :goto_0

    .line 45
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 46
    new-instance v1, Lcom/google/android/gms/auth/authzen/transaction/b/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/g;-><init>()V

    .line 47
    new-instance v2, Lcom/google/android/gms/auth/authzen/transaction/b/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;-><init>(Lcom/google/m/b/a/a/p;)V

    .line 49
    invoke-static {v2}, Lcom/google/android/gms/auth/authzen/transaction/b/g;->a(Lcom/google/android/gms/auth/authzen/transaction/b/h;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 50
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/j;

    const-string v1, "Request proto missing fields required by Reauth usecase."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_6
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/d;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/authzen/transaction/b/d;-><init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V

    goto/16 :goto_0

    .line 57
    :cond_7
    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/b/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/authzen/transaction/b/e;-><init>(Lcom/google/m/b/a/a/p;)V

    goto/16 :goto_0

    .line 62
    :cond_8
    new-instance v1, Lcom/google/android/gms/auth/authzen/transaction/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported prompt type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/authzen/transaction/b/j;-><init>(Ljava/lang/String;)V

    throw v1
.end method
