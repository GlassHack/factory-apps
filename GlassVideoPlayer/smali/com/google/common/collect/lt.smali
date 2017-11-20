.class final Lcom/google/common/collect/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/io/ObjectInputStream;)I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/google/common/collect/lv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/lv;-><init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/lu;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static a(Lcom/google/common/collect/jt;Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 169
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectInputStream;I)V

    .line 170
    return-void
.end method

.method static a(Lcom/google/common/collect/jt;Ljava/io/ObjectInputStream;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 183
    invoke-interface {p0, v0}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    move v0, v1

    .line 185
    :goto_1
    if-ge v0, v4, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 189
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method static a(Lcom/google/common/collect/jt;Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 152
    invoke-interface {p0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 153
    invoke-interface {p0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 121
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;I)V

    .line 122
    return-void
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;I)V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 136
    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 106
    invoke-interface {p0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 108
    invoke-interface {p0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 109
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 110
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 77
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 93
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 62
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 63
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
