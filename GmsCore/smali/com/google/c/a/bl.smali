.class final Lcom/google/c/a/bl;
.super Lcom/google/c/a/bt;


# instance fields
.field private synthetic b:C

.field private synthetic c:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    iput-char p2, p0, Lcom/google/c/a/bl;->b:C

    iput-char p3, p0, Lcom/google/c/a/bl;->c:C

    invoke-direct {p0, p1}, Lcom/google/c/a/bt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/c/a/bl;->b:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/c/a/bl;->c:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
