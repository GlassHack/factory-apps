.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;
.implements Ljava/io/Serializable;


# static fields
.field private static final JOINER:Lcom/google/common/base/z;

.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field transient asMap:Ljava/util/Map;

.field final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1210
    const-string v0, "], "

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    const-string v1, "=["

    invoke-virtual {v0, v1}, Lcom/google/common/base/x;->c(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/z;->a(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/z;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    .line 1080
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1187
    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Lcom/google/common/collect/kf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kf;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1190
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1167
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1195
    if-ne p1, p0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return v0

    .line 1198
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/jt;

    if-eqz v2, :cond_3

    .line 1199
    check-cast p1, Lcom/google/common/collect/jt;

    .line 1200
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->size()I

    move-result v2

    invoke-interface {p1}, Lcom/google/common/collect/jt;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1202
    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1103
    new-instance v0, Lcom/google/common/collect/kd;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/kd;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 1174
    new-instance v0, Lcom/google/common/collect/jz;

    invoke-direct {v0, p0}, Lcom/google/common/collect/jz;-><init>(Lcom/google/common/collect/jt;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 1157
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1158
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1162
    :goto_0
    return-object v0

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$MapMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "{}"

    .line 1220
    :goto_0
    return-object v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/bb;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1219
    sget-object v1, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/z;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1220
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
