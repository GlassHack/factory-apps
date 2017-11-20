.class public final Lcom/google/c/a/cl;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Lcom/google/c/a/ca;->a(Ljava/lang/String;)Lcom/google/c/a/ca;

    return-void
.end method

.method public static a(Lcom/google/c/a/ck;)Lcom/google/c/a/ck;
    .locals 1

    new-instance v0, Lcom/google/c/a/cn;

    invoke-direct {v0, p0}, Lcom/google/c/a/cn;-><init>(Lcom/google/c/a/ck;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/a/ck;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/c/a/co;->a:Lcom/google/c/a/co;

    invoke-virtual {v0}, Lcom/google/c/a/co;->a()Lcom/google/c/a/ck;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/a/cm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/a/cm;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method
