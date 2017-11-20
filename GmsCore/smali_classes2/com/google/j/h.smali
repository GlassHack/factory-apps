.class public final Lcom/google/j/h;
.super Lcom/google/g/a/b/b;
.source "SourceFile"


# static fields
.field protected static b:Lcom/google/j/h;


# instance fields
.field protected c:Lcom/google/g/a/d/c;

.field protected d:Lcom/google/j/b/d;

.field protected e:Ljava/util/Vector;

.field protected f:Ljava/util/Hashtable;

.field protected g:Ljava/util/Hashtable;

.field h:Ljava/lang/Object;

.field i:I

.field protected j:J

.field protected k:J

.field protected l:Lcom/google/g/a/d/d;

.field protected m:Lcom/google/g/a/d/d;

.field private n:Lcom/google/j/a/c;

.field private o:Lcom/google/g/a/b/g;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/Vector;

.field private s:I

.field private t:I

.field private final u:J

.field private v:Z

.field private w:Lcom/google/j/p;


# direct methods
.method private constructor <init>(Lcom/google/j/l;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lcom/google/g/a/b/b;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->r:Ljava/util/Vector;

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    .line 122
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->g:Ljava/util/Hashtable;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    .line 135
    iput v1, p0, Lcom/google/j/h;->s:I

    .line 136
    iput v1, p0, Lcom/google/j/h;->i:I

    .line 137
    iput v1, p0, Lcom/google/j/h;->t:I

    .line 163
    iput-boolean v1, p0, Lcom/google/j/h;->v:Z

    .line 240
    iget-wide v0, p1, Lcom/google/j/l;->g:J

    iput-wide v0, p0, Lcom/google/j/h;->u:J

    .line 242
    new-instance v0, Lcom/google/j/b/d;

    iget-object v1, p1, Lcom/google/j/l;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/j/l;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/j/l;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/j/l;->f:Ljava/lang/String;

    const-string v5, "g"

    invoke-direct/range {v0 .. v5}, Lcom/google/j/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/j/h;->d:Lcom/google/j/b/d;

    .line 248
    new-instance v0, Lcom/google/g/a/d/c;

    new-instance v1, Lcom/google/g/a/c/a;

    invoke-direct {v1}, Lcom/google/g/a/c/a;-><init>()V

    const-string v2, "MobileServiceMux TaskRunner"

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/d/c;-><init>(Lcom/google/g/a/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    .line 249
    iget-object v0, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    invoke-virtual {v0}, Lcom/google/g/a/d/c;->b()V

    .line 250
    invoke-static {}, Lcom/google/g/a/a;->a()Lcom/google/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/a;->d()Lcom/google/g/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/h;->o:Lcom/google/g/a/b/g;

    .line 251
    iget-object v0, p1, Lcom/google/j/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/j/h;->p:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/google/j/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/j/h;->q:Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/google/j/a/c;

    iget-object v1, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    new-instance v2, Lcom/google/g/a/c/a;

    invoke-direct {v2}, Lcom/google/g/a/c/a;-><init>()V

    iget-object v3, p0, Lcom/google/j/h;->o:Lcom/google/g/a/b/g;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/j/a/c;-><init>(Lcom/google/g/a/d/c;Lcom/google/g/a/c/c;Lcom/google/g/a/b/g;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/j/h;->n:Lcom/google/j/a/c;

    .line 254
    iget-object v0, p0, Lcom/google/j/h;->n:Lcom/google/j/a/c;

    invoke-virtual {v0}, Lcom/google/j/a/c;->a()V

    .line 255
    new-instance v0, Lcom/google/j/p;

    invoke-direct {v0}, Lcom/google/j/p;-><init>()V

    iput-object v0, p0, Lcom/google/j/h;->w:Lcom/google/j/p;

    .line 257
    new-instance v0, Lcom/google/g/a/d/d;

    iget-object v1, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    new-instance v2, Lcom/google/j/i;

    invoke-direct {v2, p0}, Lcom/google/j/i;-><init>(Lcom/google/j/h;)V

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/d/d;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/j/h;->l:Lcom/google/g/a/d/d;

    .line 274
    new-instance v0, Lcom/google/j/j;

    iget-object v1, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    invoke-direct {v0, p0, v1}, Lcom/google/j/j;-><init>(Lcom/google/j/h;Lcom/google/g/a/d/c;)V

    iput-object v0, p0, Lcom/google/j/h;->m:Lcom/google/g/a/d/d;

    .line 281
    return-void
.end method

.method private a(Lcom/google/j/b/p;Lcom/google/j/b/h;)Lcom/google/j/b/o;
    .locals 10

    .prologue
    .line 1105
    invoke-virtual {p1}, Lcom/google/j/b/p;->j()Ljava/lang/String;

    move-result-object v3

    .line 1106
    new-instance v4, Lcom/google/j/b/i;

    invoke-virtual {p2}, Lcom/google/j/b/h;->d()I

    move-result v0

    iget v1, p2, Lcom/google/j/b/o;->d:I

    iget-object v2, p2, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/j/b/i;-><init>(IILcom/google/j/b/b;)V

    .line 1109
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 1111
    iget-object v6, p2, Lcom/google/j/b/h;->b:[Lcom/google/j/b/b;

    .line 1113
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v6

    if-ge v2, v0, :cond_2

    .line 1114
    aget-object v7, v6, v2

    .line 1115
    invoke-virtual {v7}, Lcom/google/j/b/b;->d()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "Content-Location"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1117
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1120
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/j/b/i;

    .line 1122
    if-nez v1, :cond_0

    .line 1123
    invoke-virtual {v7}, Lcom/google/j/b/b;->d()Ljava/util/Hashtable;

    move-result-object v1

    const-string v8, "X-Masf-Response-Code"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1124
    new-instance v8, Lcom/google/j/b/i;

    invoke-virtual {p2}, Lcom/google/j/b/h;->d()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v9, v1, v7}, Lcom/google/j/b/i;-><init>(IILcom/google/j/b/b;)V

    .line 1126
    invoke-virtual {v5, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1128
    :cond_0
    invoke-virtual {v1, v7}, Lcom/google/j/b/i;->a(Lcom/google/j/b/b;)V

    goto :goto_1

    .line 1133
    :cond_1
    invoke-virtual {v4, v7}, Lcom/google/j/b/i;->a(Lcom/google/j/b/b;)V

    goto :goto_1

    .line 1138
    :cond_2
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1140
    iget-object v2, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 1141
    :goto_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1142
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 1143
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/i;

    .line 1144
    iget-object v6, p0, Lcom/google/j/h;->w:Lcom/google/j/p;

    invoke-virtual {v0}, Lcom/google/j/b/i;->a()Lcom/google/j/b/h;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/google/j/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    invoke-virtual {v4}, Lcom/google/j/b/i;->a()Lcom/google/j/b/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 1

    .prologue
    .line 1157
    :try_start_0
    invoke-virtual {p1}, Lcom/google/j/b/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {p1}, Lcom/google/j/b/m;->f()Lcom/google/j/b/n;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_0

    .line 1161
    invoke-interface {v0, p1, p2}, Lcom/google/j/b/n;->a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V

    .line 1163
    :cond_0
    invoke-direct {p0}, Lcom/google/j/h;->g()[Lcom/google/j/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :cond_1
    invoke-virtual {p2}, Lcom/google/j/b/o;->e()V

    .line 1172
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    invoke-virtual {p2}, Lcom/google/j/b/o;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/j/b/o;->e()V

    throw v0
.end method

.method static synthetic a(Lcom/google/j/h;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/j/h;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/j/h;Lcom/google/j/a/b;[Lcom/google/j/b/m;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-interface {p1}, Lcom/google/j/a/b;->G_()I

    move-result v2

    invoke-interface {p1}, Lcom/google/j/a/b;->h()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f6

    if-ne v2, v4, :cond_0

    new-instance v3, Lcom/google/j/e;

    invoke-direct {v3, v2}, Lcom/google/j/e;-><init>(I)V

    invoke-direct {p0, p2, v3}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_1

    new-instance v3, Lcom/google/j/e;

    invoke-direct {v3, v2}, Lcom/google/j/e;-><init>(I)V

    invoke-direct {p0, p2, v3}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/j/h;->g()[Lcom/google/j/m;

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v2, "application/binary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad content-type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget v2, p0, Lcom/google/j/h;->t:I

    int-to-long v2, v2

    invoke-interface {p1}, Lcom/google/j/a/b;->e()J

    move-result-wide v8

    add-long/2addr v2, v8

    long-to-int v2, v2

    iput v2, p0, Lcom/google/j/h;->t:I

    invoke-interface {p1}, Lcom/google/j/a/b;->j()Ljava/io/DataInputStream;

    move-result-object v2

    new-instance v8, Lcom/google/j/b/l;

    invoke-direct {v8, v2}, Lcom/google/j/b/l;-><init>(Ljava/io/DataInputStream;)V

    move v7, v6

    :goto_1
    array-length v2, p2

    if-ge v7, v2, :cond_b

    iget-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    invoke-virtual {v2}, Lcom/google/j/f;->a()V

    const/4 v2, 0x0

    iput-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    :cond_4
    iget-object v2, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const v4, 0x8100

    if-ne v3, v4, :cond_6

    new-instance v3, Lcom/google/j/f;

    iget-object v4, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-direct {v3, v4, v2}, Lcom/google/j/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    new-instance v4, Lcom/google/j/b/k;

    iget-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    invoke-direct {v4, v2}, Lcom/google/j/b/k;-><init>(Lcom/google/j/f;)V

    :goto_2
    if-eqz v4, :cond_b

    move v2, v6

    :goto_3
    array-length v3, p2

    if-ge v2, v3, :cond_d

    aget-object v3, p2, v2

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/j/b/m;->d()I

    move-result v9

    invoke-virtual {v4}, Lcom/google/j/b/o;->d()I

    move-result v10

    if-ne v9, v10, :cond_8

    const/4 v9, 0x0

    aput-object v9, p2, v2

    :goto_4
    if-eqz v3, :cond_a

    instance-of v2, v4, Lcom/google/j/b/h;

    if-eqz v2, :cond_5

    instance-of v2, v3, Lcom/google/j/b/p;

    if-eqz v2, :cond_5

    move-object v0, v3

    check-cast v0, Lcom/google/j/b/p;

    move-object v2, v0

    check-cast v4, Lcom/google/j/b/h;

    invoke-direct {p0, v2, v4}, Lcom/google/j/h;->a(Lcom/google/j/b/p;Lcom/google/j/b/h;)Lcom/google/j/b/o;

    move-result-object v4

    :cond_5
    iget v2, v4, Lcom/google/j/b/o;->d:I

    const/16 v9, 0x226

    if-ne v2, v9, :cond_9

    invoke-virtual {v4}, Lcom/google/j/b/o;->e()V

    new-instance v4, Lcom/google/j/e;

    invoke-direct {v4, v2}, Lcom/google/j/e;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {p0, v3, v10, v11}, Lcom/google/j/h;->a(Lcom/google/j/b/m;J)Z

    :goto_5
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    :cond_6
    const v4, 0x8101

    if-ne v3, v4, :cond_7

    new-instance v3, Lcom/google/j/f;

    iget-object v4, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-direct {v3, v4, v2}, Lcom/google/j/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    new-instance v4, Lcom/google/j/b/h;

    iget-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    invoke-direct {v4, v2}, Lcom/google/j/b/h;-><init>(Lcom/google/j/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v3, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-object v4, v5

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-direct {p0, v3, v4}, Lcom/google/j/h;->a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    invoke-virtual {v4}, Lcom/google/j/b/o;->s_()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v4}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    invoke-virtual {v4}, Lcom/google/j/b/o;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Request didn\'t complete"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v3}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    throw v2

    :cond_b
    :try_start_4
    iget-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput-object v2, v8, Lcom/google/j/b/l;->b:Lcom/google/j/f;

    :cond_c
    iget-object v2, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, v8, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_6

    :cond_d
    move-object v3, v5

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/google/j/h;[Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/j/l;)V
    .locals 2

    .prologue
    .line 204
    const-class v1, Lcom/google/j/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/j/h;->b:Lcom/google/j/h;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/google/j/h;

    invoke-direct {v0, p0}, Lcom/google/j/h;-><init>(Lcom/google/j/l;)V

    sput-object v0, Lcom/google/j/h;->b:Lcom/google/j/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit v1

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/Vector;Z)V
    .locals 6

    .prologue
    .line 926
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/j/b/m;

    .line 928
    invoke-virtual {p1, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 930
    array-length v0, v4

    new-array v1, v0, [Ljava/io/InputStream;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    aget-object v2, v4, v0

    invoke-virtual {v2}, Lcom/google/j/b/m;->t_()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/g/a/b/n;

    iget-object v0, p0, Lcom/google/j/h;->d:Lcom/google/j/b/d;

    invoke-virtual {v0}, Lcom/google/j/b/d;->t_()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Lcom/google/g/a/b/n;

    invoke-direct {v3, v1}, Lcom/google/g/a/b/n;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v2, v0, v3}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 932
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/j/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/j/h;->q:Ljava/lang/String;

    .line 934
    :goto_1
    iget-object v1, p0, Lcom/google/j/h;->n:Lcom/google/j/a/c;

    invoke-virtual {v1, v0}, Lcom/google/j/a/c;->a(Ljava/lang/String;)Lcom/google/j/a/b;

    move-result-object v3

    .line 936
    const-string v0, "POST"

    invoke-interface {v3, v0}, Lcom/google/j/a/b;->a(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 938
    invoke-interface {v3, v2}, Lcom/google/j/a/b;->a(Ljava/io/InputStream;)V

    .line 939
    iget-wide v0, p0, Lcom/google/j/h;->u:J

    invoke-interface {v3, v0, v1}, Lcom/google/j/a/b;->a(J)V

    .line 940
    const-string v0, "application/binary"

    invoke-interface {v3, v0}, Lcom/google/j/a/b;->b(Ljava/lang/String;)V

    .line 944
    new-instance v0, Lcom/google/j/k;

    iget-object v2, p0, Lcom/google/j/h;->c:Lcom/google/g/a/d/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/j/k;-><init>(Lcom/google/j/h;Lcom/google/g/a/d/c;Lcom/google/j/a/b;[Lcom/google/j/b/m;I)V

    .line 974
    invoke-interface {v3, v0}, Lcom/google/j/a/b;->b(Lcom/google/g/a/d/a;)V

    .line 975
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/google/j/h;->p:Ljava/lang/String;

    goto :goto_1
.end method

.method private a([Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 761
    iget-object v4, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v4

    move v1, v0

    .line 764
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 765
    aget-object v5, p1, v1

    if-eqz v5, :cond_0

    .line 766
    aget-object v5, p1, v1

    invoke-direct {p0, v5, v2, v3}, Lcom/google/j/h;->a(Lcom/google/j/b/m;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 769
    const/4 v5, 0x0

    aput-object v5, p1, v1

    .line 764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_1
    invoke-direct {p0}, Lcom/google/j/h;->f()V

    .line 774
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 780
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 781
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/j/b/m;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/j/b/m;->f()Lcom/google/j/b/n;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_2

    .line 785
    aget-object v2, p1, v0

    invoke-interface {v1, v2, p2}, Lcom/google/j/b/n;->a(Lcom/google/j/b/m;Ljava/lang/Exception;)V

    .line 779
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 790
    :cond_3
    return-void
.end method

.method private a([Lcom/google/j/b/m;Z)V
    .locals 8

    .prologue
    .line 819
    :try_start_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 820
    iget-object v1, p0, Lcom/google/j/h;->d:Lcom/google/j/b/d;

    invoke-virtual {v1}, Lcom/google/j/b/d;->s_()I

    move-result v3

    .line 822
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    array-length v1, p1

    if-ge v4, v1, :cond_3

    .line 823
    aget-object v2, p1, v4

    .line 824
    if-eqz v2, :cond_4

    .line 827
    instance-of v1, v2, Lcom/google/j/b/p;

    if-eqz v1, :cond_1

    .line 833
    move-object v0, v2

    check-cast v0, Lcom/google/j/b/p;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/j/b/p;->j()Ljava/lang/String;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_1

    .line 838
    iget-object v6, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :try_start_1
    iget-object v7, p0, Lcom/google/j/h;->w:Lcom/google/j/p;

    invoke-virtual {v7, v1}, Lcom/google/j/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    if-eqz v1, :cond_1

    .line 843
    const/4 v6, 0x0

    :try_start_2
    aput-object v6, p1, v4

    .line 844
    check-cast v1, Lcom/google/j/b/o;

    invoke-direct {p0, v2, v1}, Lcom/google/j/h;->a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V

    move v1, v3

    .line 822
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    :catch_0
    move-exception v1

    .line 869
    invoke-direct {p0, p1, v1}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Ljava/lang/Exception;)V

    .line 871
    :cond_0
    :goto_2
    return-void

    .line 851
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/google/j/b/m;->s_()I

    move-result v1

    add-int/2addr v1, v3

    const v6, 0x8000

    if-le v1, v6, :cond_2

    .line 852
    invoke-direct {p0, v5, p2}, Lcom/google/j/h;->a(Ljava/util/Vector;Z)V

    .line 853
    iget-object v1, p0, Lcom/google/j/h;->d:Lcom/google/j/b/d;

    invoke-virtual {v1}, Lcom/google/j/b/d;->s_()I

    move-result v3

    .line 854
    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 856
    :cond_2
    const/4 v1, 0x0

    aput-object v1, p1, v4

    .line 857
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 858
    invoke-virtual {v2}, Lcom/google/j/b/m;->s_()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_1

    .line 863
    :cond_3
    invoke-direct {p0}, Lcom/google/j/h;->f()V

    .line 865
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 866
    invoke-direct {p0, v5, p2}, Lcom/google/j/h;->a(Ljava/util/Vector;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private a(Lcom/google/j/b/m;J)Z
    .locals 2

    .prologue
    .line 804
    invoke-virtual {p1, p2, p3}, Lcom/google/j/b/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p1, p2, p3}, Lcom/google/j/b/m;->b(J)V

    .line 806
    iget-object v0, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/4 v0, 0x1

    .line 809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/google/j/h;
    .locals 2

    .prologue
    .line 230
    const-class v0, Lcom/google/j/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/j/h;->b:Lcom/google/j/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/j/h;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 446
    iget-object v6, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v6

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/google/j/h;->m:Lcom/google/g/a/d/d;

    invoke-virtual {v0}, Lcom/google/g/a/d/d;->a()I

    .line 450
    iget-object v0, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    move-wide v2, v4

    .line 451
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/m;

    .line 453
    iget-boolean v1, v0, Lcom/google/j/b/m;->k:Z

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v1, v0, Lcom/google/j/b/m;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 456
    iget-object v1, p0, Lcom/google/j/h;->g:Ljava/util/Hashtable;

    iget-object v0, v0, Lcom/google/j/b/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 459
    :cond_0
    :try_start_1
    iget-wide v0, v0, Lcom/google/j/b/m;->g:J

    .line 460
    cmp-long v8, v0, v4

    if-eqz v8, :cond_4

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    cmp-long v8, v2, v0

    if-lez v8, :cond_4

    :cond_1
    :goto_1
    move-wide v2, v0

    .line 466
    goto :goto_0

    .line 467
    :cond_2
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 468
    monitor-exit v6

    .line 473
    :goto_2
    return-void

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/google/j/h;->m:Lcom/google/g/a/d/d;

    invoke-virtual {v0, v2, v3}, Lcom/google/g/a/d/d;->b(J)V

    .line 472
    iget-object v0, p0, Lcom/google/j/h;->m:Lcom/google/g/a/d/d;

    invoke-virtual {v0}, Lcom/google/g/a/d/d;->d()V

    .line 473
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private g()[Lcom/google/j/m;
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lcom/google/j/h;->r:Ljava/util/Vector;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/google/j/h;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/j/m;

    .line 506
    iget-object v2, p0, Lcom/google/j/h;->r:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 507
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    return-object v0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized h()I
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/h;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/j/h;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/g/a/b/f;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Lcom/google/j/n;

    invoke-direct {v0, p1, p2}, Lcom/google/j/n;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Lcom/google/j/b/m;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 599
    iget-object v1, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-wide v2, p1, Lcom/google/j/b/m;->i:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/j/b/m;->i:J

    :cond_0
    iget-boolean v0, p1, Lcom/google/j/b/m;->h:Z

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/google/j/b/m;->j:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-wide/16 v2, 0x4e20

    iput-wide v2, p1, Lcom/google/j/b/m;->j:J

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/google/j/h;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/j/b/m;->a(I)V

    .line 604
    iget-wide v2, p1, Lcom/google/j/b/m;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/j/b/m;->h:Z

    .line 606
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p0}, Lcom/google/j/h;->d()V

    .line 612
    :goto_0
    monitor-exit v1

    return-void

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-direct {p0}, Lcom/google/j/h;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final c()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 320
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 322
    iget-object v0, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/m;

    iget-wide v8, v0, Lcom/google/j/b/m;->f:J

    cmp-long v8, v8, v6

    if-gtz v8, :cond_0

    iget-object v8, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/j/b/m;->m:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/j/h;->g:Ljava/util/Hashtable;

    iget-object v9, v0, Lcom/google/j/b/m;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v6, v7}, Lcom/google/j/b/m;->a(J)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 324
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/m;

    iget-boolean v8, v0, Lcom/google/j/b/m;->h:Z

    if-eqz v8, :cond_3

    invoke-virtual {v0, v6, v7}, Lcom/google/j/b/m;->a(J)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, v6, v7}, Lcom/google/j/b/m;->c(J)V

    iget-object v8, p0, Lcom/google/j/h;->f:Ljava/util/Hashtable;

    const-string v9, ""

    invoke-virtual {v8, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 329
    :goto_2
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/m;

    invoke-virtual {v0}, Lcom/google/j/b/m;->g()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 331
    :cond_5
    invoke-direct {p0}, Lcom/google/j/h;->f()V

    .line 333
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 334
    monitor-exit v3

    .line 350
    :goto_3
    return-void

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/google/j/b/m;

    .line 338
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/google/j/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 341
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-direct {p0}, Lcom/google/j/h;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    move v3, v2

    move v1, v4

    move-object v0, v5

    .line 344
    :goto_4
    array-length v7, v6

    if-ge v3, v7, :cond_9

    aget-object v7, v6, v3

    iget-boolean v7, v7, Lcom/google/j/b/m;->l:Z

    if-eqz v7, :cond_8

    if-nez v0, :cond_7

    array-length v0, v6

    new-array v0, v0, [Lcom/google/j/b/m;

    :cond_7
    aget-object v7, v6, v3

    aput-object v7, v0, v3

    aput-object v5, v6, v3

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_4

    :cond_8
    aget-object v7, v6, v3

    iget-boolean v7, v7, Lcom/google/j/b/m;->h:Z

    if-eqz v7, :cond_d

    move-object v1, v0

    move v0, v2

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    move v1, v2

    :goto_6
    array-length v3, v6

    if-ge v1, v3, :cond_b

    aget-object v3, v6, v1

    if-eqz v3, :cond_a

    aget-object v3, v6, v1

    aput-object v3, v0, v1

    aput-object v5, v6, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 345
    :cond_b
    if-eqz v0, :cond_c

    .line 346
    invoke-direct {p0, v0, v4}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Z)V

    .line 349
    :cond_c
    invoke-direct {p0, v6, v2}, Lcom/google/j/h;->a([Lcom/google/j/b/m;Z)V

    goto :goto_3

    :cond_d
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_5
.end method

.method protected final d()V
    .locals 8

    .prologue
    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 670
    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    .line 677
    iget-wide v4, p0, Lcom/google/j/h;->k:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 680
    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/j/h;->j:J

    .line 681
    iput-wide v2, p0, Lcom/google/j/h;->k:J

    .line 684
    iget-object v0, p0, Lcom/google/j/h;->l:Lcom/google/g/a/d/d;

    iget-wide v2, p0, Lcom/google/j/h;->k:J

    invoke-virtual {v0, v2, v3}, Lcom/google/g/a/d/d;->b(J)V

    .line 685
    iget-object v0, p0, Lcom/google/j/h;->l:Lcom/google/g/a/d/d;

    invoke-virtual {v0}, Lcom/google/g/a/d/d;->d()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-wide v0, p0, Lcom/google/j/h;->j:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 689
    iput-wide v2, p0, Lcom/google/j/h;->k:J

    goto :goto_0

    .line 690
    :cond_2
    iget-wide v0, p0, Lcom/google/j/h;->k:J

    iget-wide v2, p0, Lcom/google/j/h;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 693
    iget-wide v0, p0, Lcom/google/j/h;->j:J

    iput-wide v0, p0, Lcom/google/j/h;->k:J

    goto :goto_0
.end method
