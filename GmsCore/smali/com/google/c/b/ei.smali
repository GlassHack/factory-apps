.class final Lcom/google/c/b/ei;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/c/a/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/c/b/em;

    invoke-direct {v0}, Lcom/google/c/b/em;-><init>()V

    new-instance v0, Lcom/google/c/b/ej;

    invoke-direct {v0}, Lcom/google/c/b/ej;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/google/c/b/ei;->a:Lcom/google/c/a/dc;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/c/b/ek;

    invoke-direct {v0}, Lcom/google/c/b/ek;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/google/c/b/eh;
    .locals 1

    sget-object v0, Lcom/google/c/b/ei;->a:Lcom/google/c/a/dc;

    invoke-interface {v0}, Lcom/google/c/a/dc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/eh;

    return-object v0
.end method
