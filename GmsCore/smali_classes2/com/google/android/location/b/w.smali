.class public final Lcom/google/android/location/b/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/location/f/y;

.field public static final h:Lcom/google/android/location/f/aj;

.field public static final i:Lcom/google/android/location/f/aj;


# instance fields
.field public b:Lcom/google/android/location/f/y;

.field public final c:Lcom/google/android/location/f/ag;

.field public final d:Lcom/google/android/location/b/am;

.field public final e:Lcom/google/android/location/b/am;

.field final f:Lcom/google/android/location/k/b;

.field final g:Lcom/google/android/location/k/d;

.field private j:J

.field private k:Z

.field private final l:Lcom/google/android/location/b/u;

.field private m:Lcom/google/android/location/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/location/f/y;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/location/f/y;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V

    sput-object v0, Lcom/google/android/location/b/w;->a:Lcom/google/android/location/f/y;

    .line 502
    new-instance v0, Lcom/google/android/location/b/x;

    invoke-direct {v0}, Lcom/google/android/location/b/x;-><init>()V

    sput-object v0, Lcom/google/android/location/b/w;->h:Lcom/google/android/location/f/aj;

    .line 516
    new-instance v0, Lcom/google/android/location/b/y;

    invoke-direct {v0}, Lcom/google/android/location/b/y;-><init>()V

    sput-object v0, Lcom/google/android/location/b/w;->i:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/k/d;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/b/u;)V
    .locals 4

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/google/android/location/b/w;->a:Lcom/google/android/location/f/y;

    iput-object v0, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    .line 133
    iput-object p1, p0, Lcom/google/android/location/b/w;->g:Lcom/google/android/location/k/d;

    .line 134
    iput-object p2, p0, Lcom/google/android/location/b/w;->f:Lcom/google/android/location/k/b;

    .line 135
    iput-object p3, p0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    .line 136
    iput-object p4, p0, Lcom/google/android/location/b/w;->l:Lcom/google/android/location/b/u;

    .line 137
    new-instance v0, Lcom/google/android/location/b/am;

    const/16 v1, 0x32

    sget-object v2, Lcom/google/android/location/f/ap;->a:Lcom/google/android/location/f/aj;

    sget-object v3, Lcom/google/android/location/b/w;->h:Lcom/google/android/location/f/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V

    iput-object v0, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    .line 139
    new-instance v0, Lcom/google/android/location/b/am;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/google/android/location/f/ap;->b:Lcom/google/android/location/f/aj;

    sget-object v3, Lcom/google/android/location/b/w;->i:Lcom/google/android/location/f/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V

    iput-object v0, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    .line 141
    invoke-interface {p2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/b/w;->b(J)V

    .line 142
    return-void
.end method

.method private static a(JJJJ)J
    .locals 2

    .prologue
    .line 267
    add-long v0, p2, p0

    sub-long/2addr v0, p4

    invoke-static {p6, p7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(J)V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 293
    sget-object v0, Lcom/google/android/location/b/w;->a:Lcom/google/android/location/f/y;

    iput-object v0, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    .line 296
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    mul-double/2addr v0, v4

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 297
    sub-long v0, p1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/location/b/w;->a(JZ)V

    .line 298
    iget-object v0, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->clear()V

    .line 299
    iget-object v0, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->clear()V

    .line 300
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 469
    iget-wide v0, p0, Lcom/google/android/location/b/w;->j:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 7

    .prologue
    .line 150
    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    .line 151
    iget-object v2, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    iget-object v3, p0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v3}, Lcom/google/android/location/f/ag;->v()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/google/android/location/b/am;->a(JJ)V

    .line 153
    iget-object v2, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    iget-object v3, p0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v3}, Lcom/google/android/location/f/ag;->u()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/google/android/location/b/am;->a(JJ)V

    .line 155
    iget-object v0, p0, Lcom/google/android/location/b/w;->l:Lcom/google/android/location/b/u;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/b/u;->c(J)V

    .line 156
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 486
    iput-wide p1, p0, Lcom/google/android/location/b/w;->j:J

    .line 487
    iput-boolean p3, p0, Lcom/google/android/location/b/w;->k:Z

    .line 488
    return-void
.end method

