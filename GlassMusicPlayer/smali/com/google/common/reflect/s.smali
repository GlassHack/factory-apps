.class Lcom/google/common/reflect/s;
.super Lcom/google/common/reflect/n;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/common/reflect/n;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/n;)V
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/n;-><init>(Lcom/google/common/reflect/k;)V

    .line 1178
    iput-object p1, p0, Lcom/google/common/reflect/s;->c:Lcom/google/common/reflect/n;

    .line 1179
    return-void
.end method


# virtual methods
.method final b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/common/reflect/s;->c:Lcom/google/common/reflect/n;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/common/reflect/s;->c:Lcom/google/common/reflect/n;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->c(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/common/reflect/s;->c:Lcom/google/common/reflect/n;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
