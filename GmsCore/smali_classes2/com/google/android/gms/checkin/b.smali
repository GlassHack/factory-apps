.class public final Lcom/google/android/gms/checkin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/checkin/b/c;Landroid/content/ContentResolver;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->g:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move v1, v2

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->e()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/d;

    .line 51
    iget-object v4, v0, Lcom/google/android/gms/checkin/b/d;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v4}, Lcom/google/protobuf/a/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/checkin/b/d;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->e:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->i()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->f:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 59
    const-string v1, "digest"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->i()I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->h:Z

    if-eqz v0, :cond_6

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->d()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72
    :cond_5
    const-string v0, "CheckinResponseProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "From server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gservices updates and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/google/android/gms/c/a;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    :cond_6
    const-string v0, "CheckinResponseProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "From server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gservices [full]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/google/android/gms/c/a;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
