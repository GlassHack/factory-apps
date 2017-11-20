.class final Lcom/google/c/c/gt;
.super Lcom/google/c/c/eu;


# instance fields
.field private synthetic a:Lcom/google/c/c/gs;


# direct methods
.method private constructor <init>(Lcom/google/c/c/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/gt;->a:Lcom/google/c/c/gs;

    invoke-direct {p0}, Lcom/google/c/c/eu;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/c/gs;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/c/gt;-><init>(Lcom/google/c/c/gs;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/c/c/hi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/gt;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/google/c/c/es;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gt;->a:Lcom/google/c/c/gs;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/gt;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method final w_()Lcom/google/c/c/eo;
    .locals 2

    new-instance v0, Lcom/google/c/c/gn;

    iget-object v1, p0, Lcom/google/c/c/gt;->a:Lcom/google/c/c/gs;

    invoke-static {v1}, Lcom/google/c/c/gs;->a(Lcom/google/c/c/gs;)[Lcom/google/c/c/gu;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/gn;-><init>(Lcom/google/c/c/iw;[Ljava/lang/Object;)V

    return-object v0
.end method
