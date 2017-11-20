.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;
.implements Ljava/io/Serializable;


# static fields
.field private static final LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J


# instance fields
.field private transient hashTableKToV:[Lcom/google/common/collect/ct;

.field private transient hashTableVToK:[Lcom/google/common/collect/ct;

.field private transient inverse:Lcom/google/common/collect/az;

.field private transient mask:I

.field private transient modCount:I

.field private transient size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/ct;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/ct;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1

    .prologue
    .line 75
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 77
    return-object v0
.end method

.method private createTable(I)[Lcom/google/common/collect/ct;
    .locals 1

    .prologue
    .line 302
    new-array v0, p1, [Lcom/google/common/collect/ct;

    return-object v0
.end method

.method private delete(Lcom/google/common/collect/ct;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p1, Lcom/google/common/collect/ct;->b:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v3, v0, v2

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    aget-object v0, v0, v3

    move-object v2, v1

    .line 131
    :goto_0
    if-ne v0, p1, :cond_1

    .line 132
    if-nez v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    iget-object v2, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    aput-object v2, v0, v3

    .line 142
    :goto_1
    iget v0, p1, Lcom/google/common/collect/ct;->d:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v2, v0

    .line 144
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    aget-object v0, v0, v2

    .line 145
    :goto_2
    if-ne v0, p1, :cond_3

    .line 146
    if-nez v1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    iget-object v1, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    aput-object v1, v0, v2

    .line 156
    :goto_3
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 157
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 158
    return-void

    .line 135
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iput-object v0, v2, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    goto :goto_1

    .line 130
    :cond_1
    iget-object v2, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v0, v1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    goto :goto_3

    .line 144
    :cond_3
    iget-object v1, v0, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/df;->a(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private init(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expectedSize must be >= 0 but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/df;->a(ID)I

    move-result v0

    .line 116
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/ct;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    .line 117
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/ct;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    .line 118
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 119
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 120
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0
.end method

.method private insert(Lcom/google/common/collect/ct;)V
    .locals 2

    .prologue
    .line 161
    iget v0, p1, Lcom/google/common/collect/ct;->b:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    aput-object p1, v1, v0

    .line 165
    iget v0, p1, Lcom/google/common/collect/ct;->d:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 166
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    .line 167
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    aput-object p1, v1, v0

    .line 169
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 170
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 171
    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 223
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/ct;->d:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    :goto_0
    return-object p2

    .line 231
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v3

    .line 232
    if-eqz v3, :cond_1

    .line 233
    if-eqz p3, :cond_3

    .line 234
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    .line 240
    :cond_1
    if-eqz v2, :cond_2

    .line 241
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    .line 243
    :cond_2
    new-instance v3, Lcom/google/common/collect/ct;

    invoke-direct {v3, p1, v0, p2, v1}, Lcom/google/common/collect/ct;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 244
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/ct;)V

    .line 245
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 246
    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    move-object p2, v0

    goto :goto_0

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value already present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_4
    iget-object v0, v2, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    goto :goto_1
.end method

.method private putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 252
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/ct;->b:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    :goto_0
    return-object p2

    .line 260
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_1

    .line 262
    if-eqz p3, :cond_3

    .line 263
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    .line 269
    :cond_1
    if-eqz v2, :cond_2

    .line 270
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    .line 272
    :cond_2
    new-instance v3, Lcom/google/common/collect/ct;

    invoke-direct {v3, p2, v1, p1, v0}, Lcom/google/common/collect/ct;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 273
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/ct;)V

    .line 274
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 275
    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    move-object p2, v0

    goto :goto_0

    .line 265
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value already present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    iget-object v0, v2, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 663
    invoke-static {p1}, Lcom/google/common/collect/lt;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 664
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 665
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 666
    return-void
.end method

.method private rehashIfNecessary()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    .line 280
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    array-length v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lcom/google/common/collect/df;->a(IID)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 283
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    .line 284
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    .line 285
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 286
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 288
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 289
    aget-object v1, v3, v0

    .line 290
    :goto_1
    if-eqz v1, :cond_0

    .line 291
    iget-object v2, v1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    .line 292
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/ct;)V

    move-object v1, v2

    .line 294
    goto :goto_1

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 298
    :cond_2
    return-void
.end method

.method private seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget v1, v0, Lcom/google/common/collect/ct;->b:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_1
    return-object v0

    .line 178
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/ct;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 188
    iget v1, v0, Lcom/google/common/collect/ct;->d:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_1
    return-object v0

    .line 187
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 656
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 657
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 658
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 319
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 322
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Lcom/google/common/collect/cu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/cu;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final inverse()Lcom/google/common/collect/az;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/az;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/az;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/az;

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/google/common/collect/dd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/dd;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/ct;)V

    .line 312
    iget-object v0, v0, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/az;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