.method public final a(Lcom/google/android/location/k/e;)V
    .locals 6

    .prologue
    .line 308
    invoke-interface {p1}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v0

    .line 309
    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "nlp_state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/w;->l:Lcom/google/android/location/b/u;

    iget-object v2, p0, Lcom/google/android/location/b/w;->f:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/location/b/u;->a(J)V

    .line 315
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 316
    invoke-interface {p1, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 317
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/location/b/w;->g:Lcom/google/android/location/k/d;

    invoke-interface {v0}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/b/w;->f:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v2, p0, Lcom/google/android/location/b/w;->j:J

    invoke-virtual {v5, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v2, p0, Lcom/google/android/location/b/w;->k:Z

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    sget-object v3, Lcom/google/android/location/b/w;->a:Lcom/google/android/location/f/y;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget-object v2, Lcom/google/android/location/f/y;->f:Lcom/google/android/location/f/aj;

    iget-object v3, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    invoke-interface {v2, v3, v5}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    iget-object v3, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/location/b/am;->a(Lcom/google/android/location/b/am;Ljava/io/DataOutput;)V

    iget-object v2, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    iget-object v3, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/location/b/am;->a(Lcom/google/android/location/b/am;Ljava/io/DataOutput;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v2, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "PersistentState"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 318
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 321
    :catch_1
    move-exception v0

    .line 322
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "PersistentState"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 323
    :catch_2
    move-exception v0

    .line 324
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "PersistentState"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/location/k/e;Lcom/google/android/location/k/b;)V
    .locals 14

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    .line 169
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    .line 170
    iget-object v1, p0, Lcom/google/android/location/b/w;->l:Lcom/google/android/location/b/u;

    invoke-interface {v1, v6, v7}, Lcom/google/android/location/b/u;->b(J)V

    .line 172
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/location/b/w;->g:Lcom/google/android/location/k/d;

    invoke-interface {v0}, Lcom/google/android/location/k/d;->b()Ljavax/crypto/SecretKey;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/location/b/w;->g:Lcom/google/android/location/k/d;

    invoke-interface {v0}, Lcom/google/android/location/k/d;->c()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    sget-boolean v8, Lcom/google/android/location/j/a;->b:Z

    if-eqz v8, :cond_0

    const-string v8, "PersistentState"

    const-string v10, "Persistent state version: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0xb

    if-eq v3, v8, :cond_1

    const/16 v8, 0xa

    if-ne v3, v8, :cond_a

    :cond_1
    const/16 v8, 0xa

    if-ne v3, v8, :cond_6

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "PersistentState"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Reading compatible, non signed version: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lcom/google/android/location/f/j;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0

    :goto_0
    invoke-interface {v8}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {v8}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/b/w;->a(JJJJ)J

    move-result-wide v2

    invoke-interface {v8}, Ljava/io/DataInput;->readBoolean()Z

    move-result v10

    invoke-virtual {p0, v2, v3, v10}, Lcom/google/android/location/b/w;->a(JZ)V

    invoke-interface {v8}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/location/f/y;->f:Lcom/google/android/location/f/aj;

    invoke-interface {v2, v8}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/y;

    iput-object v2, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    iget-object v2, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    iget-wide v2, v2, Lcom/google/android/location/f/y;->e:J

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/b/w;->a(JJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/location/f/y;

    iget-object v3, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    iget-object v3, v3, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    iget-object v10, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    iget-object v10, v10, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-direct {v2, v3, v10, v0, v1}, Lcom/google/android/location/f/y;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V

    iput-object v2, p0, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    invoke-virtual {v0, v8}, Lcom/google/android/location/b/am;->b(Ljava/io/DataInput;)Lcom/google/android/location/b/am;

    iget-object v0, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-virtual {v0, v8}, Lcom/google/android/location/b/am;->b(Ljava/io/DataInput;)Lcom/google/android/location/b/am;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "PersistentState"

    const-string v1, "Loaded %d cell, %d wifi. Last refresh time: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    iget-object v8, v8, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v8}, Lcom/google/android/location/b/an;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    iget-object v8, v8, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v8}, Lcom/google/android/location/b/an;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x2

    new-instance v8, Ljava/util/Date;

    iget-wide v10, p0, Lcom/google/android/location/b/w;->j:J

    add-long/2addr v10, v4

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 189
    :cond_5
    :goto_2
    return-void

    .line 174
    :cond_6
    const/16 v1, 0xb

    if-ne v3, v1, :cond_8

    :try_start_3
    iget-object v1, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/b/w;->m:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v2}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incompatible version."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, v6, v7}, Lcom/google/android/location/b/w;->b(J)V

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    :catch_1
    move-exception v0

    invoke-direct {p0, v6, v7}, Lcom/google/android/location/b/w;->b(J)V

    .line 179
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "PersistentState"

    const-string v1, "Clearing persistent state, last refresh: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/google/android/location/b/w;->j:J

    add-long/2addr v4, v8

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_9
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_5

    const-string v0, "PersistentState"

    const-string v1, "No existing nlp persistent state."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_a
    :try_start_5
    invoke-direct {p0, v6, v7}, Lcom/google/android/location/b/w;->b(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 182
    :catch_2
    move-exception v0

    .line 183
    invoke-direct {p0, v6, v7}, Lcom/google/android/location/b/w;->b(J)V

    .line 184
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_5

    const-string v1, "PersistentState"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 185
    :catch_3
    move-exception v0

    .line 186
    invoke-direct {p0, v6, v7}, Lcom/google/android/location/b/w;->b(J)V

    .line 187
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_5

    const-string v1, "PersistentState"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public final a(Lcom/google/g/a/b/b/a;ZJ)V
    .locals 21

    .prologue
    .line 377
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/p/h;->b(Lcom/google/g/a/b/b/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    return-void

    .line 380
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v2}, Lcom/google/android/location/f/ag;->d()I

    move-result v6

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v2}, Lcom/google/android/location/f/ag;->e()I

    move-result v18

    .line 382
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v19

    .line 384
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 385
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v20

    .line 386
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_1
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 387
    const/4 v2, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v15

    .line 388
    const/4 v5, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    const/4 v3, -0x1

    .line 391
    const/4 v2, -0x1

    .line 392
    const/4 v7, -0x1

    .line 393
    const v12, 0x9c40

    .line 394
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 395
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v8

    .line 396
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    .line 399
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    .line 400
    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    mul-int/lit16 v3, v2, 0x3e8

    .line 401
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    .line 403
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 404
    const/16 v7, 0x8

    invoke-virtual {v8, v7}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v7

    .line 406
    :cond_3
    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 407
    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v8

    mul-int/lit16 v12, v8, 0x3e8

    move v11, v2

    move v10, v3

    move v13, v4

    move v14, v5

    .line 412
    :goto_2
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    if-eq v7, v2, :cond_4

    .line 414
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 415
    invoke-static {v2}, Lcom/google/android/location/f/g;->b(Lcom/google/g/a/b/b/a;)Ljava/lang/String;

    move-result-object v5

    .line 416
    new-instance v7, Lcom/google/android/location/f/ak;

    invoke-direct {v7, v14, v13, v10, v11}, Lcom/google/android/location/f/ak;-><init>(IIII)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    move/from16 v4, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    .line 422
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 424
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 427
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    move-wide v4, v2

    .line 435
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;)Lcom/google/android/location/b/a;

    move-result-object v7

    .line 441
    if-nez v7, :cond_9

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    move v3, v2

    .line 451
    :goto_4
    if-eqz v7, :cond_a

    if-eqz p2, :cond_5

    iget-object v2, v7, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/f/ay;

    invoke-virtual {v2}, Lcom/google/android/location/f/ay;->f()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_5
    const/4 v2, 0x1

    .line 454
    :goto_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    .line 455
    :cond_6
    new-instance v7, Lcom/google/android/location/f/ay;

    move v8, v14

    move v9, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/android/location/f/ay;-><init>(IIIII)V

    .line 457
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move/from16 v12, v18

    move-object v13, v7

    move-wide/from16 v14, p3

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    .line 386
    :cond_7
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_1

    .line 429
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/f/bi;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_3

    .line 441
    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_4

    .line 451
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 384
    :cond_b
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_0

    :cond_c
    move v11, v2

    move v10, v3

    move v13, v4

    move v14, v5

    goto/16 :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/google/android/location/b/w;->k:Z

    return v0
.end method

.method public final c()Lcom/google/android/location/b/am;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    return-object v0
.end method

.method public final d()Lcom/google/android/location/b/am;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    return-object v0
.end method

.method public final e()Lcom/google/android/location/b/u;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/location/b/w;->l:Lcom/google/android/location/b/u;

    return-object v0
.end method
