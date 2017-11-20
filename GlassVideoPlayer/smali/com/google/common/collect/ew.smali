.class final Lcom/google/common/collect/ew;
.super Lcom/google/common/collect/aa;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ez;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field final c:I

.field d:Lcom/google/common/collect/ew;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Lcom/google/common/collect/ez;

.field f:Lcom/google/common/collect/ez;

.field g:Lcom/google/common/collect/ew;

.field h:Lcom/google/common/collect/ew;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/ew;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/ew;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/common/collect/ew;->a:Ljava/lang/Object;

    .line 173
    iput-object p2, p0, Lcom/google/common/collect/ew;->b:Ljava/lang/Object;

    .line 174
    iput p3, p0, Lcom/google/common/collect/ew;->c:I

    .line 175
    iput-object p4, p0, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    .line 176
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ez;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/collect/ew;->e:Lcom/google/common/collect/ez;

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/ew;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/common/collect/ew;->h:Lcom/google/common/collect/ew;

    .line 214
    return-void
.end method

.method public final a(Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/common/collect/ew;->e:Lcom/google/common/collect/ez;

    .line 198
    return-void
.end method

.method public final b()Lcom/google/common/collect/ez;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/ew;->f:Lcom/google/common/collect/ez;

    return-object v0
.end method

.method public final b(Lcom/google/common/collect/ew;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/common/collect/ew;->g:Lcom/google/common/collect/ew;

    .line 218
    return-void
.end method

.method public final b(Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/common/collect/ew;->f:Lcom/google/common/collect/ez;

    .line 202
    return-void
.end method

.method public final c()Lcom/google/common/collect/ew;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/common/collect/ew;->g:Lcom/google/common/collect/ew;

    return-object v0
.end method

.method public final d()Lcom/google/common/collect/ew;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/collect/ew;->h:Lcom/google/common/collect/ew;

    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/common/collect/ew;->b:Ljava/lang/Object;

    return-object v0
.end method
