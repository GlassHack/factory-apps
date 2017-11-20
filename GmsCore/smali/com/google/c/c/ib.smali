.class final Lcom/google/c/c/ib;
.super Lcom/google/c/c/gh;


# instance fields
.field private synthetic a:Lcom/google/c/c/ia;


# direct methods
.method constructor <init>(Lcom/google/c/c/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ib;->a:Lcom/google/c/c/ia;

    invoke-direct {p0}, Lcom/google/c/c/gh;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ib;->a:Lcom/google/c/c/ia;

    invoke-virtual {v0}, Lcom/google/c/c/ia;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
