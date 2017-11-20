.class final Lcom/google/common/base/Present;
.super Lcom/google/common/base/Optional;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final reference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/base/Optional;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public final asSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    instance-of v0, p1, Lcom/google/common/base/Present;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/google/common/base/Present;

    .line 87
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 94
    const v0, 0x598df91c

    iget-object v1, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPresent()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public final or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .locals 0

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method public final or(Lcom/google/common/base/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final orNull()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Optional.of("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/google/common/base/v;)Lcom/google/common/base/Optional;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/google/common/base/Present;

    iget-object v1, p0, Lcom/google/common/base/Present;->reference:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "the Function passed to Optional.transform() must not return null."

    invoke-static {v1, v2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
