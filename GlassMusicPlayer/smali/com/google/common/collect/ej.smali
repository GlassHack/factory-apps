.class public final Lcom/google/common/collect/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/om;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/common/collect/ek;

    invoke-direct {v0}, Lcom/google/common/collect/ek;-><init>()V

    sput-object v0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/om;

    .line 118
    new-instance v0, Lcom/google/common/collect/eo;

    invoke-direct {v0}, Lcom/google/common/collect/eo;-><init>()V

    sput-object v0, Lcom/google/common/collect/ej;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/common/collect/ej;->c()Lcom/google/common/collect/om;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 1283
    const-string v0, "iterators"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    new-instance v0, Lcom/google/common/collect/es;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/es;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 1106
    new-instance v0, Lcom/google/common/collect/en;

    invoke-direct {v0, p0}, Lcom/google/common/collect/en;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    instance-of v0, p0, Lcom/google/common/collect/ol;

    if-eqz v0, :cond_0

    .line 148
    check-cast p0, Lcom/google/common/collect/ol;

    .line 150
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ep;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ep;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/ol;
    .locals 2

    .prologue
    .line 1062
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v0, Lcom/google/common/collect/el;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/el;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/google/common/collect/om;
    .locals 2

    .prologue
    .line 1080
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 1081
    add-int v0, p1, p2

    .line 1084
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/ai;->a(III)V

    .line 1091
    new-instance v0, Lcom/google/common/collect/em;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/common/collect/em;-><init>(II[Ljava/lang/Object;I)V

    return-object v0

    .line 1080
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/w;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 827
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v0, Lcom/google/common/collect/er;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/er;-><init>(Ljava/util/Iterator;Lcom/google/common/base/w;)V

    return-object v0
.end method

.method static a(Z)V
    .locals 1

    .prologue
    .line 1346
    const-string v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 1347
    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2

    .prologue
    .line 368
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const/4 v0, 0x0

    .line 370
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 373
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/aj;)Z
    .locals 2

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    .line 242
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    if-nez p1, :cond_1

    .line 192
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 204
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 204
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 217
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    .line 219
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    :cond_1
    :goto_0
    return v0

    .line 287
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 289
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 293
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/Iterator;)I
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return v0
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/common/base/aj;)Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 673
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Lcom/google/common/collect/eq;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/eq;-><init>(Ljava/util/Iterator;Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 905
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/common/collect/ej;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 261
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    .line 263
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    return v0
.end method

.method private static c()Lcom/google/common/collect/om;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/om;

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 302
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/y;->a(Ljava/lang/String;)Lcom/google/common/base/y;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/y;->b(Ljava/lang/String;)Lcom/google/common/base/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/y;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;Lcom/google/common/base/aj;)Z
    .locals 1

    .prologue
    .line 711
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 714
    invoke-interface {p1, v0}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x1

    .line 718
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 314
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 315
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    return-object v0

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static e(Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1040
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1045
    :cond_0
    return-void
.end method

.method public static f(Ljava/util/Iterator;)Lcom/google/common/collect/lb;
    .locals 1

    .prologue
    .line 1246
    instance-of v0, p0, Lcom/google/common/collect/eu;

    if-eqz v0, :cond_0

    .line 1250
    check-cast p0, Lcom/google/common/collect/eu;

    .line 1253
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/eu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/eu;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static g(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 0

    .prologue
    .line 1353
    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method
