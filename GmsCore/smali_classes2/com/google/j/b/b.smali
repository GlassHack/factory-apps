.class public final Lcom/google/j/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field final a:Lcom/google/j/g;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/j/g;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/j/b/b;->c:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    .line 86
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/j/b/b;
    .locals 9

    .prologue
    .line 117
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 120
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 123
    invoke-static {v1}, Lcom/google/j/b/g;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 126
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3}, Lcom/google/j/b/g;->a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " => "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 136
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v6, Lcom/google/j/f;

    invoke-direct {v6, v3, v0}, Lcom/google/j/f;-><init>(Ljava/io/InputStream;I)V

    .line 139
    new-instance v0, Lcom/google/j/b/c;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v6}, Lcom/google/j/b/c;-><init>(Ljava/lang/String;ILcom/google/j/f;)V

    .line 140
    invoke-virtual {v6}, Lcom/google/j/f;->b()V

    .line 141
    new-instance v1, Lcom/google/j/b/b;

    invoke-direct {v1, v2, v0}, Lcom/google/j/b/b;-><init>(Ljava/lang/String;Lcom/google/j/g;)V

    .line 142
    iput-object v5, v1, Lcom/google/j/b/b;->b:Ljava/util/Hashtable;

    .line 143
    iput-object v4, v1, Lcom/google/j/b/b;->d:Ljava/lang/String;

    .line 145
    return-object v1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    iget-object v2, p0, Lcom/google/j/b/b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/j/b/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/google/j/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/j/b/b;->d()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/j/b/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->s_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    iget-object v2, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->s_()I

    move-result v2

    if-lez v2, :cond_0

    .line 100
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/b;->e:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/j/b/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->a()V

    .line 153
    return-void
.end method

.method public final declared-synchronized d()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b/b;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/j/b/b;->b:Ljava/util/Hashtable;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/j/b/b;->b:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s_()I
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/j/b/b;->e()V

    .line 160
    iget-object v0, p0, Lcom/google/j/b/b;->e:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v1}, Lcom/google/j/g;->s_()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final t_()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/j/b/b;->e()V

    .line 168
    new-instance v0, Lcom/google/g/a/b/n;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/j/b/b;->e:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method
