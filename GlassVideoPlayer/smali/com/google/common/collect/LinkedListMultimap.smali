.class public Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ft;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Ljava/util/List;

.field private transient head:Lcom/google/common/collect/fq;

.field private transient keySet:Ljava/util/Set;

.field private transient keyToKeyList:Ljava/util/Map;

.field private transient keys:Lcom/google/common/collect/kp;

.field private transient map:Ljava/util/Map;

.field private transient modCount:I

.field private transient size:I

.field private transient tail:Lcom/google/common/collect/fq;

.field private transient valuesList:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 188
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 192
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/jt;)V
    .locals 1

    .prologue
    .line 195
    invoke-interface {p1}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fq;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fq;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fq;)Lcom/google/common/collect/fq;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fq;)Lcom/google/common/collect/fq;

    move-result-object v0

    return-object v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fq;)Lcom/google/common/collect/fq;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/fq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    new-instance v1, Lcom/google/common/collect/fq;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/fq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    if-nez v0, :cond_0

    .line 208
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/fl;

    invoke-direct {v2, v1}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/fq;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 246
    :goto_0
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 247
    return-object v1

    .line 211
    :cond_0
    if-nez p3, :cond_2

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    iput-object v0, v1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    .line 214
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    .line 215
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 216
    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/fl;

    invoke-direct {v2, v1}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/fq;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    goto :goto_0

    .line 220
    :cond_1
    iget v2, v0, Lcom/google/common/collect/fl;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/common/collect/fl;->c:I

    .line 221
    iget-object v2, v0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fq;

    .line 222
    iput-object v1, v2, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    .line 223
    iput-object v2, v1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    .line 224
    iput-object v1, v0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fq;

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 228
    iget v2, v0, Lcom/google/common/collect/fl;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/common/collect/fl;->c:I

    .line 229
    iget-object v0, p3, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v0, v1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    .line 230
    iget-object v0, p3, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v0, v1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    .line 231
    iput-object p3, v1, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    .line 232
    iput-object p3, v1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    .line 233
    iget-object v0, p3, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    iput-object v1, v0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fq;

    .line 238
    :goto_1
    iget-object v0, p3, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    if-nez v0, :cond_4

    .line 239
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    .line 243
    :goto_2
    iput-object v1, p3, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    .line 244
    iput-object v1, p3, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p3, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    goto :goto_1

    .line 241
    :cond_4
    iget-object v0, p3, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    goto :goto_2
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/jt;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/jt;)V

    return-object v0
.end method

.method private static createEntry(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lcom/google/common/collect/fe;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fe;-><init>(Lcom/google/common/collect/fq;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 659
    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 1034
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1035
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 1036
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1037
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1040
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1043
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1044
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 291
    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method private removeNode(Lcom/google/common/collect/fq;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iget-object v1, p1, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    .line 261
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p1, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iget-object v1, p1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    .line 266
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 268
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/common/collect/fl;->c:I

    .line 269
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 286
    :goto_2
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 287
    return-void

    .line 259
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    goto :goto_1

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 272
    iget v1, v0, Lcom/google/common/collect/fl;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/fl;->c:I

    .line 274
    iget-object v1, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    if-nez v1, :cond_3

    .line 275
    iget-object v1, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fq;

    .line 280
    :goto_3
    iget-object v1, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    if-nez v1, :cond_4

    .line 281
    iget-object v1, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fq;

    goto :goto_2

    .line 277
    :cond_3
    iget-object v1, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iget-object v2, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    iput-object v2, v1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    goto :goto_3

    .line 283
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    iget-object v1, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v1, v0, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 1024
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1025
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1026
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1027
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1028
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1030
    :cond_0
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 935
    if-nez v0, :cond_0

    .line 936
    new-instance v0, Lcom/google/common/collect/fh;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fh;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 971
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    .line 677
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fq;

    .line 678
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 679
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 680
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 681
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 570
    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 561
    new-instance v1, Lcom/google/common/collect/fr;

    invoke-direct {v1, p0}, Lcom/google/common/collect/fr;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 910
    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/google/common/collect/ff;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ff;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 928
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 985
    if-ne p1, p0, :cond_0

    .line 986
    const/4 v0, 0x1

    .line 992
    :goto_0
    return v0

    .line 988
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/jt;

    if-eqz v0, :cond_1

    .line 989
    check-cast p1, Lcom/google/common/collect/jt;

    .line 990
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 696
    new-instance v0, Lcom/google/common/collect/fa;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fa;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 723
    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/google/common/collect/fb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fb;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 745
    :cond_0
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/kp;
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/kp;

    .line 752
    if-nez v0, :cond_0

    .line 753
    new-instance v0, Lcom/google/common/collect/fm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fa;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/kp;

    .line 755
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fq;)Lcom/google/common/collect/fq;

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 4

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    invoke-interface {p1}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 617
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 618
    goto :goto_0

    .line 619
    :cond_0
    return v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 609
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 610
    goto :goto_0

    .line 611
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 594
    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 595
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 598
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 671
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 672
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 635
    new-instance v1, Lcom/google/common/collect/fs;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 636
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 639
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 645
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 647
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 651
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 655
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 839
    if-nez v0, :cond_0

    .line 840
    new-instance v0, Lcom/google/common/collect/fc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fc;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 863
    :cond_0
    return-object v0
.end method
