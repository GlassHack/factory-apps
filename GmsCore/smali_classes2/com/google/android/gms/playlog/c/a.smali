.class public final Lcom/google/android/gms/playlog/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;[B)[B
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty test id: testId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 88
    :goto_0
    return-object v0

    .line 48
    :cond_2
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 51
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/nano/a;->a([BII)Lcom/google/protobuf/nano/a;

    move-result-object v5

    move v0, v1

    .line 52
    :goto_1
    invoke-virtual {v5}, Lcom/google/protobuf/nano/a;->k()Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    new-instance v3, Lcom/google/n/a/b/a/a/i;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/i;-><init>()V

    .line 56
    :try_start_0
    invoke-virtual {v5}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v3, v6, v7}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iput-object p0, v3, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->b(Lcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v0, v3

    .line 66
    goto :goto_1

    .line 57
    :catch_0
    move-exception v3

    .line 58
    const-string v6, "TestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addTestIdToSerializedLogEvent: testId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IOException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    new-array v2, v0, [B

    .line 71
    array-length v0, v2

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v1

    .line 73
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/b/a/a/i;

    .line 76
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v4, "TestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addTestIdToSerializedLogEvent: testId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IOException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/nano/b;->a()I

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    array-length v0, v2

    invoke-virtual {v1}, Lcom/google/protobuf/nano/b;->a()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method
