.class public final Lcom/google/c/c/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/c/ek;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/c/c/bw;

    invoke-direct {v0}, Lcom/google/c/c/bw;-><init>()V

    sput-object v0, Lcom/google/c/c/bv;->a:Lcom/google/c/c/ek;

    .line 87
    new-instance v0, Lcom/google/c/c/bz;

    invoke-direct {v0}, Lcom/google/c/c/bz;-><init>()V

    sput-object v0, Lcom/google/c/c/bv;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/util/Iterator;)I
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return v0
.end method

.method public static a()Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/c/c/bv;->a:Lcom/google/c/c/ek;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 1087
    new-instance v0, Lcom/google/c/c/by;

    invoke-direct {v0, p0}, Lcom/google/c/c/by;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/c/a/ai;)Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Lcom/google/c/c/ca;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/ca;-><init>(Ljava/util/Iterator;Lcom/google/c/a/ai;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/c/c/ek;
    .locals 2

    .prologue
    .line 1037
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v0, Lcom/google/c/c/bx;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Lcom/google/c/c/bx;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/c/a/y;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 802
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v0, Lcom/google/c/c/cb;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/cb;-><init>(Ljava/util/Iterator;Lcom/google/c/a/y;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2

    .prologue
    .line 353
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v0, 0x0

    .line 355
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 358
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 163
    if-nez p1, :cond_1

    .line 164
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 190
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    .line 192
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    return v0
.end method

.method public static b(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, "[]"

    .line 286
    :goto_0
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/c/c/bv;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 236
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    .line 238
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 297
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    return-object v0

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected one element but was: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1015
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1018
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1020
    :cond_0
    return-void
.end method

.method public static e(Ljava/util/Iterator;)Lcom/google/c/c/da;
    .locals 1

    .prologue
    .line 1233
    instance-of v0, p0, Lcom/google/c/c/cc;

    if-eqz v0, :cond_0

    .line 1237
    check-cast p0, Lcom/google/c/c/cc;

    .line 1240
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/c/c/cc;

    invoke-direct {v0, p0}, Lcom/google/c/c/cc;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method
