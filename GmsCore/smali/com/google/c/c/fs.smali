.class final Lcom/google/c/c/fs;
.super Lcom/google/c/c/hi;


# instance fields
.field private a:Z

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/fs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/c/c/hi;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/c/fs;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/c/fs;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/fs;->a:Z

    iget-object v0, p0, Lcom/google/c/c/fs;->b:Ljava/lang/Object;

    return-object v0
.end method
