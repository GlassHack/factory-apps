.class public final Lcom/google/googlenav/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Vector;

.field private static b:[B

.field private static c:Z

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    .line 68
    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/googlenav/common/g;->c:Z

    .line 73
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/google/googlenav/common/g;->d:J

    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/googlenav/common/g;->e:J

    .line 81
    invoke-static {}, Lcom/google/googlenav/common/g;->b()V

    .line 82
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    .prologue
    .line 118
    invoke-interface {p0, p1}, Lcom/google/googlenav/common/io/PersistentStore;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-static {p0}, Lcom/google/googlenav/common/g;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    .line 255
    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 260
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 270
    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Bad class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0

    .line 262
    :pswitch_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_2
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 268
    :pswitch_3
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/g;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/common/g;->a(Z)V

    .line 496
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 170
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    .line 197
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    :try_start_0
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 182
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 193
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 195
    const-string v2, "Writing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    :cond_1
    :try_start_1
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 184
    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_2
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 186
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    .line 187
    :cond_3
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 188
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    .line 190
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/google/googlenav/common/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private static a(Z)V
    .locals 2

    .prologue
    .line 500
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/common/g;->b:[B

    .line 504
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_0

    const-string v0, "LowOnMemory"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/google/googlenav/common/g;->d()V

    .line 509
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 510
    sget-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 511
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 514
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 504
    :cond_0
    const-string v0, "OutOfMemory"

    goto :goto_0

    .line 520
    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/g;->b()V

    .line 521
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/google/googlenav/common/g;->c()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/PersistentStore;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 290
    if-nez v1, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/googlenav/common/g;->b:[B

    if-nez v0, :cond_0

    .line 100
    const v0, 0x8000

    :try_start_0
    new-array v0, v0, [B

    sput-object v0, Lcom/google/googlenav/common/g;->b:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()Lcom/google/googlenav/common/io/PersistentStore;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method private static d()V
    .locals 6

    .prologue
    .line 415
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 416
    sget-wide v0, Lcom/google/googlenav/common/g;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/google/googlenav/common/g;->e:J

    sub-long v0, v2, v0

    sget-wide v4, Lcom/google/googlenav/common/g;->d:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 419
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 420
    sget-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 421
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 422
    sget-object v0, Lcom/google/googlenav/common/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 419
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 425
    :cond_2
    sput-wide v2, Lcom/google/googlenav/common/g;->e:J

    .line 427
    :cond_3
    return-void
.end method
