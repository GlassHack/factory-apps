.class final Lcom/google/c/c/aq;
.super Lcom/google/c/c/bl;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/c/aq;

.field private static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/c/c/aq;

    invoke-direct {v0}, Lcom/google/c/c/aq;-><init>()V

    sput-object v0, Lcom/google/c/c/aq;->a:Lcom/google/c/c/aq;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/c/c/aq;->c:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/c/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Ljava/util/Set;

    .line 78
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/c/c/aq;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    array-length v0, p1

    if-lez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 68
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "[]"

    return-object v0
.end method
