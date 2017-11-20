.class final Lcom/google/android/maps/driveabout/store/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Z

.field final g:I

.field final h:Ljava/util/Locale;

.field final i:I

.field final j:I


# direct methods
.method constructor <init>(IIIIZILjava/util/Locale;)V
    .locals 3

    .prologue
    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput p1, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    .line 1782
    iput p2, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    .line 1783
    iput p3, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    .line 1784
    iput p4, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    .line 1785
    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    .line 1786
    iput p6, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    .line 1787
    iput-object p7, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    .line 1790
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ab;->a()[B

    move-result-object v0

    .line 1791
    array-length v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    .line 1792
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 1793
    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    .line 1796
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    .line 1797
    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->j:I

    .line 1798
    return-void
.end method

.method constructor <init>([BI)V
    .locals 5

    .prologue
    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    .line 1802
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1804
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t parse header for old schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1806
    :cond_0
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    .line 1807
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 1808
    :cond_1
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Wrong header size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1810
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    .line 1811
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    .line 1812
    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    if-eq v1, v0, :cond_3

    .line 1813
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Checksum mismatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 1818
    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    .line 1819
    add-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    .line 1821
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    .line 1822
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    .line 1823
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    .line 1824
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    .line 1825
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    .line 1829
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1830
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1831
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1832
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    .line 1835
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    .line 1836
    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->j:I

    .line 1837
    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 1856
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1857
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1858
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1859
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1860
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1861
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 1862
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1863
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 1866
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1867
    return-void
.end method

.method private a()[B
    .locals 2

    .prologue
    .line 1849
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1850
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1851
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/ab;->a(Ljava/io/DataOutput;)V

    .line 1852
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a([BI)I
    .locals 3

    .prologue
    .line 1843
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ab;->a()[B

    move-result-object v0

    .line 1844
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1845
    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1871
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget v3, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    iget v5, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    iget v6, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xa6

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "CatalogVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " BlockSize:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MaxShardCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordsPerBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AutoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
