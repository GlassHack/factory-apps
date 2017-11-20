.class public abstract Lcom/google/c/c/in;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/lang/Iterable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/c/c/in;->a:Ljava/lang/Iterable;

    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/google/c/c/in;->a:Ljava/lang/Iterable;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/c/c/in;
    .locals 1

    instance-of v0, p0, Lcom/google/c/c/in;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/c/c/in;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/c/c/io;

    invoke-direct {v0, p0, p0}, Lcom/google/c/c/io;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/in;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fp;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
