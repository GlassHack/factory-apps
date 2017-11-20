.class final Lcom/google/c/c/ep;
.super Lcom/google/c/c/em;


# instance fields
.field private synthetic a:Lcom/google/c/c/eo;


# direct methods
.method constructor <init>(Lcom/google/c/c/eo;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ep;->a:Lcom/google/c/c/eo;

    invoke-direct {p0, p2, p3}, Lcom/google/c/c/em;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ep;->a:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
