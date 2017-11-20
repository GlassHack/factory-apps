.class final Lcom/google/c/c/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/a/bz;


# instance fields
.field private synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ig;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ig;->a:Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    :cond_0
    return-object p1
.end method
