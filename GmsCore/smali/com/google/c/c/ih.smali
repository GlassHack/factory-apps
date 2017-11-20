.class final Lcom/google/c/c/ih;
.super Lcom/google/c/c/iv;


# static fields
.field static final a:Lcom/google/c/c/ih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/c/ih;

    invoke-direct {v0}, Lcom/google/c/c/ih;-><init>()V

    sput-object v0, Lcom/google/c/c/ih;->a:Lcom/google/c/c/ih;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iv;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/c/c/fc;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/c/c/fc;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final e()Lcom/google/c/c/fc;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/c/c/iv;
    .locals 0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
