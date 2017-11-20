.class final Lcom/google/c/c/gn;
.super Lcom/google/c/c/iu;


# instance fields
.field private final a:Lcom/google/c/c/iw;

.field private final b:Lcom/google/c/c/eo;


# direct methods
.method private constructor <init>(Lcom/google/c/c/iw;Lcom/google/c/c/eo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iu;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/gn;->a:Lcom/google/c/c/iw;

    iput-object p2, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    return-void
.end method

.method constructor <init>(Lcom/google/c/c/iw;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p2}, Lcom/google/c/c/eo;->b([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/c/c/gn;-><init>(Lcom/google/c/c/iw;Lcom/google/c/c/eo;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/c/c/hj;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final g()Lcom/google/c/c/iw;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->a:Lcom/google/c/c/iw;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0}, Lcom/google/c/c/eo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/gn;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0}, Lcom/google/c/c/eo;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gn;->b:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
