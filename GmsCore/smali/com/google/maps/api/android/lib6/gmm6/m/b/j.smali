.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/j;
.super Ljava/lang/Object;


# static fields
.field private static final j:I


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:Z

.field final f:I

.field final g:J

.field final h:Ljava/util/Locale;

.field final i:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->j:I

    return-void
.end method

.method constructor <init>(IIIIZIJLjava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    iput-boolean p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    iput-object p9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    iput-wide p7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a()[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->i:I

    return-void
.end method

.method constructor <init>([B)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t parse header for old schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    const/16 v1, 0x2b

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    add-int/lit8 v0, v0, 0x0

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong header size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    if-eq v1, v0, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checksum mismatch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/google/g/a/b/c/a;

    invoke-direct {v0, p1}, Lcom/google/g/a/b/c/a;-><init>([B)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/c/a;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readUTF()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->i:I

    return-void
.end method

.method private a()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->k:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a([B)I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CatalogVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MaxShardCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordsPerBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AutoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CacheCreationTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
